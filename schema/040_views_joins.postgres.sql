-- Auto-generated from joins-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- view:   tax_rates_current

-- Current (today) effective tax rates
CREATE OR REPLACE VIEW vw_tax_rates_current AS
SELECT
  *
FROM tax_rates t
WHERE CURRENT_DATE >= t.valid_from
  AND (t.valid_to IS NULL OR CURRENT_DATE <= t.valid_to);
