-- Auto-generated from schema-map-postgres.psd1 (map@38d5403)
-- engine: postgres
-- table:  tax_rates
CREATE UNIQUE INDEX IF NOT EXISTS ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
