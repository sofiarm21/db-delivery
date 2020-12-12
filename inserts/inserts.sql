--PROVEEDORES--

CREATE DIRECTORY IMAGEN_DIR AS 'C:\imagen\ ';
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (1,empty_blob(), datos_empresa(datos_empresa.validarRif('J-12345678'), 'Yummy'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'yummy.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (2,empty_blob(), datos_empresa(datos_empresa.validarRif('J-00222854'), 'Pidelo'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'pidelo.jpeg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (3,empty_blob(), datos_empresa(datos_empresa.validarRif('J-12345678'), 'Livery'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'liveri.jpeg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (4,empty_blob(), datos_empresa(datos_empresa.validarRif('J-41260989-0'), 'Ubigoo'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'ubigo.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (5,empty_blob(), datos_empresa(datos_empresa.validarRif('J-45397627'), 'Traetelo'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'traetelo.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (6,empty_blob(), datos_empresa(datos_empresa.validarRif('J-83751730'), 'Raudo'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'raudo.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (7,empty_blob(), datos_empresa(datos_empresa.validarRif('J-90118633'), 'PedidosYa'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'pedidosya.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (8,empty_blob(), datos_empresa(datos_empresa.validarRif('J-73028193'), 'PaHoy Caracas'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'pahoy.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
    f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (9,empty_blob(), datos_empresa(datos_empresa.validarRif('J-273849203'), 'KePido Venezuela'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
    dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'kepido.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (10,empty_blob(), datos_empresa(datos_empresa.validarRif('J-93029918'), 'Dingo'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'dingo.jpeg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (11,empty_blob(), datos_empresa(datos_empresa.validarRif('J-27493016'), 'Chamo Express'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'chamo.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (12,empty_blob(), datos_empresa(datos_empresa.validarRif('J-23479921'), 'Lalo Delivery'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'lalo.jpg';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (13,empty_blob(), datos_empresa(datos_empresa.validarRif('J-38119211'), 'Detodito'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'detodito.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (14,empty_blob(), datos_empresa(datos_empresa.validarRif('J-23492212'), 'Foodishoy'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'foodishoy.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO proveedores (id,LOGO, datos_empresa) VALUES (15,empty_blob(), datos_empresa(datos_empresa.validarRif('J-84346723'), 'Sivapp'))
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'sivapp.png';
BEGIN
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
END;
/


--EMPRESAS-ALIADAS--

CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (1,empty_blob(),datos_empresa(datos_empresa.validarRif('J-29685202‑2'), 'Mcdonalds'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'mcdonalds.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (2,empty_blob(),datos_empresa(datos_empresa.validarRif('J-31249713-0'), 'Burger King'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'burgerking.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (3,empty_blob(),datos_empresa(datos_empresa.validarRif('J-32456321-5'), 'KFC'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'kfc.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (4,empty_blob(),datos_empresa(datos_empresa.validarRif('J-23412312-3'), 'Los Costilla'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'loscostilla.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (5,empty_blob(),datos_empresa(datos_empresa.validarRif('J-82947348-7'), 'POKE212'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'poke212.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (6,empty_blob(),datos_empresa(datos_empresa.validarRif('J-846273846-8'), 'Burguer Lord'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'burgerlord.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (7,empty_blob(),datos_empresa(datos_empresa.validarRif('J-84930291-3'), 'BurgerShack'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'burgershack.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (8,empty_blob(),datos_empresa(datos_empresa.validarRif('J-23784937-4'), 'Pizpa'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'pizpa.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (9,empty_blob(),datos_empresa(datos_empresa.validarRif('J-23184950-3'), 'Fridays'),'alimentación')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'fridays.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (10,empty_blob(),datos_empresa(datos_empresa.validarRif('J-83019823-5'), 'Farmatodo'),'salud')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'farmatodo.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (11,empty_blob(),datos_empresa(datos_empresa.validarRif('J-34381930-5'), 'Farmarket'),'salud')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'farmarket.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (12,empty_blob(),datos_empresa(datos_empresa.validarRif('J-48293845-1'), 'Farmahorro'),'salud')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'farmahorro.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (13,empty_blob(),datos_empresa(datos_empresa.validarRif('J-74837641-2'), 'Movistar'),'tecnologia')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'movistar.png';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (14,empty_blob(),datos_empresa(datos_empresa.validarRif('J-94812699-5'), 'Compumall'),'tecnologia')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'compumall.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or REPLACE PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO empresas_aliadas (id,logo,datos_empresa,sector) VALUES (15,empty_blob(),datos_empresa(datos_empresa.validarRif('J-1736491832-6'), 'TecniCiencia Libros'),'otros')
   RETURNING LOGO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'tecniciencia.jpg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/

--USUARIOS--

CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (27321641, 'Sofia', 'Rodriguez', 'sofiar@gmail.com', '0424-1740138', TO_DATE('03-01-2020', 'DD-MM-YYYY'),'Margarita','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (27564921, 'Gabriel', 'Tagliafico', 'gabot@gmail.com', '0424-8493783', TO_DATE('03-01-2020', 'DD-MM-YYYY'),'Alejandro','Hernandez',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (27985940, 'Carlos', 'Sanchez', 'carlos@gmail.com', '0424-4763829', TO_DATE('07-01-2020', 'DD-MM-YYYY'),'Felix','Rojas',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (28849301, 'Cesar', 'Guzman', 'cesarg@gmail.com', '0424-8392873', TO_DATE('07-01-2020', 'DD-MM-YYYY'),'Augusto','Garrido',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (18473928, 'Benito', 'Martinez', 'carolinag@gmail.com', '0424-2839123', TO_DATE('07-01-2020', 'DD-MM-YYYY'),'Antonio','Ocacio',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (20384957, 'Marco', 'Masis', 'marcom@gmail.com', '0424-8391745', TO_DATE('07-01-2020', 'DD-MM-YYYY'),'','',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (19361222, 'Jose', 'Osorio', 'joseo@gmail.com', '0424-8491286', TO_DATE('12-01-2020', 'DD-MM-YYYY'),'Margarito','',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (22485121, 'Vladimir', 'Padrino', 'carlosm@gmail.com', '0424-4950394', TO_DATE('12-01-2020', 'DD-MM-YYYY'),'Lopez','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (18374839, 'Justin', 'Quiles', 'justinq@gmail.com', '0424-3749583', TO_DATE('15-01-2020', 'DD-MM-YYYY'),'','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (20493812, 'Sebastian', 'Gonzalez', 'pedrod@gmail.com', '0424-2839403', TO_DATE('22-01-2020', 'DD-MM-YYYY'),'Alejandro','',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (17473829, 'Michael', 'Torres', 'michaelt@gmail.com', '0424-1832900', TO_DATE('22-01-2020', 'DD-MM-YYYY'),'','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (19387392, 'Rebecca', 'Gomez', 'rebeccag@gmail.com', '0424-3849332', TO_DATE('22-01-2020', 'DD-MM-YYYY'),'','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (21849921, 'Andrea', 'Parima', 'nataliag@gmail.com', '0424-3848829', TO_DATE('02-02-2020', 'DD-MM-YYYY'),'Alexandra','Tagliafico',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (20174854, 'Rosalia', 'Tobella', 'rosaliat@gmail.com', '0424-38493045', TO_DATE('10-02-2020', 'DD-MM-YYYY'),'','Morales',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/
CREATE or replace PROCEDURE agregaImagen
   (directorio IN varchar2, archivoImagen IN varchar2) as
   f_lob bfile;
   b_lob blob;
BEGIN
   f_lob := bfilename(directorio, archivoImagen);
   INSERT INTO usuarios (cedula, primer_nombre, primer_apellido, email, telefono, fecha_registro, SEGUNDO_NOMBRE, SEGUNDO_APELLIDO, FOTO) VALUES (27384930, 'Marla', 'Delvic', 'larissam@gmail.com', '0424-3849301', TO_DATE('11-02-2020', 'DD-MM-YYYY'),'','',empty_blob())
   RETURNING FOTO into b_lob;
   dbms_lob.fileopen(f_lob,dbms_lob.file_readonly);
   dbms_lob.loadfromfile(b_lob, f_lob, dbms_lob.getlength(f_lob));
   dbms_lob.fileclose(f_lob);
   commit;
END;
/
declare
	DIRECTORIO VARCHAR2(4000) := 'IMAGEN_DIR';
	ARCHIVOIMAGEN VARCHAR2(4000) := 'usuariopred.jpeg';
begin
	AGREGAIMAGEN(
		DIRECTORIO => DIRECTORIO,
		ARCHIVOIMAGEN => ARCHIVOIMAGEN
	);
end;
/

---ACUERDOS-SERVICIO---

INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (1, 1, 200, 'mensual', 400, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 20);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (2, 1, 2600, 'anual', 4800, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 25);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (3, 2, 240, 'mensual', 420, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 15);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (4, 2, 100, 'semanal', 150, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 10);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (5, 3, 150, 'mensual', 380, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 15);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (6, 3, 50, 'diario', 100, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 15);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (7, 4, 150, 'mensual', 350, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 20);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (8, 5, 200, 'mensual', 380, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (9, 6, 250, 'mensual', 600, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('31/12/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (10, 7, 300, 'mensual', 1000, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('15/05/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (11, 8, 280, 'mensual', 800, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('15/05/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (12, 9, 180, 'mensual', 450, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('15/05/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (13, 10, 150, 'mensual', 250, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('15/05/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (14, 11, 220, 'mensual', 440, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('15/05/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (15, 12, 250, 'mensual', 500, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('15/08/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (16, 13, 350, 'mensual', 700, 1, rango_fecha(TO_DATE('01/06/2020', 'DD-MM-YYYY'), TO_DATE('15/08/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (17, 14, 300, 'mensual', 700, 1, rango_fecha(TO_DATE('01/07/2020', 'DD-MM-YYYY'), TO_DATE('15/08/2021', 'DD-MM-YYYY')), 0);
INSERT INTO  acuerdos_servicios (id, id_proveedor, n_envios, ocurrencia, precio, activo, rango_fecha, descuento_renovado) VALUES (18, 15, 280, 'mensual', 700, 1, rango_fecha(TO_DATE('01/08/2020', 'DD-MM-YYYY'), TO_DATE('15/08/2021', 'DD-MM-YYYY')), 0);


---LUGARES---

INSERT INTO lugares VALUES (1, null, 'Miranda', 'estado');
INSERT INTO lugares VALUES (2, null, 'Dtto. Capital', 'estado');
INSERT INTO lugares VALUES (3, null, 'Vargas', 'estado');
INSERT INTO lugares VALUES (4, null, 'Anzoategui', 'estado');

INSERT INTO lugares VALUES (5, 1, 'El Hatillo', 'municipio');
INSERT INTO lugares VALUES (6, 1, 'Baruta', 'municipio');
INSERT INTO lugares VALUES (7, 2, 'Libertador', 'municipio');
INSERT INTO lugares VALUES (8, 2, 'Chacao', 'municipio');
INSERT INTO lugares VALUES (9, 3, 'Vargas', 'municipio');
INSERT INTO lugares VALUES (10, 4, 'Barcelona', 'municipio');

INSERT INTO lugares VALUES (11, 5, 'La Lagunita', 'zona');
INSERT INTO lugares VALUES (12, 5, 'El Hatillo', 'zona');
INSERT INTO lugares VALUES (13, 5, 'Alto Hatillo', 'zona');
INSERT INTO lugares VALUES (14, 6, 'Las Mercedes', 'zona');
INSERT INTO lugares VALUES (15, 6, 'Prados del Este', 'zona');
INSERT INTO lugares VALUES (16, 6, 'Santa Fe', 'zona');
INSERT INTO lugares VALUES (17, 6, 'Valle Arriba', 'zona');
INSERT INTO lugares VALUES (18, 6, 'Santa Rosa', 'zona');
INSERT INTO lugares VALUES (19, 6, 'Club Hipico', 'zona');
INSERT INTO lugares VALUES (20, 6, 'La Trinidad', 'zona');
INSERT INTO lugares VALUES (21, 6, 'Piedra Azul', 'zona');
INSERT INTO lugares VALUES (22, 7, 'El Valle', 'zona');
INSERT INTO lugares VALUES (23, 7, 'Antimano', 'zona');
INSERT INTO lugares VALUES (24, 8, 'Altamira', 'zona');
INSERT INTO lugares VALUES (25, 8, 'Chacao', 'zona');
INSERT INTO lugares VALUES (26, 8, 'Country', 'zona');
INSERT INTO lugares VALUES (27, 8, 'La Castellana', 'zona');
INSERT INTO lugares VALUES (28, 8, 'Los Palos Grandes', 'zona');
INSERT INTO lugares VALUES (29, 8, 'El Rosal', 'zona');
INSERT INTO lugares VALUES (30, 8, 'La Floresta', 'zona');
INSERT INTO lugares VALUES (31, 8, 'Bello Campo', 'zona');
INSERT INTO lugares VALUES (32, 8, 'Chuao', 'zona');
INSERT INTO lugares VALUES (33, 9, 'La Guaira', 'zona');
INSERT INTO lugares VALUES (34, 10, 'Lecherias', 'zona');

--CONTRATOS---

INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (1,1,2,1,rango_fecha(TO_DATE('01/09/2020', 'DD-MM-YYYY'),TO_DATE('01/03/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (2,1,3,1,rango_fecha(TO_DATE('12/08/2020', 'DD-MM-YYYY'),null));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (3,1,4,2,rango_fecha(TO_DATE('15/08/2020', 'DD-MM-YYYY'),TO_DATE('15/02/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (4,2,5,3,rango_fecha(TO_DATE('15/09/2020', 'DD-MM-YYYY'),TO_DATE('15/12/2020','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (5,2,6,3,rango_fecha(TO_DATE('21/10/2020', 'DD-MM-YYYY'),TO_DATE('21/01/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (6,2,7,4,rango_fecha(TO_DATE('12/11/2020', 'DD-MM-YYYY'),TO_DATE('12/03/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (7,3,8,5,rango_fecha(TO_DATE('12/11/2020', 'DD-MM-YYYY'),TO_DATE('12/01/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (8,3,9,5,rango_fecha(TO_DATE('18/08/2020', 'DD-MM-YYYY'),null));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (9,3,10,6,rango_fecha(TO_DATE('18/09/2020', 'DD-MM-YYYY'),TO_DATE('18/12/2020','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (10,4,11,7,rango_fecha(TO_DATE('18/10/2020', 'DD-MM-YYYY'),TO_DATE('18/02/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (11,5,12,8,rango_fecha(TO_DATE('18/11/2020', 'DD-MM-YYYY'),TO_DATE('18/03/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (12,6,13,9,rango_fecha(TO_DATE('18/08/2020', 'DD-MM-YYYY'),TO_DATE('18/01/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (13,7,14,10,rango_fecha(TO_DATE('20/09/2020', 'DD-MM-YYYY'),TO_DATE('20/05/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (14,8,15,11,rango_fecha(TO_DATE('20/10/2020', 'DD-MM-YYYY'),TO_DATE('20/02/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (15,9,1,12,rango_fecha(TO_DATE('20/11/2020', 'DD-MM-YYYY'),TO_DATE('20/03/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (16,10,2,13,rango_fecha(TO_DATE('20/09/2020', 'DD-MM-YYYY'),TO_DATE('20/01/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (17,11,3,14,rango_fecha(TO_DATE('01/09/2020', 'DD-MM-YYYY'),TO_DATE('07/01/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (18,12,4,15,rango_fecha(TO_DATE('01/10/2020', 'DD-MM-YYYY'),TO_DATE('01/02/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (19,13,5,16,rango_fecha(TO_DATE('01/11/2020', 'DD-MM-YYYY'),TO_DATE('01/02/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (20,14,6,17,rango_fecha(TO_DATE('01/11/2020', 'DD-MM-YYYY'),TO_DATE('01/03/2021','DD-MM-YYYY')));
INSERT INTO contratos (id,id_proveedor,id_empresa_aliada,id_acuerdo_servicio,rango_fecha) VALUES (21,15,7,18,rango_fecha(TO_DATE('01/09/2020', 'DD-MM-YYYY'),TO_DATE('20/12/2020','DD-MM-YYYY')));

--DET-CONTRATO---

INSERT INTO det_contratos VALUES(1,1);
INSERT INTO det_contratos VALUES(1,3);
INSERT INTO det_contratos VALUES(2,2);
INSERT INTO det_contratos VALUES(3,1);
INSERT INTO det_contratos VALUES(4,2);
INSERT INTO det_contratos VALUES(5,1);
INSERT INTO det_contratos VALUES(6,2);
INSERT INTO det_contratos VALUES(7,1);
INSERT INTO det_contratos VALUES(7,2);
INSERT INTO det_contratos VALUES(8,2);
INSERT INTO det_contratos VALUES(9,1);
INSERT INTO det_contratos VALUES(10,2);
INSERT INTO det_contratos VALUES(11,1);
INSERT INTO det_contratos VALUES(12,4);
INSERT INTO det_contratos VALUES(13,2);
INSERT INTO det_contratos VALUES(14,1);
INSERT INTO det_contratos VALUES(15,2);
INSERT INTO det_contratos VALUES(16,1);
INSERT INTO det_contratos VALUES(17,2);
INSERT INTO det_contratos VALUES(18,1);
INSERT INTO det_contratos VALUES(19,2);
INSERT INTO det_contratos VALUES(20,1);
INSERT INTO det_contratos VALUES(21,2);

--SUCURSALES--

INSERT INTO sucursales VALUES(1,1,11,ubicacion(10.423902,-66.811108));
INSERT INTO sucursales VALUES(2,2,32,ubicacion(10.482761, -66.846742));
INSERT INTO sucursales VALUES(3,3,13,ubicacion(10.428533, -66.825403));
INSERT INTO sucursales VALUES(4,4,31,ubicacion(10.492051, -66.851569));
INSERT INTO sucursales VALUES(5,5,15,ubicacion(10.451983, -66.876483));
INSERT INTO sucursales VALUES(6,6,30,ubicacion(10.495111, -66.845604));
INSERT INTO sucursales VALUES(7,7,17,ubicacion(10.472979, -66.864316));
INSERT INTO sucursales VALUES(8,8,29,ubicacion(10.488527, -66.865330));
INSERT INTO sucursales VALUES(9,9,19,ubicacion(10.446634, -66.871132));
INSERT INTO sucursales VALUES(10,10,28,ubicacion(10.501852, -66.843701));
INSERT INTO sucursales VALUES(11,11,21,ubicacion(10.429362, -66.874166));
INSERT INTO sucursales VALUES(12,12,27,ubicacion(10.497639, -66.851986));
INSERT INTO sucursales VALUES(13,13,23,ubicacion(10.461577, -66.985756));
INSERT INTO sucursales VALUES(14,14,26,ubicacion(10.508204, -66.865682));
INSERT INTO sucursales VALUES(15,15,25,ubicacion(10.493102, -66.854564));
INSERT INTO sucursales VALUES(16,2,33,ubicacion(10.601182, -66.928437));
INSERT INTO sucursales VALUES(17,2,33,ubicacion(10.599775, -66.934122));
INSERT INTO sucursales VALUES(18,13,34,ubicacion(10.200539, -64.692511));

--PRODDUCTOS--

INSERT INTO productos VALUES (1,1,'Hamburguesa doble', 10, 'alimentación');
INSERT INTO productos VALUES (2,1,'Cajita feliz', 8, 'alimentación');
INSERT INTO productos VALUES (3,1,'McFlurry', 4, 'alimentación');
INSERT INTO productos VALUES (4,1,'Ensalada Cesar', 6, 'alimentación');
INSERT INTO productos VALUES (5,1,'Coca-Cola', 2, 'alimentación');
INSERT INTO productos VALUES (6,2,'Hamburguesa', 8, 'alimentación');
INSERT INTO productos VALUES (7,2,'Nuggets', 8, 'alimentación');
INSERT INTO productos VALUES (8,2,'Helado de chocolate', 3, 'alimentación');
INSERT INTO productos VALUES (9,2,'Papas fritas', 5, 'alimentación');
INSERT INTO productos VALUES (10,2,'Chinotto', 2, 'alimentación');
INSERT INTO productos VALUES (11,3,'Pollo frito 8 Pz.', 12, 'alimentación');
INSERT INTO productos VALUES (12,3,'Pollo frito 4 Pz.', 9, 'alimentación');
INSERT INTO productos VALUES (13,3,'Ensalada de repollo', 6, 'alimentación');
INSERT INTO productos VALUES (14,3,'Palitos de Yuca', 8, 'alimentación');
INSERT INTO productos VALUES (15,3,'Pollo a la brasa', 20, 'alimentación');
INSERT INTO productos VALUES (16,4,'Sanwich de Pernil', 12, 'alimentación');
INSERT INTO productos VALUES (17,4,'Costillas', 20, 'alimentación');
INSERT INTO productos VALUES (18,4,'Sanwdich de helado', 5, 'alimentación');
INSERT INTO productos VALUES (19,4,'Pernil', 30, 'alimentación');
INSERT INTO productos VALUES (20,5,'Poke 24 oz.', 24, 'alimentación');
INSERT INTO productos VALUES (21,5,'Poke 12 oz.', 16, 'alimentación');
INSERT INTO productos VALUES (22,5,'Ensalada de algas', 12, 'alimentación');
INSERT INTO productos VALUES (23,6,'Hamburguesa de queso', 12, 'alimentación');
INSERT INTO productos VALUES (24,7,'Hamburguesa shack', 12, 'alimentación');
INSERT INTO productos VALUES (25,8,'Pizza 4 estaciones', 14, 'alimentación');
INSERT INTO productos VALUES (26,8,'Pizza margarita', 10, 'alimentación');
INSERT INTO productos VALUES (27,8,'Pizza con piña', 10, 'alimentación');
INSERT INTO productos VALUES (28,8,'Pizza peperoni', 12, 'alimentación');
INSERT INTO productos VALUES (29,8,'Batido', 12, 'alimentación');
INSERT INTO productos VALUES (30,9,'Combo hamburguesa y papas', 18, 'alimentación');
INSERT INTO productos VALUES (31,9,'Volcán de chocolate', 12, 'alimentación');
INSERT INTO productos VALUES (32,10,'Paracetamol 0.25', 5, 'salud');
INSERT INTO productos VALUES (33,10,'Paleta de sombreas', 12, 'otros');
INSERT INTO productos VALUES (34,10,'Pañales', 8, 'otros');
INSERT INTO productos VALUES (35,10,'Anglodipina', 16, 'salud');
INSERT INTO productos VALUES (36,10,'Flips', 6, 'alimentación');
INSERT INTO productos VALUES (37,11,'Pedialite', 8, 'salud');
INSERT INTO productos VALUES (38,11,'Vitamina C', 18, 'salud');
INSERT INTO productos VALUES (39,11,'Vitamina D', 12, 'salud');
INSERT INTO productos VALUES (40,11,'Paracetamol 0.5', 10, 'salud');
INSERT INTO productos VALUES (41,12,'Vitamina A', 12, 'salud');
INSERT INTO productos VALUES (42,12,'Gotas para los ojos', 11, 'salud');
INSERT INTO productos VALUES (43,13,'Nanochip', 12, 'tecnologia');
INSERT INTO productos VALUES (44,13,'Case iPhone', 18, 'tecnologia');
INSERT INTO productos VALUES (45,14,'Impresora HP', 80, 'tecnologia');
INSERT INTO productos VALUES (46,14,'Monitor 12p.', 60, 'tecnologia');
INSERT INTO productos VALUES (47,14,'Laptop Dell', 320, 'tecnologia');
INSERT INTO productos VALUES (48,14,'Monitor 24p.', 280, 'tecnologia');
INSERT INTO productos VALUES (49,15,'Cuaderno 100 h.', 16, 'otros');
INSERT INTO productos VALUES (50,15,'Agenda 2021', 12, 'otros');
INSERT INTO productos VALUES (5510,15,'Libro X', 20, 'otros');
INSERT INTO productos VALUES (52,15,'Cuaderno multimateria', 25, 'otros');
INSERT INTO productos VALUES (53,15,'Boligrafo', 4, 'otros');

--DIRECCIONES--

INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (1, 27321641, 31, 'Cll. Roraima', 'Frente al parque', ubicacion(10.479469, -66.843685));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (2, 27564921, 29, 'A. Jose Felix', 'Cerca del automotriz', ubicacion(10.493198, -66.850868));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (3, 27985940, 27, 'Transversal 4', 'Frente a clinica El Avila', ubicacion(10.509124, -66.858602));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (4, 20174854, 24, 'Av. 12', 'Al lado de la embajada', ubicacion(10.506187, -66.846125));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (5, 28849301, 22, 'Cll. Cajigal', 'edf romero', ubicacion(10.467436, -66.905458));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (6, 18473928, 20, 'Cll. Araure', 'Haciend La Trinidad', ubicacion(10.437297, -66.872288));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (7, 20384957, 18, 'Cll. B', 'CC. Santa Rosa', ubicacion(10.468922, -66.857842));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (8, 19361222, 16, 'Av. Vargas','Frente a Matosuplidores', ubicacion(10.468490, -66.878245));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (9, 22485121, 14, 'Cll. Otaima', 'Frente al Tolón', ubicacion(10.477710, -66.861111));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (10, 18374839, 12, 'Cll. D', 'Pueblo el Hatillo', ubicacion(10.421293, -66.826876));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (11,20493812, 11, 'Cll. B-10', 'Al lado de Quinta Ana', ubicacion(10.421841, -66.818207));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (12, 19387392, 13, 'Cll. A-8', 'Frente al parque ', ubicacion(10.430979, -66.819924));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (13, 17473829, 15, 'Cll. Amazonas', 'Cruzando en el semaforo', ubicacion(10.447947, -66.882405));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (14, 20174854, 17, 'Cll. Kemel', 'Frente al edf Venezuela', ubicacion(10.477315, -66.865754));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (15, 27384930, 25, 'Cll. Sucre', 'Frente al parque', ubicacion(10.493904, -66.856742));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (16, 20384957, 33, 'Cll. A rás', 'Comp. Guipuzcuana', ubicacion(10.601377, -66.927439));
INSERT INTO direcciones (id, id_usuario, id_lugar, calle, lugar_referencia, ubicacion_exacta) VALUES (17, 21849921, 34, 'Carrera 6', 'Al lado del edf Rita beach', ubicacion(10.199003, -64.691363));

--SEDES---

INSERT INTO sedes VALUES (1,1,ubicacion(10.503538, -66.846739));
INSERT INTO sedes VALUES (2,1,ubicacion(10.490458, -66.956283));
INSERT INTO sedes VALUES (3,2,ubicacion(10.457027, -66.854422));
INSERT INTO sedes VALUES (4,2,ubicacion(10.426997, -66.826984));
INSERT INTO sedes VALUES (5,3,ubicacion(10.503675, -66.849400));
INSERT INTO sedes VALUES (6,3,ubicacion(10.488059, -66.947670));
INSERT INTO sedes VALUES (7,4,ubicacion(10.425298, -66.825772));
INSERT INTO sedes VALUES (8,4,ubicacion(10.486287, -66.950985));
INSERT INTO sedes VALUES (9,5,ubicacion(10.483048, -66.945782));
INSERT INTO sedes VALUES (10,5,ubicacion(10.426650, -66.827297));
INSERT INTO sedes VALUES (11,6,ubicacion(10.157036, -64.671956));
INSERT INTO sedes VALUES (12,7,ubicacion(10.506797, -66.847115));
INSERT INTO sedes VALUES (13,7,ubicacion(10.422545, -66.825763));
INSERT INTO sedes VALUES (14,8,ubicacion(10.507219, -66.849947));
INSERT INTO sedes VALUES (15,8,ubicacion(10.487282, -66.941278));
INSERT INTO sedes VALUES (16,9,ubicacion(10.424645, -66.826428));
INSERT INTO sedes VALUES (17,9,ubicacion(10.485330, -66.948123));
INSERT INTO sedes VALUES (18,10,ubicacion(10.480642, -66.873351));
INSERT INTO sedes VALUES (19,10,ubicacion(10.507926, -66.843864));
INSERT INTO sedes VALUES (20,11,ubicacion(10.465259, -66.865968));
INSERT INTO sedes VALUES (21,11,ubicacion(10.474766, -66.952595));
INSERT INTO sedes VALUES (22,12,ubicacion(10.464594, -66.871371));
INSERT INTO sedes VALUES (23,12,ubicacion(10.421290, -66.827050));
INSERT INTO sedes VALUES (24,13,ubicacion(10.506400, -66.840087));
INSERT INTO sedes VALUES (25,13,ubicacion(10.445603, -66.869858));
INSERT INTO sedes VALUES (26,14,ubicacion(10.483263, -66.940782));
INSERT INTO sedes VALUES (27,14,ubicacion(10.451846, -66.878925));
INSERT INTO sedes VALUES (28,15,ubicacion(10.502402, -66.854701));
INSERT INTO sedes VALUES (29,15,ubicacion(10.422029, -66.824593));

--S-L--

--sl_yummy
INSERT INTO s_l VALUES (1, 8, 1);
INSERT INTO s_l VALUES (1, 6, 0);
INSERT INTO s_l VALUES (1, 5, 0);
INSERT INTO s_l VALUES (2, 7, 1);
INSERT INTO s_l VALUES (2, 33, 0);
--sl_Pidelo
INSERT INTO s_l VALUES (3, 8, 0);
INSERT INTO s_l VALUES (3, 6, 1);
INSERT INTO s_l VALUES (4, 5, 1);
INSERT INTO s_l VALUES (4, 7, 0);
--sl_Livery
INSERT INTO s_l VALUES (5, 8, 1);
INSERT INTO s_l VALUES (5, 6, 0);
INSERT INTO s_l VALUES (5, 5, 0);
INSERT INTO s_l VALUES (6, 7, 1);
--sl_ubigoo
INSERT INTO s_l VALUES (7, 8, 0);
INSERT INTO s_l VALUES (7, 6, 0);
INSERT INTO s_l VALUES (7, 5, 1);
INSERT INTO s_l VALUES (8, 7, 1);
--sl_traetelo
INSERT INTO s_l VALUES (9, 8, 0);
INSERT INTO s_l VALUES (9, 6, 0);
INSERT INTO s_l VALUES (9, 7, 1);
INSERT INTO s_l VALUES (10, 5, 1);
--sl_Raudo
INSERT INTO s_l VALUES (11, 10, 1);
--sl_PedidosYa
INSERT INTO s_l VALUES (12, 8, 1);
INSERT INTO s_l VALUES (12, 6, 0);
INSERT INTO s_l VALUES (12, 7, 0);
INSERT INTO s_l VALUES (13, 5, 1);
--sl_PaHoy_Caracas
INSERT INTO s_l VALUES (14, 8, 1);
INSERT INTO s_l VALUES (14, 5, 0);
INSERT INTO s_l VALUES (15, 7, 1);
INSERT INTO s_l VALUES (15, 6, 0);
--KePido Venezuela
INSERT INTO s_l VALUES (16, 8, 0);
INSERT INTO s_l VALUES (16, 5, 1);
INSERT INTO s_l VALUES (17, 7, 1);
INSERT INTO s_l VALUES (17, 6, 0);
--Dingo
INSERT INTO s_l VALUES (18, 6, 1);
INSERT INTO s_l VALUES (18, 5, 0);
INSERT INTO s_l VALUES (19, 7, 0);
INSERT INTO s_l VALUES (19, 8, 1);
--Chamo Express
INSERT INTO s_l VALUES (20, 6, 1);
INSERT INTO s_l VALUES (20, 5, 0);
INSERT INTO s_l VALUES (21, 7, 1);
INSERT INTO s_l VALUES (21, 8, 0);
--Lalo_Delivery
INSERT INTO s_l VALUES (22, 6, 1);
INSERT INTO s_l VALUES (23, 5, 1);
INSERT INTO s_l VALUES (23, 7, 0);
INSERT INTO s_l VALUES (23, 8, 0);
--Detodito
INSERT INTO s_l VALUES (24, 8, 1);
INSERT INTO s_l VALUES (24, 5, 0);
INSERT INTO s_l VALUES (25, 7, 0);
INSERT INTO s_l VALUES (25, 6, 1);
--Foodishoy
INSERT INTO s_l VALUES (26, 7, 1);
INSERT INTO s_l VALUES (26, 5, 0);
INSERT INTO s_l VALUES (26, 8, 0);
INSERT INTO s_l VALUES (27, 6, 1);
--Sivapp
INSERT INTO s_l VALUES (28, 7, 0);
INSERT INTO s_l VALUES (28, 8, 1);
INSERT INTO s_l VALUES (29, 5, 1);
INSERT INTO s_l VALUES (29, 6, 0);


--TRANSPORTES--

INSERT INTO transportes VALUES (5, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (6, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (7, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (8, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (9, 1, 'moto', 'reparación');
INSERT INTO transportes VALUES (10, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (11, 1, 'moto', 'activo');
INSERT INTO transportes VALUES (12, 1, 'carro', 'reparación');
INSERT INTO transportes VALUES (13, 1, 'carro', 'activo');
INSERT INTO transportes VALUES (14, 1, 'carro', 'activo');
INSERT INTO transportes VALUES (15, 1, 'carro', 'reparación');
INSERT INTO transportes VALUES (16, 1, 'carro', 'activo');
INSERT INTO transportes VALUES (17, 1, 'camioneta', 'activo');

INSERT INTO transportes VALUES (18, 2, 'moto', 'activo');
INSERT INTO transportes VALUES (19, 2, 'moto', 'activo');
INSERT INTO transportes VALUES (20, 2, 'moto', 'activo');
INSERT INTO transportes VALUES (21, 2, 'moto', 'reparación');
INSERT INTO transportes VALUES (22, 2, 'moto', 'activo');

INSERT INTO transportes VALUES (23, 3, 'moto', 'activo');
INSERT INTO transportes VALUES (24, 3, 'moto', 'reparación');
INSERT INTO transportes VALUES (25, 3, 'moto', 'activo');
INSERT INTO transportes VALUES (26, 3, 'moto', 'reparación');
INSERT INTO transportes VALUES (27, 3, 'moto', 'reparación');
INSERT INTO transportes VALUES (28, 3, 'moto', 'activo');
INSERT INTO transportes VALUES (29, 3, 'carro', 'activo');
INSERT INTO transportes VALUES (30, 3, 'carro', 'activo');
INSERT INTO transportes VALUES (31, 3, 'carro', 'activo');
INSERT INTO transportes VALUES (32, 3, 'camioneta', 'activo');
INSERT INTO transportes VALUES (33, 3, 'camioneta', 'activo');
INSERT INTO transportes VALUES (34, 3, 'camioneta', 'activo');

INSERT INTO transportes VALUES (35, 4, 'moto', 'activo');
INSERT INTO transportes VALUES (36, 4, 'moto', 'reparación');
INSERT INTO transportes VALUES (37, 4, 'moto', 'activo');

INSERT INTO transportes VALUES (38, 5, 'moto', 'reparación');
INSERT INTO transportes VALUES (39, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (40, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (41, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (42, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (43, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (44, 5, 'moto', 'reparación');
INSERT INTO transportes VALUES (45, 5, 'moto', 'activo');
INSERT INTO transportes VALUES (46, 5, 'carro', 'reparación');
INSERT INTO transportes VALUES (47, 5, 'carro', 'reparación');
INSERT INTO transportes VALUES (48, 5, 'carro', 'activo');
INSERT INTO transportes VALUES (49, 5, 'carro', 'activo');
INSERT INTO transportes VALUES (50, 5, 'camioneta', 'activo');

INSERT INTO transportes VALUES (51, 6, 'moto', 'activo');
INSERT INTO transportes VALUES (52, 6, 'moto', 'activo');
INSERT INTO transportes VALUES (53, 6, 'moto', 'activo');

INSERT INTO transportes VALUES (54, 7, 'moto', 'activo');
INSERT INTO transportes VALUES (55, 7, 'moto', 'activo');
INSERT INTO transportes VALUES (56, 7, 'moto', 'reparación');
INSERT INTO transportes VALUES (57, 7, 'moto', 'activo');
INSERT INTO transportes VALUES (58, 7, 'moto', 'activo');
INSERT INTO transportes VALUES (59, 7, 'moto', 'reparación');

INSERT INTO transportes VALUES (60, 8, 'moto', 'activo');
INSERT INTO transportes VALUES (61, 8, 'moto', 'activo');
INSERT INTO transportes VALUES (62, 8, 'moto', 'activo');

INSERT INTO transportes VALUES (63, 9, 'moto', 'activo');
INSERT INTO transportes VALUES (64, 9, 'moto', 'activo');
INSERT INTO transportes VALUES (65, 9, 'moto', 'activo');
INSERT INTO transportes VALUES (66, 9, 'moto', 'reparación');
INSERT INTO transportes VALUES (67, 9, 'moto', 'activo');
INSERT INTO transportes VALUES (68, 9, 'moto', 'activo');
INSERT INTO transportes VALUES (69, 9, 'carro', 'activo');
INSERT INTO transportes VALUES (70, 9, 'carro', 'activo');
INSERT INTO transportes VALUES (71, 9, 'carro', 'activo');
INSERT INTO transportes VALUES (72, 9, 'camioneta', 'activo');
INSERT INTO transportes VALUES (73, 9, 'camioneta', 'activo');
INSERT INTO transportes VALUES (74, 9, 'camioneta', 'activo');

INSERT INTO transportes VALUES (75, 10, 'moto', 'activo');
INSERT INTO transportes VALUES (76, 10, 'moto', 'activo');
INSERT INTO transportes VALUES (77, 10, 'moto', 'activo');

INSERT INTO transportes VALUES (78, 11, 'moto', 'activo');
INSERT INTO transportes VALUES (79, 11, 'moto', 'activo');
INSERT INTO transportes VALUES (80, 11, 'moto', 'activo');

INSERT INTO transportes VALUES (81, 12, 'moto', 'activo');
INSERT INTO transportes VALUES (82, 12, 'moto', 'activo');
INSERT INTO transportes VALUES (83, 12, 'moto', 'activo');
INSERT INTO transportes VALUES (84, 12, 'moto', 'reparación');
INSERT INTO transportes VALUES (85, 12, 'moto', 'activo');
INSERT INTO transportes VALUES (86, 12, 'carro', 'activo');
INSERT INTO transportes VALUES (87, 12, 'carro', 'activo');
INSERT INTO transportes VALUES (88, 12, 'carro', 'activo');
INSERT INTO transportes VALUES (89, 12, 'camioneta', 'reparación');
INSERT INTO transportes VALUES (90, 12, 'camioneta', 'activo');
INSERT INTO transportes VALUES (91, 12, 'camioneta', 'activo');

INSERT INTO transportes VALUES (92, 13, 'moto', 'activo');
INSERT INTO transportes VALUES (93, 13, 'moto', 'activo');
INSERT INTO transportes VALUES (94, 13, 'moto', 'activo');
INSERT INTO transportes VALUES (95, 13, 'moto', 'activo');

INSERT INTO transportes VALUES (96, 14, 'moto', 'activo');
INSERT INTO transportes VALUES (97, 14, 'moto', 'activo');
INSERT INTO transportes VALUES (98, 14, 'moto', 'activo');
INSERT INTO transportes VALUES (99, 14, 'moto', 'reparación');
INSERT INTO transportes VALUES (100, 14, 'moto', 'activo');
INSERT INTO transportes VALUES (101, 14, 'moto', 'activo');
INSERT INTO transportes VALUES (102, 14, 'carro', 'activo');
INSERT INTO transportes VALUES (103, 14, 'carro', 'activo');
INSERT INTO transportes VALUES (104, 14, 'carro', 'activo');

INSERT INTO transportes VALUES (105, 15, 'moto', 'activo');
INSERT INTO transportes VALUES (106, 15, 'moto', 'activo');
INSERT INTO transportes VALUES (107, 15, 'moto', 'activo');
INSERT INTO transportes VALUES (108, 15, 'moto', 'activo');
INSERT INTO transportes VALUES (109, 15, 'moto', 'activo');
INSERT INTO transportes VALUES (110, 15, 'moto', 'reparación');
INSERT INTO transportes VALUES (112, 15, 'carro', 'activo');
INSERT INTO transportes VALUES (113, 15, 'carro', 'activo');

INSERT INTO transportes VALUES (114, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (115, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (116, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (117, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (118, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (119, 16, 'moto', 'activo');
INSERT INTO transportes VALUES (120, 16, 'carro', 'activo');
INSERT INTO transportes VALUES (121, 16, 'carro', 'activo');
INSERT INTO transportes VALUES (122, 16, 'carro', 'reparación');

INSERT INTO transportes VALUES (123, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (124, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (125, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (126, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (127, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (128, 17, 'moto', 'activo');
INSERT INTO transportes VALUES (129, 17, 'carro', 'activo');

INSERT INTO transportes VALUES (130, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (131, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (132, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (133, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (134, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (135, 18, 'moto', 'activo');
INSERT INTO transportes VALUES (136, 18, 'camioneta', 'activo');

INSERT INTO transportes VALUES (137, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (138, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (139, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (140, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (141, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (142, 19, 'moto', 'activo');
INSERT INTO transportes VALUES (143, 19, 'camioneta', 'activo');

INSERT INTO transportes VALUES (144, 20, 'moto', 'activo');
INSERT INTO transportes VALUES (145, 20, 'moto', 'activo');
INSERT INTO transportes VALUES (146, 20, 'moto', 'reparación');
INSERT INTO transportes VALUES (147, 20, 'moto', 'activo');
INSERT INTO transportes VALUES (148, 20, 'moto', 'reparación');
INSERT INTO transportes VALUES (149, 20, 'moto', 'activo');
INSERT INTO transportes VALUES (150, 20, 'camioneta', 'activo');

INSERT INTO transportes VALUES (151, 21, 'moto', 'activo');
INSERT INTO transportes VALUES (152, 21, 'moto', 'activo');
INSERT INTO transportes VALUES (153, 21, 'moto', 'activo');
INSERT INTO transportes VALUES (154, 21, 'moto', 'activo');

INSERT INTO transportes VALUES (155, 22, 'moto', 'activo');
INSERT INTO transportes VALUES (156, 22, 'moto', 'activo');
INSERT INTO transportes VALUES (157, 22, 'moto', 'activo');

INSERT INTO transportes VALUES (158, 23, 'moto', 'activo');
INSERT INTO transportes VALUES (159, 23, 'moto', 'activo');
INSERT INTO transportes VALUES (160, 23, 'moto', 'activo');
INSERT INTO transportes VALUES (161, 23, 'moto', 'reparación');
INSERT INTO transportes VALUES (162, 23, 'moto', 'activo');
INSERT INTO transportes VALUES (163, 23, 'moto', 'activo');

INSERT INTO transportes VALUES (164, 24, 'moto', 'activo');
INSERT INTO transportes VALUES (165, 24, 'moto', 'activo');
INSERT INTO transportes VALUES (166, 24, 'moto', 'activo');
INSERT INTO transportes VALUES (167, 24, 'moto', 'activo');

INSERT INTO transportes VALUES (168, 25, 'moto', 'activo');
INSERT INTO transportes VALUES (169, 25, 'moto', 'activo');
INSERT INTO transportes VALUES (170, 25, 'moto', 'activo');
INSERT INTO transportes VALUES (171, 25, 'moto', 'activo');

INSERT INTO transportes VALUES (172, 26, 'moto', 'activo');
INSERT INTO transportes VALUES (173, 26, 'moto', 'activo');
INSERT INTO transportes VALUES (174, 26, 'moto', 'activo');
INSERT INTO transportes VALUES (175, 26, 'moto', 'activo');
INSERT INTO transportes VALUES (176, 26, 'moto', 'activo');
INSERT INTO transportes VALUES (177, 26, 'moto', 'activo');

INSERT INTO transportes VALUES (178, 27, 'moto', 'activo');
INSERT INTO transportes VALUES (179, 27, 'moto', 'activo');
INSERT INTO transportes VALUES (180, 27, 'moto', 'activo');

INSERT INTO transportes VALUES (181, 28, 'moto', 'activo');
INSERT INTO transportes VALUES (182, 28, 'moto', 'activo');
INSERT INTO transportes VALUES (183, 28, 'moto', 'reparación');
INSERT INTO transportes VALUES (184, 28, 'moto', 'activo');

INSERT INTO transportes VALUES (185, 29, 'moto', 'activo');
INSERT INTO transportes VALUES (186, 29, 'moto', 'activo');
INSERT INTO transportes VALUES (187, 29, 'moto', 'activo');
INSERT INTO transportes VALUES (188, 29, 'moto', 'activo');

--REGISTROS--

INSERT INTO registros values (27321641,1,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27321641,15,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27321641,7,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27564921,2,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27564921,3,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27564921,4,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27985940,3,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27985940,6,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27985940,5,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27985940,7,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (28849301,4,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (28849301,5,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (28849301,6,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (28849301,7,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (28849301,8,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18473928,5,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18473928,6,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18473928,7,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18473928,8,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18473928,9,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20384957,6,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20384957,7,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20384957,8,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20384957,9,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20384957,10,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19361222,7,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19361222,8,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19361222,9,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19361222,10,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19361222,11,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,8,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,9,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,10,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,11,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,13,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (22485121,12,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,9,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,10,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,11,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,12,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,13,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,14,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (18374839,15,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,10,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,11,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,12,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,13,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,14,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20493812,15,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (17473829,11,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (17473829,12,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (17473829,13,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (17473829,14,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (17473829,15,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,12,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,13,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,14,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,15,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,1,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (19387392,2,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,13,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,14,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,15,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,1,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,2,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (21849921,3,TO_DATE('21-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,14,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,15,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,1,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,2,TO_DATE('23-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,3,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (20174854,5,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,15,TO_DATE('22-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,1,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,2,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,3,TO_DATE('25-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,4,TO_DATE('24-11-2020','DD-MM-YYYY'));
INSERT INTO registros values (27384930,5,TO_DATE('22-11-2020','DD-MM-YYYY'));


--PEDIDOS---

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,1,1,RANGO_FECHA(TO_DATE('01-12-2020 11:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 13:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,1,1,RANGO_FECHA(TO_DATE('01-12-2020 11:25:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 13:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,1,4,RANGO_FECHA(TO_DATE('01-12-2020 11:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 14:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,1,17,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,1,1,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,2,2,RANGO_FECHA(TO_DATE('04-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 10:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,2,15,RANGO_FECHA(TO_DATE('04-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 10:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,2,14,RANGO_FECHA(TO_DATE('04-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,2,17,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,2,12,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,9,3,2,RANGO_FECHA(TO_DATE('02-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,8,3,15,RANGO_FECHA(TO_DATE('02-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,10,3,14,RANGO_FECHA(TO_DATE('02-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,9,3,17,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,8,3,3,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,11,4,2,RANGO_FECHA(TO_DATE('03-12-2020 15:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 17:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,11,4,15,RANGO_FECHA(TO_DATE('03-12-2020 15:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 17:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,11,4,5,RANGO_FECHA(TO_DATE('03-12-2020 15:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 18:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,11,4,15,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,11,4,2,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,12,5,3,RANGO_FECHA(TO_DATE('02-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,12,5,15,RANGO_FECHA(TO_DATE('02-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,12,5,4,RANGO_FECHA(TO_DATE('02-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',2);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,12,5,6,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,12,5,5,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,13,6,3,RANGO_FECHA(TO_DATE('02-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,13,6,7,RANGO_FECHA(TO_DATE('02-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 10:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,13,6,6,RANGO_FECHA(TO_DATE('02-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,13,6,16,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,13,6,5,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,14,7,1,RANGO_FECHA(TO_DATE('03-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 10:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',2);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,14,7,8,RANGO_FECHA(TO_DATE('03-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 10:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,14,7,7,RANGO_FECHA(TO_DATE('03-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,14,7,16,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,14,7,6,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,15,8,5,RANGO_FECHA(TO_DATE('01-12-2020 09:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,15,8,9,RANGO_FECHA(TO_DATE('01-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 11:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,15,8,8,RANGO_FECHA(TO_DATE('01-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 12:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,15,8,7,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,15,8,6,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,1,9,6,RANGO_FECHA(TO_DATE('03-12-2020 14:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 15:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,1,9,10,RANGO_FECHA(TO_DATE('03-12-2020 14:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 15:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,1,9,9,RANGO_FECHA(TO_DATE('03-12-2020 14:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 16:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,1,9,8,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,1,9,16,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,10,16,RANGO_FECHA(TO_DATE('05-12-2020 10:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,10,11,RANGO_FECHA(TO_DATE('05-12-2020 10:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',3);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,10,10,RANGO_FECHA(TO_DATE('05-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,10,9,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,2,10,8,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,11,8,RANGO_FECHA(TO_DATE('05-12-2020 10:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,11,13,RANGO_FECHA(TO_DATE('05-12-2020 10:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,11,11,RANGO_FECHA(TO_DATE('05-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',2);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,11,10,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,3,11,9,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,12,9,RANGO_FECHA(TO_DATE('05-12-2020 10:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,12,12,RANGO_FECHA(TO_DATE('05-12-2020 10:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,12,13,RANGO_FECHA(TO_DATE('05-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 11:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',4);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,12,11,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,4,12,10,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,13,9,RANGO_FECHA(TO_DATE('04-12-2020 10:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 12:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,13,17,RANGO_FECHA(TO_DATE('04-12-2020 10:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 12:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,13,12,RANGO_FECHA(TO_DATE('04-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 12:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,13,13,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,5,13,10,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,14,10,RANGO_FECHA(TO_DATE('01-12-2020 10:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 12:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,14,14,RANGO_FECHA(TO_DATE('01-12-2020 10:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 12:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,14,12,RANGO_FECHA(TO_DATE('01-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 12:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',5);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,14,17,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,6,14,4,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,15,1,RANGO_FECHA(TO_DATE('01-12-2020 13:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 14:00:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,15,14,RANGO_FECHA(TO_DATE('01-12-2020 13:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 14:30:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,15,12,RANGO_FECHA(TO_DATE('01-12-2020 13:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 14:40:10','DD-MM-YYYY HH24:mi:ss')),'recibido',1);
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,15,17,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');
INSERT INTO PEDIDOS(id,ID_SUCURSAL,ID_PROVEEDOR,ID_DIRECCION, FECHA_REALIZADO, STATUS, SATISFACCION) VALUES (SECUENCIA_PEDIDOS.nextval,7,15,15,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),''),'en curso','');

--TRACKING--

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,1,UBICACION(10.479469,-66.843685));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,2,UBICACION(10.479469,-66.843685));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,3,UBICACION(10.506187,-66.846125));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,4,UBICACION(10.482833,-66.850967));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,5,UBICACION(10.478614, -66.843678));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,6,UBICACION(10.493198,-66.850868));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,7,UBICACION(10.493904,-66.856742));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,8,UBICACION(10.477315,-66.865754));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,9,UBICACION(10.188783, -64.697122));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,10,UBICACION(10.423631, -66.811615));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,11,UBICACION(10.493198,-66.850868));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,12,UBICACION(10.493904,-66.856742));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,13,UBICACION(10.477315,-66.865754));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,14,UBICACION(10.193725, -64.692815));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,15,UBICACION(10.496435, -66.851311));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,16,UBICACION(10.493198,-66.850868));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,17,UBICACION(10.493904,-66.856742));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,18,UBICACION(10.467436,-66.905458));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,19,UBICACION(10.495598, -66.848595));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,20,UBICACION(10.500488, -66.849292));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,21,UBICACION(10.509124,-66.858602));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,22,UBICACION(10.493904,-66.856742));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,23,UBICACION(10.506187,-66.846125));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,24,UBICACION(10.438741, -66.875815));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,25,UBICACION(10.463635, -66.908516));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,26,UBICACION(10.509124,-66.858602));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,27,UBICACION(10.468922,-66.857842));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,28,UBICACION(10.437297,-66.872288));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,29,UBICACION(10.600638, -66.930834));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,30,UBICACION(10.462571, -66.907175));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,31,UBICACION(10.479469,-66.843685));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,32,UBICACION(10.46849,-66.878245));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,33,UBICACION(10.468922,-66.857842));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,34,UBICACION(10.599456, -66.927839));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,35,UBICACION(10.436340, -66.872484));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,36,UBICACION(10.467436,-66.905458));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,37,UBICACION(10.47771,-66.861111));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,38,UBICACION(10.46849,-66.878245));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,39,UBICACION(10.464991, -66.854506));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,40,UBICACION(10.434594, -66.868516));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,41,UBICACION(10.437297,-66.872288));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,42,UBICACION(10.421293,-66.826876));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,43,UBICACION(10.47771,-66.861111));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,44,UBICACION(10.464521, -66.863935));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,45,UBICACION(10.601813, -66.923331));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,46,UBICACION(10.601377,-66.927439));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,47,UBICACION(10.421841,-66.818207));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,48,UBICACION(10.421293,-66.826876));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,49,UBICACION(10.480150, -66.859583));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,50,UBICACION(10.467256, -66.872280));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,51,UBICACION(10.46849,-66.878245));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,52,UBICACION(10.447947,-66.882405));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,53,UBICACION(10.421841,-66.818207));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,54,UBICACION(10.421248, -66.825668));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,55,UBICACION(10.473065, -66.863028));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,56,UBICACION(10.47771,-66.861111));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,57,UBICACION(10.430979,-66.819924));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,58,UBICACION(10.447947,-66.882405));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,59,UBICACION(10.424449, -66.822643));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,60,UBICACION(10.422185, -66.824135));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,61,UBICACION(10.47771,-66.861111));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,62,UBICACION(10.199003,-64.691363));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,63,UBICACION(10.430979,-66.819924));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,64,UBICACION(10.444949, -66.886206));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,65,UBICACION(10.424696, -66.826423));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,66,UBICACION(10.421293,-66.826876));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,67,UBICACION(10.477315,-66.865754));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,68,UBICACION(10.430979,-66.819924));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,69,UBICACION(10.198722, -64.690263));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,70,UBICACION(10.510568, -66.845650));

INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,71,UBICACION(10.479469,-66.843685));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,72,UBICACION(10.477315,-66.865754));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,73,UBICACION(10.430979,-66.819924));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,74,UBICACION(10.200809, -64.686996));
INSERT INTO trackings(ID, ID_PEDIDO, UBICACION_EXACTA) VALUES (SECUENCIA_TRACKINGS.nextval,75,UBICACION(10.494277, -66.852467));


--LOTES--



INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,16,1,1,RANGO_FECHA(TO_DATE('01-12-2020 11:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 11:50:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,14,1,0,RANGO_FECHA(TO_DATE('06-12-2020 12:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:50:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,31,3,1,RANGO_FECHA(TO_DATE('04-12-2020 09:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 09:35:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,29,3,0,RANGO_FECHA(TO_DATE('06-12-2020 12:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:50:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,54,5,1,RANGO_FECHA(TO_DATE('02-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 09:40:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,49,5,0,RANGO_FECHA(TO_DATE('02-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:50:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,54,7,1,RANGO_FECHA(TO_DATE('03-12-2020 15:13:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 15:15:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,55,7,1,RANGO_FECHA(TO_DATE('03-12-2020 15:15:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 15:17:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,57,7,1,RANGO_FECHA(TO_DATE('03-12-2020 15:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 15:25:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,60,8,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,61,8,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,70,9,1,RANGO_FECHA(TO_DATE('02-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 09:40:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,71,9,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,77,11,1,RANGO_FECHA(TO_DATE('02-12-2020 09:25:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 09:27:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,78,11,1,RANGO_FECHA(TO_DATE('02-12-2020 09:25:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 09:29:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,79,11,1,RANGO_FECHA(TO_DATE('02-12-2020 09:25:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('02-12-2020 09:30:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,77,11,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,78,11,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,88,12,1,RANGO_FECHA(TO_DATE('03-12-2020 09:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 09:40:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,87,12,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,102,14,1,RANGO_FECHA(TO_DATE('01-12-2020 11:50:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 12:10:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,103,14,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,120,16,1,RANGO_FECHA(TO_DATE('03-12-2020 14:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('03-12-2020 14:40:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,121,16,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,136,18,1,RANGO_FECHA(TO_DATE('05-12-2020 10:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 10:50:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,136,18,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,150,20,1,RANGO_FECHA(TO_DATE('05-12-2020 10:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 10:50:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,150,20,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,155,22,1,RANGO_FECHA(TO_DATE('05-12-2020 10:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 10:32:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,156,22,1,RANGO_FECHA(TO_DATE('05-12-2020 10:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 10:33:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,157,22,1,RANGO_FECHA(TO_DATE('05-12-2020 10:30:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('05-12-2020 10:31:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,155,22,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,156,22,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,164,24,1,RANGO_FECHA(TO_DATE('04-12-2020 10:22:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 10:24:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,165,24,1,RANGO_FECHA(TO_DATE('04-12-2020 10:22:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 10:25:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,166,24,1,RANGO_FECHA(TO_DATE('04-12-2020 10:22:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('04-12-2020 10:23:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,167,24,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,166,24,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,178,27,1,RANGO_FECHA(TO_DATE('01-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 10:22:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,179,27,1,RANGO_FECHA(TO_DATE('01-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 10:23:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,180,27,1,RANGO_FECHA(TO_DATE('01-12-2020 10:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 10:30:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,176,26,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,177,26,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,185,29,1,RANGO_FECHA(TO_DATE('01-12-2020 13:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 13:21:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,186,29,1,RANGO_FECHA(TO_DATE('01-12-2020 13:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 13:21:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,187,29,1,RANGO_FECHA(TO_DATE('01-12-2020 13:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('01-12-2020 13:22:10','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,181,28,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));
INSERT INTO lotes (ID, ID_TRANSPORTE, ID_SEDE, ENTREGADO, FECHA_CREACION) VALUES (SECUENCIA_LOTES.nextval,182,28,0,RANGO_FECHA(TO_DATE('06-12-2020 12:20:00','DD-MM-YYYY HH24:MI:SS'),TO_DATE('06-12-2020 12:40:00','DD-MM-YYYY HH24:MI:SS')));

----L_P---

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,1,1,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,1,2,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,1,3,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,2,4,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,2,5,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,3,6,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,3,7,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,3,8,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,4,9,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,4,10,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,5,11,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,5,12,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,5,13,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,6,14,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,6,15,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,7,16,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,8,17,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,9,18,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,10,19,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,11,20,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,12,21,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,12,22,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,12,23,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,13,24,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,13,25,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,14,26,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,15,27,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,16,28,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,17,29,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,18,30,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,19,31,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,19,32,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,19,33,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,20,34,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,20,35,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,21,36,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,21,37,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,21,38,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,22,39,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,22,40,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,23,41,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,23,42,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,23,43,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,24,44,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,24,45,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,25,46,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,25,47,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,25,48,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,26,49,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,26,50,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,27,51,1,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,27,52,2,1);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,27,53,3,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,28,54,1,0);
INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,28,55,2,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,29,56,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,30,57,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,31,58,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,32,59,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,33,60,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,34,61,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,35,62,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,36,63,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,37,64,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,38,65,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,39,66,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,40,67,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,41,68,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,42,69,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,43,70,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,44,71,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,45,72,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,46,73,1,1);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,47,74,1,0);

INSERT INTO l_P (ID, ID_LOTE, ID_PEDIDO, ORDEN, RECOGIDO) VALUES (SECUENCIA_L_P.nextval,48,75,1,0);

--p_p--
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,6,1);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,8,1);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,11,2);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,13,2);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,17,3);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,18,3);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,6,4);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,7,4);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,16,5);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,18,5);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,21,6);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,22,6);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,23,7);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,24,8);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,20,9);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,24,10);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,30,11);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,31,11);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,25,12);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,26,12);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,36,13);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,31,14);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,29,15);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,37,16);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,40,16);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,38,17);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,40,18);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,39,19);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,37,20);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,39,20);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,41,21);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,42,22);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,42,23);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,41,24);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,41,25);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,43,26);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,44,27);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (5,43,28);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,44,29);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,43,30);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,44,30);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,46,31);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,47,31);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,45,32);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,48,33);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,46,34);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,47,35);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (5,53,36);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (5,52,36);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,50,36);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (14,53,37);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,49,38);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,50,39);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,52,39);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,43,40);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,1,41);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,2,41);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,5,41);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,3,42);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,4,43);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,1,43);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,2,43);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,5,43);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,4,44);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,5,45);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,6,46);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,7,46);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,10,46);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,8,47);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,6,48);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,7,48);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,8,48);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,9,48);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,10,49);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,7,49);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,8,50);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,10,51);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,13,51);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,14,51);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,12,52);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,13,53);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,10,53);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,15,54);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,14,55);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,19,56);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,16,57);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,18,57);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,18,58);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,17,59);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,18,60);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,20,61);
INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,22,61);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (4,21,62);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,22,63);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,20,64);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (6,22,65);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,23,66);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,23,67);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,23,68);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,23,69);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,23,70);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,24,71);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (3,24,72);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (1,24,73);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (2,24,74);

INSERT INTO p_p (CANTIDAD, ID_PRODUCTO, ID_PEDIDO) VALUES (5,24,75);
