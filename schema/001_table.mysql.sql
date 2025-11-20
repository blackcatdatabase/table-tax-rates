-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  tax_rates
CREATE TABLE IF NOT EXISTS tax_rates (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  country_iso2 CHAR(2) NOT NULL,
  category ENUM('ebook','physical') NOT NULL,
  rate DECIMAL(5,2) NOT NULL,
  valid_from DATE NOT NULL,
  valid_to DATE NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
