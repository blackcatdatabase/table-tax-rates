-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  tax_rates

CREATE UNIQUE INDEX IF NOT EXISTS ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
