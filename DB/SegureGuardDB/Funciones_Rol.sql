-- FUNCIONES CRUD

-- Listar todos

CREATE OR REPLACE FUNCTION public."listar_rol"()
	RETURNS TABLE(roleid INTEGER, roletype VARCHAR, permissions VARCHAR) 
	LANGUAGE 'plpgsql'
AS $$
BEGIN
	RETURN QUERY
	SELECT r.roleid, r.roletype, r.permissions
	FROM roles r;
END
$$;

-- Listar por id

CREATE FUNCTION public."listar_idrol"(IN idrol INTEGER)
    RETURNS CHARACTER VARYING
    LANGUAGE 'plpgsql'    
AS $$
	DECLARE buscar CHARACTER VARYING;
BEGIN
	IF EXISTS(SELECT roleid FROM roles WHERE roleid = idrol) THEN
		SELECT (roletype, permissions) INTO buscar
		FROM roles 
		WHERE roleid = idrol;
		RETURN buscar;
	ELSE
		RAISE NOTICE 'El id %, no existe.', idrol;
	END IF;
END
$$;


-- Insertar

CREATE OR REPLACE FUNCTION public."insertar_Rol"(IN tipo CHARACTER VARYING,IN permiso CHARACTER VARYING)
    RETURNS VOID
    LANGUAGE 'plpgsql'   
AS $$
BEGIN
	INSERT INTO roles(roletype, permissions)
	VALUES (tipo, permiso);
END
$$;

-- Actualizar

CREATE OR REPLACE FUNCTION public."actualizar_Rol"(IN idrol INTEGER, IN roletype CHARACTER VARYING, IN permissions CHARACTER VARYING) 
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT roleid FROM roles WHERE roleid = idrol) THEN
        UPDATE roles
        SET roletype = new_roletype, permissions = new_permissions
        WHERE roleid = idrol;
    ELSE
        RAISE NOTICE 'El id %, no existe en esta tabla.', idrol;
    END IF;
END
$$;

-- Eliminar

CREATE OR REPLACE FUNCTION public."borrar_rol"(IN idrol INTEGER)
	RETURNS VOID 
	LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    IF EXISTS (SELECT roleid FROM roles WHERE roleid = idrol) THEN
        DELETE FROM roles
        WHERE roleid = idrol;
    END IF;
END
$BODY$ 




