-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  tax_rates_current
-- Current (today) effective tax rates
CREATE OR REPLACE VIEW vw_tax_rates_current AS
SELECT *
FROM tax_rates t
WHERE CURRENT_DATE >= t.valid_from
  AND (t.valid_to IS NULL OR CURRENT_DATE <= t.valid_to);

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
  valid_to
FROM tax_rates;

