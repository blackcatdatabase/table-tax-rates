-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  tax_rates
-- Contract view for [tax_rates]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_tax_rates AS
SELECT
  id,
  country_iso2,
  category,
  rate,
  valid_from,
  valid_to
FROM tax_rates;
