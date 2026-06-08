-- Generado por Tecnopraxis — Diseñador de BD

CREATE TABLE `usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cedula` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `apellido` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_usuarios_cedula` (`cedula`)
);

CREATE TABLE `contenidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `descripcion` TEXT,
  `año_escolar` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `actividades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre_actividad` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(255) NOT NULL,
  `puntos_maximos` VARCHAR(255) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`)
);

CREATE TABLE `contenido_id` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
);

CREATE TABLE `progreso_estudiantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `calificacion` DECIMAL(255) NOT NULL,
  `fecha_completado` DATE NOT NULL,
  `usuario_id` INT,
  `actividad_id` INT,
  PRIMARY KEY (`id`)
);

ALTER TABLE `contenido_id` ADD CONSTRAINT `fk_rel_18` FOREIGN KEY (`id`) REFERENCES `contenidos` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `progreso_estudiantes` ADD CONSTRAINT `fk_rel_24` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `progreso_estudiantes` ADD CONSTRAINT `fk_rel_26` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
