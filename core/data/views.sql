-- SQL Views for CFI CTAP Project
-- Execute against CSV files via DuckDB MCP server
-- These views support /cfi-budget-align, /cfi-align, and /cfi-compliance commands

-- =============================================================================
-- BASE COMPUTED VIEW (use this instead of raw equipment table)
-- =============================================================================

-- v_equipment: Base equipment view with computed total_cost
-- IMPORTANT: Always use this view instead of the raw equipment table.
-- The total_cost column is computed from quantity * unit_cost to ensure accuracy.
-- This prevents stale totals when quantity or unit_cost are edited in the CSV.
--
-- Usage: Replace "FROM equipment" with "FROM v_equipment" in all queries
-- Or use inline: (SELECT *, quantity * unit_cost AS computed_total FROM equipment)
--
-- DuckDB doesn't support CREATE VIEW in CSV mode, so use this as a CTE:
-- WITH v_equipment AS (
--     SELECT *, (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) AS computed_total
--     FROM equipment
-- )
-- SELECT ... FROM v_equipment ...

-- =============================================================================
-- FUNDING SUMMARY
-- =============================================================================

-- v_funding_summary: Suite budget totals for includes/funding_summary.md
-- Used by: /cfi-sync-update funding_summary
-- Note: Uses computed total (quantity * unit_cost) instead of stored total_cost
SELECT
    suite_number,
    suite_name,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as cfi_request
FROM equipment
WHERE status = 'confirmed'
GROUP BY suite_number, suite_name
ORDER BY suite_number;

-- v_funding_by_category: Budget breakdown by item category
SELECT
    item_category,
    COUNT(*) as items,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as total
FROM equipment
WHERE status = 'confirmed'
GROUP BY item_category
ORDER BY total DESC;

-- v_funding_total: Grand total for confirmed equipment
SELECT
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as total_cfi_request,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) * 0.4 as cfi_contribution,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) * 0.6 as institutional_match
FROM equipment
WHERE status = 'confirmed';

-- =============================================================================
-- ALIGNMENT CHECKS (for /cfi-align and /cfi-budget-align)
-- =============================================================================

