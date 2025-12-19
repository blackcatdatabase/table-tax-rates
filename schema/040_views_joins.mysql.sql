-- Auto-generated from core/joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   tax_rates_current

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_tax_rates_current AS
SELECT
  *
FROM tax_rates t
WHERE CURRENT_DATE() >= t.valid_from
  AND (t.valid_to IS NULL OR CURRENT_DATE() <= t.valid_to);
