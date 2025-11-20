-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  tax_rates
ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;

ALTER TABLE tax_rates ADD CONSTRAINT chk_tax_rates_rate CHECK (rate BETWEEN 0 AND 100);
