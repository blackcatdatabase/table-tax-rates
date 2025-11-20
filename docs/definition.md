<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – tax_rates

Tax rates per country and goods category. UNIQUE (country_iso2, category, valid_from).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| country_iso2 | CHAR(2) | NO | — | ISO 3166-1 alpha-2 country code. |  |
| category | TEXT | NO | — | Tax category. | enum: ebook, physical |
| rate | NUMERIC(5,2) | NO | — | Tax rate %. |  |
| valid_from | DATE | NO | — | Effective from (date). |  |
| valid_to | DATE | YES | — | Effective to (date), optional. |  |