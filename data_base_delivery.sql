---TDA---

CREATE OR REPLACE TYPE datos_empresa AS OBJECT (
    rif    VARCHAR2(30),
    nombre     VARCHAR2(30),
    STATIC FUNCTION validarRif(rif VARCHAR) RETURN VARCHAR2
)
/
CREATE OR REPLACE TYPE BODY datos_empresa AS
       STATIC FUNCTION validarRif(rif VARCHAR) RETURN VARCHAR2 IS
       BEGIN
            IF REGEXP_LIKE (rif, '^([VEJPGvejpg]{1})-([0-9]{8})') THEN
                RETURN rif;
            END IF;
            raise_application_error(-20111,'RIF inválido');
       END;
END;
/

CREATE OR REPLACE TYPE rango_fecha AS OBJECT (
    fecha_inicio    DATE,
    fecha_fin     DATE,
    STATIC FUNCTION validarRango(input DATE, inicio DATE, fin DATE) RETURN DATE
)
/
CREATE OR REPLACE TYPE BODY rango_fecha AS
   STATIC FUNCTION validarRango(input DATE, inicio DATE, fin DATE) RETURN DATE IS
   BEGIN
        IF inicio < fin THEN
            RETURN input;
        END IF;
        raise_application_error(-20111,'Rango inválido');
   END;
END;
/

CREATE OR REPLACE TYPE ubicacion AS OBJECT (
    latitud NUMBER,
    longitud NUMBER
)
/

---TABLAS---

