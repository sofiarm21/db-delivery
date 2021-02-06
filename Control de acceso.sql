alter session set "_ORACLE_SCRIPT"=true;
CREATE USER Administrador_de_sistema
    IDENTIFIED BY 123456;

-------PROVEEDOR------

CREATE USER GERENTE_PROV
    IDENTIFIED BY PROV1;

CREATE USER CONDUCTOR_PROV
    IDENTIFIED BY PROV2;

------EMPRESA_ALIADA------

CREATE USER GERENTE_EA
    IDENTIFIED BY EA1;

CREATE USER EMPLEADO_EA
    IDENTIFIED BY EA1;

------CLIENTE-----

CREATE USER CLIENTE
    IDENTIFIED BY 123;

				---------PERMISOS-------

GRANT ALL PRIVILEGES TO ADMINISTRADOR_DE_SISTEMA;

----GERENTE_PROVEDORES----

GRANT ALL ON ACUERDOS_SERVICIOS TO GERENTE_PROV;
GRANT ALL ON CONTRATOS TO GERENTE_PROV;
GRANT ALL ON DET_CONTRATOS TO GERENTE_PROV;
GRANT SELECT ON DIRECCIONES TO GERENTE_PROV;
GRANT SELECT ON L_P TO GERENTE_PROV;
GRANT SELECT ON LOTES TO GERENTE_PROV;
GRANT SELECT ON LUGARES TO GERENTE_PROV;
GRANT SELECT ON P_P TO GERENTE_PROV;
GRANT SELECT ON PEDIDOS TO GERENTE_PROV;
GRANT SELECT ON PRODUCTOS TO GERENTE_PROV;
GRANT ALL ON PROVEEDORES TO GERENTE_PROV;
GRANT SELECT ON REGISTROS TO GERENTE_PROV;
GRANT ALL ON S_L TO GERENTE_PROV;
GRANT ALL ON SEDES TO GERENTE_PROV;
GRANT SELECT ON SUCURSALES TO GERENTE_PROV;
GRANT SELECT ON TRACKINGS TO GERENTE_PROV;
GRANT ALL ON TRANSPORTES TO GERENTE_PROV;
GRANT SELECT ON USUARIOS TO GERENTE_PROV;

----CONDUCTOR_PROVEEDORES----

GRANT SELECT ON DIRECCIONES TO CONDUCTOR_PROV;
GRANT SELECT ON EMPRESAS_ALIADAS TO CONDUCTOR_PROV;
GRANT SELECT,UPDATE, INSERT ON L_P TO CONDUCTOR_PROV;
GRANT SELECT,UPDATE, INSERT ON LOTES TO CONDUCTOR_PROV;
GRANT SELECT ON LUGARES TO CONDUCTOR_PROV;
GRANT SELECT ON P_P TO CONDUCTOR_PROV;
GRANT SELECT,UPDATE ON PEDIDOS TO CONDUCTOR_PROV;
GRANT SELECT ON PRODUCTOS TO CONDUCTOR_PROV;
GRANT SELECT ON PROVEEDORES TO CONDUCTOR_PROV;
GRANT SELECT ON REGISTROS TO CONDUCTOR_PROV;
GRANT SELECT ON S_L TO CONDUCTOR_PROV;
GRANT SELECT ON SEDES TO CONDUCTOR_PROV;
GRANT SELECT ON SUCURSALES TO CONDUCTOR_PROV;
GRANT SELECT,UPDATE,INSERT ON TRACKINGS TO CONDUCTOR_PROV;
GRANT SELECT,UPDATE ON TRANSPORTES TO CONDUCTOR_PROV;
GRANT SELECT ON USUARIOS TO CONDUCTOR_PROV;

----GERENTE_EA----


GRANT SELECT ON ACUERDOS_SERVICIOS TO GERENTE_EA;
GRANT SELECT ON CONTRATOS TO GERENTE_EA;
GRANT SELECT ON DET_CONTRATOS TO GERENTE_EA;
GRANT ALL ON EMPRESAS_ALIADAS TO GERENTE_EA;
GRANT SELECT ON LUGARES TO GERENTE_EA;
GRANT SELECT ON PEDIDOS TO GERENTE_EA;
GRANT ALL ON PRODUCTOS TO GERENTE_EA;
GRANT SELECT ON PROVEEDORES TO GERENTE_EA;
GRANT ALL ON SUCURSALES TO GERENTE_EA;

----EMPLEADO_EA----


GRANT SELECT ON EMPRESAS_ALIADAS TO EMPLEADO_EA;
GRANT SELECT ON LUGARES TO EMPLEADO_EA;
GRANT SELECT,DELETE ON P_P TO EMPLEADO_EA;
GRANT SELECT,DELETE ON PEDIDOS TO EMPLEADO_EA;
GRANT SELECT ON PRODUCTOS TO EMPLEADO_EA;
GRANT SELECT ON PROVEEDORES TO EMPLEADO_EA;

----CLIENTE----

GRANT ALL ON DIRECCIONES TO CLIENTE;
GRANT SELECT ON EMPRESAS_ALIADAS TO CLIENTE;
GRANT SELECT ON LUGARES TO CLIENTE;
GRANT INSERT,SELECT,DELETE ON P_P TO CLIENTE;
GRANT INSERT,SELECT,DELETE ON PEDIDOS TO CLIENTE;
GRANT SELECT ON PRODUCTOS TO CLIENTE;
GRANT SELECT ON PROVEEDORES TO CLIENTE;
GRANT SELECT ON TRACKINGS TO CLIENTE;
GRANT ALL ON USUARIOS TO CLIENTE;
