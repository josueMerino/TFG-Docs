CREATE TABLE `parkings` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cliente_id` INT UNSIGNED NOT NULL,
    `cuenta_id` INT UNSIGNED NOT NULL,
    `abono_tipo_id` INT NOT NULL,
    `fecha_alta` DATE NOT NULL,
    `fecha_baja` DATE NULL,
    `matricula_coche` VARCHAR(250) NOT NULL,
    `plaza` VARCHAR(250) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `updated_at` TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE
    `parkings`
ADD
    CONSTRAINT `parkings_abono_tipos_foreign` FOREIGN KEY (`abono_tipo_id`) REFERENCES `abono_tipos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `parkings`
ADD
    CONSTRAINT `parkings_clientes_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `parkings`
ADD
    CONSTRAINT `parkings_cuentas_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;