CREATE TABLE acuerdos_servicios (
    id INTEGER PRIMARY KEY,
    id_proveedor INTEGER NOT NULL,
    n_envios INTEGER NOT NULL,
    ocurrencia VARCHAR2(9) NOT NULL,
    precio INTEGER NOT NULL,
    activo NUMBER(1) NOT NULL,
        rango_fecha rango_fecha NOT NULL,
    descuento_renovado INTEGER,
    CHECK (activo=0 OR activo=1),
    CHECK (ocurrencia='diario' OR ocurrencia='semanal' OR ocurrencia='mensual' OR ocurrencia='anual')
);
/
CREATE TABLE contratos (
    id INTEGER PRIMARY KEY,
    id_proveedor INTEGER NOT NULL,
    id_empresa_aliada INTEGER NOT NULL,
    id_acuerdo_servicio INTEGER NOT NULL,
    rango_fecha rango_fecha NOT NULL
);
/
CREATE TABLE det_contratos (
    id_contrato INTEGER NOT NULL,
    id_lugar INTEGER NOT NULL
);
/
CREATE TABLE direcciones (
    id INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_lugar INTEGER NOT NULL,
    calle VARCHAR(30) NOT NULL,
    lugar_referencia VARCHAR(30) NOT NULL,
    ubicacion_exacta ubicacion NOT NULL,
    otro VARCHAR(30)
);
/
CREATE TABLE empresas_aliadas (
    id INTEGER PRIMARY KEY,
    logo          BLOB,
    datos_empresa datos_empresa NOT NULL,
    sector VARCHAR2(15) NOT NULL,
    CHECK (sector='alimentación' OR sector='salud' OR sector='tecnologia' OR sector='otros')
);
/
CREATE TABLE lotes (
    id INTEGER PRIMARY KEY,
    id_transporte INTEGER NOT NULL,
    id_sede INTEGER NOT NULL,
    entregado NUMBER(1) NOT NULL,
    fecha_creacion rango_fecha NOT NULL
);
/
CREATE TABLE lugares (
    id INTEGER PRIMARY KEY,
    id_pertenece INTEGER,
    nombre VARCHAR(30) NOT NULL,
    tipo VARCHAR(15) NOT NULL,
    CHECK (tipo='estado' OR tipo='municipio' OR tipo='zona')
);
/
CREATE TABLE l_p(
    id INTEGER PRIMARY KEY,
    id_lote INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    orden INTEGER NOT NULL,
    recogido number(1) NOT NULL,
    CHECK (recogido=0 OR recogido=1)
);
/
CREATE TABLE p_p (
    cantidad INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    CONSTRAINT p_p_pk PRIMARY KEY (id_producto,id_pedido)
);
/
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    id_sucursal INTEGER NOT NULL,
    id_proveedor INTEGER NOT NULL,
    id_direccion INTEGER NOT NULL,
    fecha_realizado rango_fecha NOT NULL,
    status VARCHAR(15) NOT NULL,
    satisfaccion INTEGER,
    CHECK (status='recibido' OR status='en curso' OR status='despachado' OR status='entregado' OR status='cancelado')
);
/
CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    id_empresa_aliada INTEGER NOT NULL,
    nombre VARCHAR2(30) NOT NULL,
    precio INTEGER NOT NULL,
    sector VARCHAR2(15) NOT NULL,
    CHECK (sector='alimentación' OR sector='salud' OR sector='tecnologia' OR sector='otros')
);
/
CREATE TABLE proveedores(
    id INTEGER PRIMARY KEY,
    logo BLOB,
    datos_empresa datos_empresa
);
/
CREATE TABLE registros (
    id_usuario INTEGER NOT NULL,
    id_proveedor INTEGER NOT NULL,
    fecha_registro DATE,
    CONSTRAINT u_p_pk PRIMARY KEY (id_usuario,id_proveedor)
);
/
CREATE TABLE sedes (
    id INTEGER PRIMARY KEY,
    id_proveedor INTEGER NOT NULL,
    ubicacion ubicacion
);
/
CREATE TABLE sucursales (
    id INTEGER PRIMARY KEY,
    id_empresa_aliada INTEGER NOT NULL,
    id_lugar INTEGER NOT NULL,
    ubicacion ubicacion NOT NULL
);
/
CREATE TABLE s_l(
    id_sede INTEGER NOT NULL,
    id_lugar INTEGER NOT NULL,
    pertenece NUMBER(1) NOT NULL,
    CONSTRAINT s_l_pk PRIMARY KEY (id_lugar,id_sede),
    CHECK (pertenece=0 OR pertenece=1)
);
/
CREATE TABLE trackings (
    id INTEGER PRIMARY KEY,
    id_pedido INTEGER NOT NULL,
    ubicacion_exacta ubicacion NOT NULL
);
/
CREATE TABLE transportes (
    placa INTEGER PRIMARY KEY,
    id_sede INTEGER NOT NULL,
    tipo VARCHAR2(15) NOT NULL,
    estado VARCHAR2(15) NOT NULL,
    CHECK(tipo='bicicleta'OR tipo='moto' OR tipo='carro' OR tipo='camioneta'),
    CHECK(estado='activo' OR estado='reparación')
);
/
CREATE TABLE usuarios (
    cedula INTEGER PRIMARY KEY,
    primer_nombre VARCHAR2(10) NOT NULL,
    primer_apellido VARCHAR2(10) NOT NULL,
    email VARCHAR2(30) NOT NULL,
    telefono VARCHAR2(20) NOT NULL,
    fecha_registro DATE NOT NULL,
    segundo_nombre VARCHAR2(10),
    segundo_apellido VARCHAR2(10),
    foto BLOB
);
/

---FK-----
ALTER TABLE acuerdos_servicios
ADD CONSTRAINT fk_as_p
    FOREIGN KEY  (id_proveedor)
    REFERENCES proveedores;
/
ALTER TABLE contratos
    ADD CONSTRAINT fk_c_p
    FOREIGN KEY (id_proveedor)
    REFERENCES proveedores (id);
/
ALTER TABLE contratos
    ADD CONSTRAINT fk_c_e
    FOREIGN KEY (id_empresa_aliada)
    REFERENCES empresas_aliadas (id);
/
ALTER TABLE contratos
    ADD CONSTRAINT fk_c_a
    FOREIGN KEY (id_acuerdo_servicio)
    REFERENCES acuerdos_servicios (id);
/
ALTER TABLE det_contratos
ADD CONSTRAINT fk_dc_c
    FOREIGN KEY  (id_contrato)
    REFERENCES contratos;
/
ALTER TABLE det_contratos
ADD CONSTRAINT fk_dc_l
    FOREIGN KEY  (id_lugar)
    REFERENCES lugares;
/
ALTER TABLE direcciones
ADD CONSTRAINT fk_d_l
    FOREIGN KEY  (id_lugar)
    REFERENCES lugares;
/
ALTER TABLE direcciones
ADD CONSTRAINT fk_d_u
    FOREIGN KEY  (id_usuario)
    REFERENCES usuarios;
/
ALTER TABLE lotes
ADD CONSTRAINT fk_l_s
    FOREIGN KEY  (id_sede)
    REFERENCES sedes;
