-- Auto-generated from schema-views-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  tax_rates

-- Contract view for [tax_rates]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_tax_rates AS
SELECT
  id,
  country_iso2,
  category,
  rate,
  valid_from,
  valid_to
FROM tax_rates;
