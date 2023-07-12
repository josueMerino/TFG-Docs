CREATE TABLE `residencia_dev`.`gyms` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cliente_id` INT UNSIGNED NOT NULL,
    `cuenta_id` INT UNSIGNED NOT NULL,
    `abono_tipo_id` INT NOT NULL,
    `modalidad_pago` ENUM('Mensual', 'Anual') NOT NULL,
    `fecha_alta` DATE NOT NULL,
    `fecha_baja` DATE NULL,
    `huella_activada` BOOLEAN NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `updated_at` TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;
ALTER TABLE `gyms`
ADD CONSTRAINT `gyms_clientes_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `gyms`
ADD CONSTRAINT `gyms_cuentas_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `gyms`
ADD CONSTRAINT `gyms_abono_tipos_foreign` FOREIGN KEY (`abono_tipo_id`) REFERENCES `abono_tipos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `gyms`
ADD `documentos_firmados` JSON NULL
AFTER `huella_activada`;