-- v_orphaned_equipment: Equipment not linked to any objective
-- ISSUE: Budget items without narrative justification
SELECT
    e.id,
    e.suite_number,
    e.suite_name,
    e.item_name,
    (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as total_cost,
    e.justification
FROM equipment e
LEFT JOIN equipment_objectives eo ON e.id = eo.equipment_id
WHERE eo.objective_id IS NULL
  AND e.status = 'confirmed'
ORDER BY e.suite_number, e.item_name;

-- v_objectives_without_equipment: Objectives with no supporting equipment
-- ISSUE: Narrative claims without budget support
SELECT
    o.id,
    o.objective_number,
    o.title,
    o.description
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
WHERE eo.equipment_id IS NULL
ORDER BY o.objective_number;

-- v_objective_coverage: Equipment and participant count per objective
SELECT
    o.objective_number,
    o.title,
    COUNT(DISTINCT eo.equipment_id) as equipment_count,
    COUNT(DISTINCT po.participant_id) as participant_count
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
LEFT JOIN participant_objectives po ON o.id = po.objective_id
GROUP BY o.id, o.objective_number, o.title
ORDER BY o.objective_number;

-- v_alignment_gaps: Combined gap analysis
SELECT
    o.objective_number,
    o.title,
    CASE WHEN COUNT(DISTINCT eo.equipment_id) = 0 THEN 'MISSING' ELSE 'OK' END as equipment_status,
    COUNT(DISTINCT eo.equipment_id) as equipment_count,
    CASE WHEN COUNT(DISTINCT po.participant_id) = 0 THEN 'MISSING' ELSE 'OK' END as participant_status,
    COUNT(DISTINCT po.participant_id) as participant_count
FROM objectives o
LEFT JOIN equipment_objectives eo ON o.id = eo.objective_id
LEFT JOIN participant_objectives po ON o.id = po.objective_id
GROUP BY o.id, o.objective_number, o.title
HAVING COUNT(DISTINCT eo.equipment_id) = 0 OR COUNT(DISTINCT po.participant_id) = 0
ORDER BY o.objective_number;

-- =============================================================================
-- RENOVATION ANALYSIS
-- =============================================================================

-- v_renovation_costs: Renovation costs by suite
SELECT
    suite_number,
    suite_name,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as renovation_total
FROM equipment
WHERE item_category = 'renovation'
  AND status = 'confirmed'
GROUP BY suite_number, suite_name
ORDER BY suite_number;

-- v_renovation_items: Detailed renovation list
SELECT
    suite_number,
    suite_name,
    item_name,
    description,
    (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as total_cost,
    space_id
FROM equipment
WHERE item_category = 'renovation'
  AND status = 'confirmed'
ORDER BY suite_number, total_cost DESC;

-- =============================================================================
-- O&M ANALYSIS
-- =============================================================================

-- v_om_by_year: O&M costs by year and suite
SELECT
    suite,
    year,
    SUM(amount) as total_om
FROM budget_items
WHERE category = 'om'
GROUP BY suite, year
ORDER BY suite, year;

-- v_om_projection: 5-year O&M projection by suite
SELECT
    suite,
    SUM(CASE WHEN year = 1 THEN amount ELSE 0 END) as year_1,
    SUM(CASE WHEN year = 2 THEN amount ELSE 0 END) as year_2,
    SUM(CASE WHEN year = 3 THEN amount ELSE 0 END) as year_3,
    SUM(CASE WHEN year = 4 THEN amount ELSE 0 END) as year_4,
    SUM(CASE WHEN year = 5 THEN amount ELSE 0 END) as year_5,
    SUM(amount) as total_om
FROM budget_items
WHERE category = 'om'
GROUP BY suite
ORDER BY suite;

-- =============================================================================
-- TEAM ANALYSIS
-- =============================================================================

-- v_team_roles: Participant counts by role
SELECT
    role,
    COUNT(*) as count
FROM participants
WHERE status = 'confirmed'
GROUP BY role
ORDER BY count DESC;

-- v_los_status: Letter of Support tracking
SELECT
    letter_of_support_status as status,
    COUNT(*) as count,
    GROUP_CONCAT(name, ', ') as names
FROM participants
WHERE status = 'confirmed'
  AND role IN ('PI', 'Co-PI', 'Co-I')
GROUP BY letter_of_support_status
ORDER BY
    CASE letter_of_support_status
        WHEN 'received' THEN 1
        WHEN 'requested' THEN 2
        WHEN 'pending' THEN 3
        WHEN 'not_required' THEN 4
        ELSE 5
    END;

-- v_team_by_objective: Team members per objective
SELECT
    o.objective_number,
    o.title,
    p.role,
    p.name,
    po.contribution_description
FROM objectives o
JOIN participant_objectives po ON o.id = po.objective_id
JOIN participants p ON po.participant_id = p.id
WHERE p.status = 'confirmed'
ORDER BY o.objective_number,
    CASE p.role WHEN 'PI' THEN 1 WHEN 'Co-PI' THEN 2 WHEN 'Co-I' THEN 3 ELSE 4 END;

-- =============================================================================
-- SPACE ANALYSIS
-- =============================================================================

-- v_space_equipment: Equipment per space
SELECT
    s.space_name,
    s.building,
    s.room_numbers,
    COUNT(e.id) as equipment_count,
    SUM(COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as equipment_value
FROM spaces s
LEFT JOIN equipment e ON s.space_id = e.space_id AND e.status = 'confirmed'
GROUP BY s.space_id, s.space_name, s.building, s.room_numbers
ORDER BY equipment_value DESC;

-- v_space_status: Space renovation status
SELECT
    space_name,
    building,
    status,
    area_sqft,
    responsible_pi
FROM spaces
ORDER BY
    CASE status
        WHEN 'new_required' THEN 1
        WHEN 'renovation' THEN 2
        WHEN 'existing' THEN 3
    END;

-- =============================================================================
-- QUOTE STATUS
-- =============================================================================

-- v_quote_status: Quote tracking for major items
SELECT
    quote_status,
    COUNT(*) as items,
    SUM(COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as total_value
FROM equipment
WHERE status = 'confirmed'
  AND (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) > 50000
GROUP BY quote_status
ORDER BY
    CASE quote_status
        WHEN 'received' THEN 1
        WHEN 'requested' THEN 2
        WHEN 'needed' THEN 3
        WHEN 'not_required' THEN 4
    END;

-- v_quotes_needed: Major items needing quotes
SELECT
    suite_number,
    item_name,
    vendor,
    (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) as total_cost,
    quote_status
FROM equipment
WHERE status = 'confirmed'
  AND (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) > 50000
  AND quote_status IN ('needed', 'requested')
ORDER BY total_cost DESC;

-- =============================================================================
-- FLAGSHIP PROGRAM ANALYSIS
-- =============================================================================

-- v_flagship_objectives: Objectives by flagship program
SELECT
    flagship_program,
    COUNT(*) as objective_count,
    GROUP_CONCAT(objective_number, ', ') as objectives
FROM objectives
GROUP BY flagship_program
ORDER BY objective_count DESC;

-- v_flagship_equipment: Equipment supporting each flagship (via objectives)
SELECT
    o.flagship_program,
    COUNT(DISTINCT eo.equipment_id) as equipment_count,
    SUM(COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as equipment_value
FROM objectives o
JOIN equipment_objectives eo ON o.id = eo.objective_id
JOIN equipment e ON eo.equipment_id = e.id
WHERE e.status = 'confirmed'
GROUP BY o.flagship_program
ORDER BY equipment_value DESC;

-- =============================================================================
-- COMPLIANCE CHECKS (for /cfi-compliance)
-- =============================================================================

-- v_compliance_equipment: Check for required equipment fields
SELECT
    id,
    item_name,
    CASE WHEN justification IS NULL OR justification = '' THEN 'MISSING' ELSE 'OK' END as justification_status,
    CASE WHEN space_id IS NULL THEN 'MISSING' ELSE 'OK' END as space_status,
    CASE WHEN (COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) > 50000 AND (quote_status IS NULL OR quote_status = 'needed') THEN 'NEEDED' ELSE 'OK' END as quote_check
FROM equipment
WHERE status = 'confirmed'
  AND (
    (justification IS NULL OR justification = '')
    OR space_id IS NULL
    OR ((COALESCE(quantity, 1) * COALESCE(unit_cost, 0)) > 50000 AND (quote_status IS NULL OR quote_status = 'needed'))
  )
ORDER BY suite_number, item_name;

-- v_compliance_participants: Check for required participant fields
SELECT
    id,
    name,
    role,
    CASE WHEN expertise_areas IS NULL OR expertise_areas = '' THEN 'MISSING' ELSE 'OK' END as expertise_status,
    CASE WHEN role IN ('PI', 'Co-PI', 'Co-I') AND letter_of_support_status = 'pending' THEN 'NEEDED' ELSE 'OK' END as los_status
FROM participants
WHERE status = 'confirmed'
  AND (
    (expertise_areas IS NULL OR expertise_areas = '')
    OR (role IN ('PI', 'Co-PI', 'Co-I') AND letter_of_support_status = 'pending')
  )
ORDER BY role, name;

-- =============================================================================
-- FILE TRACKING
-- =============================================================================

-- v_equipment_files: All files linked to equipment items
SELECT
    e.id as equipment_id,
    e.suite_number,
    e.suite_name,
    e.item_name,
    ef.file_type,
    ef.file_path,
    ef.vendor,
    ef.date_received,
    ef.notes
FROM equipment e
JOIN equipment_files ef ON e.id = ef.equipment_id
WHERE e.status = 'confirmed'
ORDER BY e.suite_number, e.item_name, ef.file_type;

-- v_quote_files: Quote files by equipment
SELECT
    e.id as equipment_id,
    e.suite_number,
    e.item_name,
    (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as total_cost,
    e.vendor as primary_vendor,
    ef.vendor as quote_vendor,
    ef.file_path,
    ef.date_received,
    ef.notes
FROM equipment e
LEFT JOIN equipment_files ef ON e.id = ef.equipment_id AND ef.file_type = 'quote'
WHERE e.status = 'confirmed'
  AND (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) > 50000
ORDER BY total_cost DESC, e.item_name;

-- v_space_files: Space diagrams and renovation plans
SELECT
    e.id as equipment_id,
    e.suite_number,
    e.item_name,
    e.space_id,
    s.space_name,
    s.building,
    ef.file_type,
    ef.file_path,
    ef.date_received,
    ef.notes
FROM equipment e
LEFT JOIN spaces s ON e.space_id = s.space_id
LEFT JOIN equipment_files ef ON e.id = ef.equipment_id AND ef.file_type IN ('space_diagram', 'renovation_plan')
WHERE e.status = 'confirmed'
ORDER BY e.suite_number, e.item_name;

-- v_file_coverage: Equipment with/without required files
SELECT
    e.id,
    e.suite_number,
    e.item_name,
    (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as total_cost,
    COUNT(CASE WHEN ef.file_type = 'quote' THEN 1 END) as quote_count,
    COUNT(CASE WHEN ef.file_type = 'space_diagram' THEN 1 END) as diagram_count,
    COUNT(CASE WHEN ef.file_type = 'renovation_plan' THEN 1 END) as reno_plan_count,
    CASE
        WHEN (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) > 50000
             AND COUNT(CASE WHEN ef.file_type = 'quote' THEN 1 END) = 0
        THEN 'QUOTE_NEEDED'
        ELSE 'OK'
    END as quote_status_check
FROM equipment e
LEFT JOIN equipment_files ef ON e.id = ef.equipment_id
WHERE e.status = 'confirmed'
GROUP BY e.id, e.suite_number, e.item_name, e.quantity, e.unit_cost
ORDER BY e.suite_number, total_cost DESC;

-- v_missing_files: Equipment items missing required files
SELECT
    e.id,
    e.suite_number,
    e.item_name,
    (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) as total_cost,
    'Quote needed (>$50K item)' as issue
FROM equipment e
LEFT JOIN equipment_files ef ON e.id = ef.equipment_id AND ef.file_type = 'quote'
WHERE e.status = 'confirmed'
  AND (COALESCE(e.quantity, 1) * COALESCE(e.unit_cost, 0)) > 50000
  AND ef.equipment_id IS NULL
ORDER BY total_cost DESC;
