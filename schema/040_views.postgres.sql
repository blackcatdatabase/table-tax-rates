-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  tax_rates

-- Contract view for [tax_rates]
CREATE OR REPLACE VIEW vw_tax_rates AS
SELECT
  id,
  country_iso2,
  category,
  rate,
  valid_from,
  valid_to,
  created_at,
  updated_at
FROM tax_rates;
