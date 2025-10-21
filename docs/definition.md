# Definition – tax_rates

Tax rates per country and goods category.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| country_iso2 | CHAR(2) | NO | — | ISO 3166-1 alpha-2 country code. |  |
| category | ENUM('ebook','physical') | NO | — | Tax category. | enum: ebook, physical |
| rate | DECIMAL(5,2) | NO | — | Tax rate %. |  |
| valid_from | DATE | NO | — | Effective from (date). |  |
| valid_to | DATE | YES | — | Effective to (date), optional. |  |
