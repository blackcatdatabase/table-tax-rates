-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  tax_rates

CREATE UNIQUE INDEX ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
