-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  tax_rates
ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
