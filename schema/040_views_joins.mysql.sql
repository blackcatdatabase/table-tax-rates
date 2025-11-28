-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   tax_rates_current
-- Current (today) effective tax rates
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_tax_rates_current AS
SELECT
  *
FROM tax_rates t
WHERE CURRENT_DATE() >= t.valid_from
  AND (t.valid_to IS NULL OR CURRENT_DATE() <= t.valid_to);
