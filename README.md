# Liceo-Rafael-Maria-Urrecheaga

# Sistema de Gestion Escolar - Liceo Bolivariano Rafael Maria Urrecheaga

## Descripcion del Proyecto
Este repositorio contiene el desarrollo del software diseñado para optimizar y automatizar los procesos administrativos y académicos del Liceo Bolivariano "Rafael María Urrecheaga". El objetivo principal es centralizar la información, mejorar el control de estudios y facilitar la interacción entre el personal administrativo, docentes y estudiantes de la institución.

## Logica de Negocios

### 1. Gestion y Roles de Usuarios
El sistema cuenta con un control de acceso basado en roles para garantizar la seguridad de la información:
* **Administrador:** Tiene control total del sistema. Puede registrar personal, abrir periodos escolares, crear secciones y realizar auditorías.
* **Docente:** Puede visualizar las secciones asignadas, registrar la asistencia y cargar las calificaciones de los estudiantes en sus respectivas asignaturas.
* **Estudiante / Representante:** Puede consultar el historial académico, boletines de notas y el estado de la inscripción.

### 2. Proceso de Inscripcion y Matricula
* Cada estudiante pertenece a un único año (de 1er a 5to año) y se le asigna una sección específica (A, B, C, etc.) para el año escolar vigente.
* Un estudiante no puede estar inscrito en dos secciones en el mismo periodo académico.

### 3. Planificacion Academica
* **Asignaturas:** Cada año escolar tiene un plan de estudio con materias obligatorias (Matemáticas, Castellano, Ciencias, etc.).
* **Carga Académica:** El administrador asigna qué docente dictará qué asignatura en qué sección específica. Un docente puede tener múltiples secciones, pero una sección/asignatura solo tiene un docente titular.

### 4. Evaluacion y Calificaciones
* El periodo escolar se divide en momentos pedagógicos (lapsos).
* Los docentes evalúan en una escala cuantitativa del 1 al 20 (según el sistema educativo venezolano).
* El sistema calcula automáticamente el promedio final de cada asignatura para determinar si el estudiante aprueba o reprueba la materia.

## Cronograma de Desarrollo
* **Fase 1 (Hoy):** Creación del repositorio y documentación de la Lógica de Negocios en el README.md.
* **Fase 2 (Domingo):** Diseño, normalización y montaje del script de la Base de Datos (BD).
* **Fase 3 (Miércoles próximo):** Arquitectura de carpetas del proyecto e implementación del Sistema de Verificación de Usuarios (Autenticación).
