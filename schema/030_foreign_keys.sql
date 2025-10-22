-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: tax_rates
ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
