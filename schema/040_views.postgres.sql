-- Auto-generated from schema-views-postgres.yaml (map@sha1:A7406D76A2DD55741B4DC6A4EC831681A19168EB)
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
