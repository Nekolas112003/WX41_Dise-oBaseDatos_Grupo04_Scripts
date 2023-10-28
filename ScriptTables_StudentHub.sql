CREATE DATABASE StudentHub
USE StudentHub
        
CREATE TABLE calificaciones
(
  codigo            INT NOT NULL,
  codigo_aspecto    INT NOT NULL,
  codigo_docente    INT NOT NULL,
  codigo_estudiante INT NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE carreras
(
  codigo      INT          NOT NULL,
  nombre      VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  ciclos      INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE certificaciones
(
  codigo_institucion INT          NOT NULL,
  codigo             INT          NOT NULL,
  titulo             VARCHAR(100) NOT NULL,
  descripcion        VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE ciclos
(
  codigo       INT  NOT NULL,
  year         INT  NOT NULL,
  numero       INT  NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin    DATE NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE criterios
(
  codigo     INT          NOT NULL,
  titulo     VARCHAR(100) NOT NULL,
  valoracion INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE cursos
(
  codigo      INT          NOT NULL,
  nombre      VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  creditos    INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE cursos_carreras
(
  codigo_curso   INT NOT NULL,
  codigo_carrera INT NOT NULL,
  numero_ciclo   INT NOT NULL,
  PRIMARY KEY (codigo_curso, codigo_carrera)
);

CREATE TABLE cursos_requisitos
(
  codigo_curso           INT NOT NULL,
  codigo_curso_requisito INT NOT NULL,
  PRIMARY KEY (codigo_curso, codigo_curso_requisito)
);

CREATE TABLE docentes
(
  codigo             INT          NOT NULL,
  nombres            VARCHAR(100) NOT NULL,
  apellido_paterno   VARCHAR(100) NOT NULL,
  apellido_materno   VARCHAR(100) NOT NULL,
  dni                CHAR(8)      NOT NULL,
  telefono           CHAR(9)      NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE empresas
(
  codigo             INT          NOT NULL,
  ruc                CHAR(11)     NOT NULL,
  razon_social       VARCHAR(100) NOT NULL,
  direccion          VARCHAR(100) NOT NULL,
  telefono           CHAR(9)      NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE estudiantes
(
  codigo           INT          NOT NULL,
  nombres          VARCHAR(100) NOT NULL,
  apellido_materno VARCHAR(100) NOT NULL,
  dni              VARCHAR(8)   NOT NULL,
  codigo_sede      INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE estudiantes_secciones
(
  codigo_seccion INT  NOT NULL,
  codigo_alumno  INT  NOT NULL,
  actual         BIT NOT NULL,
  nota_final     INT  NULL    ,
  aprobado       BIT NULL    ,
  PRIMARY KEY (codigo_seccion, codigo_alumno)
);

CREATE TABLE estudios
(
  codigo_docente     INT  NOT NULL,
  codigo_institucion INT  NOT NULL,
  fecha_inicio       DATE NOT NULL,
  fecha_fin          DATE NOT NULL,
  PRIMARY KEY (codigo_docente, codigo_institucion, fecha_inicio)
);

CREATE TABLE instituciones_educativas
(
  codigo             INT          NOT NULL,
  ruc                CHAR(11)     NOT NULL,
  razon_social       VARCHAR(100) NOT NULL,
  direccion          VARCHAR(100) NOT NULL,
  telefono           CHAR(9)      NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE modalidades
(
  codigo INT          NOT NULL,
  tipo   VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE resenas
(
  codigo            INT          NOT NULL,
  numero_estrellas  VARCHAR(100) NOT NULL,
  descripcion       VARCHAR(100) NOT NULL,
  codigo_docente    INT          NOT NULL,
  codigo_estudiante INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE secciones
(
  codigo           INT          NOT NULL,
  nombre           VARCHAR(100) NOT NULL,
  codigo_docente   INT          NOT NULL,
  codigo_curso     INT          NOT NULL,
  codigo_ciclo     INT          NOT NULL,
  codigo_sede      INT          NOT NULL,
  codigo_modalidad INT          NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE sedes
(
  codigo    INT          NOT NULL,
  nombre    VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  telefono  CHAR(7)      NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE trabajos
(
  codigo_docente INT          NOT NULL,
  codigo_empresa INT          NOT NULL,
  fecha_inicio   DATE         NOT NULL,
  fecha_fin      DATE         NOT NULL,
  cargo          VARCHAR(100) NOT NULL,
  PRIMARY KEY (codigo_docente, codigo_empresa, fecha_inicio)
);

ALTER TABLE certificaciones
  ADD CONSTRAINT FK_instituciones_educativas_TO_certificaciones
    FOREIGN KEY (codigo_institucion)
    REFERENCES instituciones_educativas (codigo);

ALTER TABLE estudios
  ADD CONSTRAINT FK_instituciones_educativas_TO_estudios
    FOREIGN KEY (codigo_institucion)
    REFERENCES instituciones_educativas (codigo);

ALTER TABLE estudios
  ADD CONSTRAINT FK_docentes_TO_estudios
    FOREIGN KEY (codigo_docente)
    REFERENCES docentes (codigo);

ALTER TABLE trabajos
  ADD CONSTRAINT FK_docentes_TO_trabajos
    FOREIGN KEY (codigo_docente)
    REFERENCES docentes (codigo);

ALTER TABLE trabajos
  ADD CONSTRAINT FK_empresas_TO_trabajos
    FOREIGN KEY (codigo_empresa)
    REFERENCES empresas (codigo);

ALTER TABLE resenas
  ADD CONSTRAINT FK_docentes_TO_resenas
    FOREIGN KEY (codigo_docente)
    REFERENCES docentes (codigo);

ALTER TABLE resenas
  ADD CONSTRAINT FK_estudiantes_TO_resenas
    FOREIGN KEY (codigo_estudiante)
    REFERENCES estudiantes (codigo);

ALTER TABLE secciones
  ADD CONSTRAINT FK_docentes_TO_secciones
    FOREIGN KEY (codigo_docente)
    REFERENCES docentes (codigo);

ALTER TABLE estudiantes_secciones
  ADD CONSTRAINT FK_secciones_TO_estudiantes_secciones
    FOREIGN KEY (codigo_seccion)
    REFERENCES secciones (codigo);

ALTER TABLE estudiantes_secciones
  ADD CONSTRAINT FK_estudiantes_TO_estudiantes_secciones
    FOREIGN KEY (codigo_alumno)
    REFERENCES estudiantes (codigo);

ALTER TABLE secciones
  ADD CONSTRAINT FK_ciclos_TO_secciones
    FOREIGN KEY (codigo_ciclo)
    REFERENCES ciclos (codigo);

ALTER TABLE secciones
  ADD CONSTRAINT FK_sedes_TO_secciones
    FOREIGN KEY (codigo_sede)
    REFERENCES sedes (codigo);

ALTER TABLE estudiantes
  ADD CONSTRAINT FK_sedes_TO_estudiantes
    FOREIGN KEY (codigo_sede)
    REFERENCES sedes (codigo);

ALTER TABLE calificaciones
  ADD CONSTRAINT FK_criterios_TO_calificaciones
    FOREIGN KEY (codigo_aspecto)
    REFERENCES criterios (codigo);

ALTER TABLE calificaciones
  ADD CONSTRAINT FK_docentes_TO_calificaciones
    FOREIGN KEY (codigo_docente)
    REFERENCES docentes (codigo);

ALTER TABLE calificaciones
  ADD CONSTRAINT FK_estudiantes_TO_calificaciones
    FOREIGN KEY (codigo_estudiante)
    REFERENCES estudiantes (codigo);

ALTER TABLE secciones
  ADD CONSTRAINT FK_modalidades_TO_secciones
    FOREIGN KEY (codigo_modalidad)
    REFERENCES modalidades (codigo);

ALTER TABLE cursos_carreras
  ADD CONSTRAINT FK_carreras_TO_cursos_carreras
    FOREIGN KEY (codigo_carrera)
    REFERENCES carreras (codigo);

ALTER TABLE secciones
  ADD CONSTRAINT FK_cursos_TO_secciones
    FOREIGN KEY (codigo_curso)
    REFERENCES cursos (codigo);

ALTER TABLE cursos_carreras
  ADD CONSTRAINT FK_cursos_TO_cursos_carreras
    FOREIGN KEY (codigo_curso)
    REFERENCES cursos (codigo);

ALTER TABLE cursos_requisitos
  ADD CONSTRAINT FK_cursos_TO_cursos_requisitos
    FOREIGN KEY (codigo_curso)
    REFERENCES cursos (codigo);

ALTER TABLE cursos_requisitos
  ADD CONSTRAINT FK_cursos_TO_cursos_requisitos1
    FOREIGN KEY (codigo_curso_requisito)
    REFERENCES cursos (codigo);

        
      