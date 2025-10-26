-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  tax_rates
CREATE UNIQUE INDEX ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
