-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  tax_rates

CREATE UNIQUE INDEX ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from);
