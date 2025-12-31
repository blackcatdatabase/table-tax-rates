-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  tax_rates

CREATE UNIQUE INDEX ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
