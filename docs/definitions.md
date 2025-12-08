# tax_rates

Tax rates per country and goods category. UNIQUE (country_iso2, category, valid_from).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| category | ENUM('ebook','physical') | NO |  | Tax category. (enum: ebook, physical) |
| country_iso2 | CHAR(2) | NO |  | ISO 3166-1 alpha-2 country code. |
| id | BIGINT | NO |  | Surrogate primary key. |
| rate | DECIMAL(5,2) | NO |  | Tax rate %. |
| valid_from | DATE | NO |  | Effective from (date). |
| valid_to | DATE | YES |  | Effective to (date), optional. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_tax_rates_country_cat_from | country_iso2, category, valid_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_tax_rates_country_cat_from | country_iso2,category,valid_from | CREATE UNIQUE INDEX ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_tax_rates_country | country_iso2 | countries(iso2) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_tax_rates_country_cat_from | country_iso2, category, valid_from |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_tax_rates_country_cat_from | country_iso2,category,valid_from | CREATE UNIQUE INDEX IF NOT EXISTS ux_tax_rates_country_cat_from ON tax_rates (country_iso2, category, valid_from) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_tax_rates_country | country_iso2 | countries(iso2) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_tax_rates | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_tax_rates_current | mysql | algorithm=TEMPTABLE, security=INVOKER | [schema\040_views_joins.mysql.sql](schema\040_views_joins.mysql.sql) |
| vw_tax_rates | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
| vw_tax_rates_current | postgres |  | [schema\040_views_joins.postgres.sql](schema\040_views_joins.postgres.sql) |
