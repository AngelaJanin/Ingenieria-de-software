
CREATE TABLE usuario (
			idusuario serial NOT NULL,
			nombre text NOT NULL, 
			correo text, 
			contrasenia text,
			fechanacimiento date,
			PRIMARY KEY (idusuario)); 


CREATE TABLE marcador (
			descripcion text,
			latitud double precision,
			longitud double precision,
			idmarcador serial NOT NULL,
			PRIMARY KEY (idmarcador),
			idusuario integer REFERENCES usuario (idusuario)
			);
