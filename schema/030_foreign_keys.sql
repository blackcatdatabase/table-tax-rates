-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: tax_rates
ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;
