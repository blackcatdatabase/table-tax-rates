-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  tax_rates

CREATE UNIQUE INDEX IF NOT EXISTS ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
