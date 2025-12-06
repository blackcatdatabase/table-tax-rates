-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  tax_rates

ALTER TABLE tax_rates ADD CONSTRAINT fk_tax_rates_country FOREIGN KEY (country_iso2) REFERENCES countries(iso2) ON DELETE CASCADE;

ALTER TABLE tax_rates ADD CONSTRAINT chk_tax_rates_rate CHECK (rate BETWEEN 0 AND 100);
