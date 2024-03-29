CREATE TABLE `residencia_dev`.`cuentas` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `titular` VARCHAR(250) NOT NULL,
    `numero` VARCHAR(250) NOT NULL,
    `tipo` ENUM('Tarjeta', 'Cuenta Bancaria') NOT NULL,
    `documento_identidad` VARCHAR(250) NOT NULL,
    `direccion` TEXT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `updated_at` TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;