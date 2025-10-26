<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\TaxRates\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class TaxRateDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $countryIso2,
        public readonly string $category,
        public readonly string $rate,
        public readonly \DateTimeImmutable $validFrom,
        public readonly ?\DateTimeImmutable $validTo
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
