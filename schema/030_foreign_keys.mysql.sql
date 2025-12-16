-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  tax_rates

ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;

ALTER TABLE tax_rates ADD CONSTRAINT chk_tax_rates_rate CHECK (rate BETWEEN 0 AND 100);