/
ALTER TABLE lotes
ADD CONSTRAINT fk_l_t
    FOREIGN KEY  (id_transporte)
    REFERENCES transportes;
/
ALTER TABLE lugares
ADD CONSTRAINT fk_l_l
    FOREIGN KEY  (id_pertenece)
    REFERENCES lugares;
/
ALTER TABLE l_p
ADD CONSTRAINT fk_lp_l
    FOREIGN KEY (id_lote)
    REFERENCES lotes (id);
/
ALTER TABLE l_p
ADD CONSTRAINT fk_lp_p
    FOREIGN KEY (id_pedido)
    REFERENCES pedidos (id);
/
ALTER TABLE pedidos
ADD CONSTRAINT fk_p_s
    FOREIGN KEY  (id_sucursal)
    REFERENCES sucursales;
/
ALTER TABLE pedidos
ADD CONSTRAINT fk_p_p
    FOREIGN KEY  (id_proveedor)
    REFERENCES proveedores;
/
ALTER TABLE pedidos
ADD CONSTRAINT fk_p_d
    FOREIGN KEY  (id_direccion)
    REFERENCES direcciones;
/
ALTER TABLE productos
    ADD CONSTRAINT fk_p_ea
    FOREIGN KEY (id_empresa_aliada)
    REFERENCES empresas_aliadas (id);
/
ALTER TABLE p_p
ADD CONSTRAINT fk_pp_pe
    FOREIGN KEY (id_pedido)
    REFERENCES pedidos (id);
/
ALTER TABLE p_p
ADD CONSTRAINT fk_pp_pr
    FOREIGN KEY (id_producto)
    REFERENCES productos (id);
/
ALTER TABLE registros
ADD CONSTRAINT fk_r_u
    FOREIGN KEY  (id_usuario)
    REFERENCES usuarios;
/
ALTER TABLE registros
ADD CONSTRAINT fk_r_p
    FOREIGN KEY (id_proveedor)
    REFERENCES proveedores;
/
ALTER TABLE sedes
ADD CONSTRAINT fk_s_p
    FOREIGN KEY (id_proveedor)
    REFERENCES proveedores (id);
/
ALTER TABLE sucursales
ADD CONSTRAINT fk_s_ea
    FOREIGN KEY (id_empresa_aliada)
    REFERENCES empresas_aliadas (id);
/
ALTER TABLE sucursales
ADD CONSTRAINT fk_s_l
    FOREIGN KEY (id_lugar)
    REFERENCES lugares (id);
/
ALTER TABLE s_l
    ADD CONSTRAINT fk_sl_s
    FOREIGN KEY (id_sede)
    REFERENCES sedes (id);
/
ALTER TABLE s_l
    ADD CONSTRAINT fk_sl_l
    FOREIGN KEY (id_lugar)
    REFERENCES lugares (id);
/
ALTER TABLE trackings
ADD CONSTRAINT fk_t_p
    FOREIGN KEY  (id_pedido)
    REFERENCES pedidos;
/
ALTER TABLE transportes
ADD CONSTRAINT fk_t_s
    FOREIGN KEY (id_sede)
    REFERENCES sedes (id);
/


--SEQUENCES

CREATE SEQUENCE secuencia_acuerdos_servicio
/
CREATE SEQUENCE secuencia_contratos
/
CREATE SEQUENCE secuencia_det_contratos
/
CREATE SEQUENCE secuencia_direcciones
/
CREATE SEQUENCE secuencia_empresas_aliada
/
CREATE SEQUENCE secuencia_lotes
/
CREATE SEQUENCE secuencia_lugares
/
CREATE SEQUENCE secuencia_l_p
/
CREATE SEQUENCE secuencia_pedidos
/
CREATE SEQUENCE secuencia_productos
/
CREATE SEQUENCE secuencia_p_p
/
CREATE SEQUENCE secuencia_proveedores
/
CREATE SEQUENCE secuencia_registros
/
CREATE SEQUENCE secuencia_sedes
/
CREATE SEQUENCE secuencia_sucursales
/
CREATE SEQUENCE secuencia_s_l
/
CREATE SEQUENCE secuencia_trackings
/
CREATE SEQUENCE secuencia_transportes
/
CREATE SEQUENCE secuencia_usuarios
/
