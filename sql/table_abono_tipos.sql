CREATE TABLE `abono_tipos` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(250) NOT NULL,
    `monto` DECIMAL(8, 2) NOT NULL,
    `created_at` TIMESTAMP NULL,
    `updated_at` TIMESTAMP NULL,
    `deleted_at` TIMESTAMP NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE
    `abono_tipos`
ADD
    `tipo` ENUM('gym', 'parking') NOT NULL
AFTER
    `monto`;