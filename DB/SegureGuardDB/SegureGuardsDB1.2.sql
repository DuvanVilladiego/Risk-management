PGDMP                  	    |            SegureGuardDB    16.3    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    36434    SegureGuardDB    DATABASE     �   CREATE DATABASE "SegureGuardDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "SegureGuardDB";
                postgres    false            �            1255    37007    ListarActivosid(integer)    FUNCTION     z  CREATE FUNCTION public."ListarActivosid"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (assettype, assetstatus, assetquantity, description_assets, brand, serialnumber, hardwaredetails, softwaredetails, location_asset, assetcost, entityid) INTO buscar
	FROM assets WHERE assetid = id;
	RETURN buscar;
END;$$;
 4   DROP FUNCTION public."ListarActivosid"(id integer);
       public          postgres    false            �            1255    37022    ListarAuditoriasId(integer)    FUNCTION     @  CREATE FUNCTION public."ListarAuditoriasId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (actionaudit, entity, timestampaudit, personid, firstname, class, ipaddress, useragent) INTO buscar
	FROM auditlogs WHERE auditid = id;
	RETURN buscar;
END;$$;
 7   DROP FUNCTION public."ListarAuditoriasId"(id integer);
       public          postgres    false            �            1255    37003    ListarDepartamentosId(integer)    FUNCTION     (  CREATE FUNCTION public."ListarDepartamentosId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (departmentname, description_departments, employeeid) INTO buscar
	FROM departments WHERE departmentid = id;
	RETURN buscar;
END;$$;
 :   DROP FUNCTION public."ListarDepartamentosId"(id integer);
       public          postgres    false            �            1255    36998    ListarEmpleadosId(integer)    FUNCTION       CREATE FUNCTION public."ListarEmpleadosId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (personid, roleid, email, employmentstatus) INTO buscar
	FROM employees WHERE employeeid = id;
	RETURN buscar;
END;$$;
 6   DROP FUNCTION public."ListarEmpleadosId"(id integer);
       public          postgres    false            )           1255    37005    ListarEntidadesId(integer)    FUNCTION     O  CREATE FUNCTION public."ListarEntidadesId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (entityname, entityaddress, entityphone, registrationdate, mainactivity, entitystatus, personid, email) INTO buscar
	FROM entities WHERE entityid = id;
	RETURN buscar;
END;$$;
 6   DROP FUNCTION public."ListarEntidadesId"(id integer);
       public          postgres    false                       1255    37016    ListarEventosId(integer)    FUNCTION     '  CREATE FUNCTION public."ListarEventosId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (eventtype, descriptionevents, entityid, assetid, riskid, eventdate) INTO buscar
	FROM events WHERE eventid = id;
	RETURN buscar;
END;$$;
 4   DROP FUNCTION public."ListarEventosId"(id integer);
       public          postgres    false            %           1255    37017    ListarNotificacionesId(integer)    FUNCTION     E  CREATE FUNCTION public."ListarNotificacionesId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (communicationchannel, descriptionnotifocations, eventid, personid, entityid) INTO buscar
	FROM notifications WHERE notificationid = id;
	RETURN buscar;
END;$$;
 ;   DROP FUNCTION public."ListarNotificacionesId"(id integer);
       public          postgres    false            �            1255    37013    ListarPlanesAccionId(integer)    FUNCTION     X  CREATE FUNCTION public."ListarPlanesAccionId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (plantype, descriptionaction, creationdate, updatedate, statusaction, entityid, assetid, employeeid, riskid) INTO buscar
	FROM actionplans WHERE planid = id;
	RETURN buscar;
END;$$;
 9   DROP FUNCTION public."ListarPlanesAccionId"(id integer);
       public          postgres    false            �            1255    36987    ListarPruebasid(integer)    FUNCTION     2  CREATE FUNCTION public."ListarPruebasid"(idtest integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;

BEGIN
	SELECT (testtype, descriptiontests, startdate, enddate, statustests, employeeid) INTO buscar FROM tests WHERE testid = idtest;
	RETURN buscar;
END;$$;
 8   DROP FUNCTION public."ListarPruebasid"(idtest integer);
       public          postgres    false            �            1255    37009    ListarRegulacionesId(integer)    FUNCTION     C  CREATE FUNCTION public."ListarRegulacionesId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (regulationtype, descriptionregulation, enactmentdate, statusregulation, assetid) INTO buscar
	FROM regulations WHERE regulationId = id;
	RETURN buscar;
END;$$;
 9   DROP FUNCTION public."ListarRegulacionesId"(id integer);
       public          postgres    false            �            1255    37011    ListarRiegosId(integer)    FUNCTION     �   CREATE FUNCTION public."ListarRiegosId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (risktype, description_risks) INTO buscar
	FROM risks WHERE riskid = id;
	RETURN buscar;
END;$$;
 3   DROP FUNCTION public."ListarRiegosId"(id integer);
       public          postgres    false            �            1255    36986    ListarRolId(integer)    FUNCTION     �   CREATE FUNCTION public."ListarRolId"(idrol integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;

BEGIN
	SELECT (roletype, permissions) INTO buscar FROM roles WHERE roleid = idrol;
	RETURN buscar;
END;$$;
 3   DROP FUNCTION public."ListarRolId"(idrol integer);
       public          postgres    false            $           1255    36996    ListarUsauriosId(integer)    FUNCTION     5  CREATE FUNCTION public."ListarUsauriosId"(id integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$DECLARE buscar CHARACTER VARYING;
BEGIN
	SELECT (firstname, lastname, password_people, phone, email, address_people, birthdate) INTO buscar
	FROM people  WHERE personid = id;
	RETURN buscar;
END;$$;
 5   DROP FUNCTION public."ListarUsauriosId"(id integer);
       public          postgres    false                       1255    37062 R   actualizar_Activo(integer, character varying, character varying, numeric, integer)    FUNCTION     �  CREATE FUNCTION public."actualizar_Activo"(idactivo integer, estado character varying, ubicacion character varying, precio numeric, identidad integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN 
	IF EXISTS (SELECT assetid FROM assets WHERE assetid = idactivo) THEN
		UPDATE assets
		SET assetstatus = estado, location_asset = ubicacion, assetcost = precio, entityid = identidad
		WHERE assetid = idactivo;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idactivo;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Activo"(idactivo integer, estado character varying, ubicacion character varying, precio numeric, identidad integer);
       public          postgres    false                       1255    37060 P   actualizar_Departamentos(integer, character varying, character varying, integer)    FUNCTION       CREATE FUNCTION public."actualizar_Departamentos"(iddepartamento integer, nombre character varying, descripcion character varying, idempleado integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT departmentid FROM departments WHERE departmentid = iddepartamento) THEN
		UPDATE departments
		SET departmentname = nombre, description_departments = descripcion, employeeid = idempleado
		WHERE departmentid = iddepartamento;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', iddepartamento;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Departamentos"(iddepartamento integer, nombre character varying, descripcion character varying, idempleado integer);
       public          postgres    false                       1255    37059 8   actualizar_Empleado(integer, integer, character varying)    FUNCTION     �  CREATE FUNCTION public."actualizar_Empleado"(idempleado integer, idrol integer, estado character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT employeeid FROM employees WHERE employeeid = idempleado) THEN 
		UPDATE employees
		SET roleid = idrol, employmentstatus = estado
		WHERE employeeid = idempleado;
	ELSE
		RAISE NOTICE'El id %, no exite en esta tabla.', idempleado;
	END IF;
END
			$$;
 i   DROP FUNCTION public."actualizar_Empleado"(idempleado integer, idrol integer, estado character varying);
       public          postgres    false            ,           1255    37107 �   actualizar_Entidad(integer, character varying, character varying, character varying, character varying, character varying, character varying, integer)    FUNCTION     �  CREATE FUNCTION public."actualizar_Entidad"(identidad integer, nombre character varying, direccion character varying, tel character varying, correo character varying, actividad character varying, estado character varying, idpersona integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT entityid FROM entities WHERE entityid = identidad) THEN
		UPDATE entities
		SET entityname = nombre, entityaddress = direccion, entityphone = tel, mainactivity = actividad, entitystatus = estado, personid = idpersona, email = correo 
		WHERE entityid = identidad;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', identidad;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Entidad"(identidad integer, nombre character varying, direccion character varying, tel character varying, correo character varying, actividad character varying, estado character varying, idpersona integer);
       public          postgres    false            !           1255    37066 ;   actualizar_Evento(integer, text, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public."actualizar_Evento"(idevento integer, descripcion text, identidad integer, idactivo integer, idriesgo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT eventid FROM events WHERE eventid = idevento) THEN
		UPDATE events
		SET descriptionevents = descripcion, entityid = identidad, assetid = idactivo, riskid = idriesgo
		WHERE eventid = idevento;
	ELSE
		RAISE NOTICE 'El id %, no existe en esta tabla.', idevento;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Evento"(idevento integer, descripcion text, identidad integer, idactivo integer, idriesgo integer);
       public          postgres    false            (           1255    37102 3   actualizar_Notificacion(integer, character varying)    FUNCTION     �  CREATE FUNCTION public."actualizar_Notificacion"(idnotificacion integer, mensaje character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT notificationid FROM notifications WHERE notificationid = idnotificacion) THEN
		UPDATE notifications
		SET descriptionnotifications = mensaje
		WHERE notificationid = idnotificacion;
	ELSE
		RAISE NOTICE 'El id %, no existe en esta tabla.', idnotificacion;
	END IF;
END$$;
 c   DROP FUNCTION public."actualizar_Notificacion"(idnotificacion integer, mensaje character varying);
       public          postgres    false                       1255    37058 �   actualizar_Persona(integer, character varying, character varying, character varying, character varying, character varying, character varying)    FUNCTION     Y  CREATE FUNCTION public."actualizar_Persona"(idpersona integer, nombre character varying, apellido character varying, clave character varying, tel character varying, correo character varying, direccion character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT personid FROM people WHERE personid = idpersona) THEN
		UPDATE people
		SET firstname = nombre, lastname = apellido, password_people = clave, phone = tel, email = correo, address_people = direccion
		WHERE personid = idpersona;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idpersona;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Persona"(idpersona integer, nombre character varying, apellido character varying, clave character varying, tel character varying, correo character varying, direccion character varying);
       public          postgres    false                        1255    37065 U   actualizar_Plan(integer, text, character varying, integer, integer, integer, integer)    FUNCTION     ;  CREATE FUNCTION public."actualizar_Plan"(idplan integer, descripcion text, estado character varying, identidad integer, idactivo integer, idempleado integer, idriesgo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT planid FROM actionplans WHERE planid = idplan) THEN
		UPDATE actionplans
		SET descriptionaction = descripcion, statusaction = estado, entityid = identidad, assetid = idactivo, employeeid = idempleado, riskid = isriesgo
		WHERE planid = idplan;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idplan;
	END IF;
END$$;
 �   DROP FUNCTION public."actualizar_Plan"(idplan integer, descripcion text, estado character varying, identidad integer, idactivo integer, idempleado integer, idriesgo integer);
       public          postgres    false            "           1255    37073 <   actualizar_Prueba(integer, text, character varying, integer)    FUNCTION     �  CREATE FUNCTION public."actualizar_Prueba"(idprueba integer, descripcion text, estado character varying, idempleado integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT testid FROM tests WHERE testid = idprueba) THEN
		UPDATE tests
		SET descriptiontests  =descripciones, statustests = estado, employeeid = idempleado
		WHERE testid = idprueba;
	ELSE
		RAISE NOTICE 'El id %, no existe en esta tabla.', idprueba;
	END IF;
END$$;
 |   DROP FUNCTION public."actualizar_Prueba"(idprueba integer, descripcion text, estado character varying, idempleado integer);
       public          postgres    false                       1255    37063 @   actualizar_Regulacion(integer, text, character varying, integer)    FUNCTION     �  CREATE FUNCTION public."actualizar_Regulacion"(idnorma integer, descripcion text, estado character varying, idactivo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT regulationid FROM regulations WHERE regulationid = idnorma) THEN
		UPDATE regulations
		SET descriptionregulation = descripcion, statusregulation = estado, assetid = idactivo
		WHERE  regulationid = idnorma;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idnorma;
	END IF;
END$$;
 }   DROP FUNCTION public."actualizar_Regulacion"(idnorma integer, descripcion text, estado character varying, idactivo integer);
       public          postgres    false                       1255    37064 @   actualizar_Riesgo(integer, character varying, character varying)    FUNCTION     �  CREATE FUNCTION public."actualizar_Riesgo"(idriesgo integer, descripcion character varying, nivel character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT riskid FROM risks WHERE riskid = idriesgo) THEN
		UPDATE risks
		SET description_risks = descripcion, levelrisk = nivel
		WHERE riskid = idriesgo;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idriesgo;
	END IF;
END$$;
 t   DROP FUNCTION public."actualizar_Riesgo"(idriesgo integer, descripcion character varying, nivel character varying);
       public          postgres    false                       1255    37057 =   actualizar_Rol(integer, character varying, character varying)    FUNCTION     �  CREATE FUNCTION public."actualizar_Rol"(idrol integer, tipo character varying, permiso character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF EXISTS (SELECT roleid FROM roles WHERE roleid = idrol) THEN
		UPDATE roles
		SET roletype = tipo, permissions = permiso
		WHERE roleid = idrol;
	ELSE
		RAISE NOTICE 'El id %, no exite en esta tabla.', idrol;
	END IF;
END
$$;
 i   DROP FUNCTION public."actualizar_Rol"(idrol integer, tipo character varying, permiso character varying);
       public          postgres    false            2           1255    37113    borrar_activo(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_activo(activo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT assetid FROM assets WHERE assetid = activo) THEN
        DELETE FROM assets WHERE assetid = activo;
    END IF;
END;
$$;
 4   DROP FUNCTION public.borrar_activo(activo integer);
       public          postgres    false            0           1255    37111    borrar_departamento(integer)    FUNCTION     '  CREATE FUNCTION public.borrar_departamento(departamento integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT departmentid FROM departments WHERE departmentid = departamento) THEN
        DELETE FROM departments WHERE departmentid = departamento;
    END IF;
END;
$$;
 @   DROP FUNCTION public.borrar_departamento(departamento integer);
       public          postgres    false            /           1255    37110    borrar_empleado(integer)    FUNCTION       CREATE FUNCTION public.borrar_empleado(empleado integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT employeeid FROM employees WHERE employeeid = empleado) THEN
        DELETE FROM employees WHERE employeeid = empleado;
    END IF;
END;
$$;
 8   DROP FUNCTION public.borrar_empleado(empleado integer);
       public          postgres    false            1           1255    37112    borrar_entidad(integer)    FUNCTION       CREATE FUNCTION public.borrar_entidad(entidad integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT entityid FROM entities WHERE entityid = entidad) THEN
        DELETE FROM entities WHERE entityid = entidad;
    END IF;
END;
$$;
 6   DROP FUNCTION public.borrar_entidad(entidad integer);
       public          postgres    false            6           1255    37117    borrar_evento(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_evento(evento integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT eventid FROM events WHERE eventid = evento) THEN
        DELETE FROM events WHERE eventid = evento;
    END IF;
END
$$;
 4   DROP FUNCTION public.borrar_evento(evento integer);
       public          postgres    false            7           1255    37118    borrar_notificacion(integer)    FUNCTION     0  CREATE FUNCTION public.borrar_notificacion(notificacion integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT notificacionid FROM notifications WHERE notificationid = notificacion) THEN
        DELETE FROM notifications WHERE notificationid = notificacion;
    END IF;
END
$$;
 @   DROP FUNCTION public.borrar_notificacion(notificacion integer);
       public          postgres    false            .           1255    37109    borrar_persona(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_persona(persona integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT personid FROM people WHERE personid = persona) THEN
        DELETE FROM people WHERE personid = persona;
    END IF;
END;
$$;
 6   DROP FUNCTION public.borrar_persona(persona integer);
       public          postgres    false            5           1255    37116    borrar_plan(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_plan(plan integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT planid FROM actionplans WHERE planid = plan) THEN
        DELETE FROM actionplans WHERE planid = plan;
    END IF;
END;
$$;
 0   DROP FUNCTION public.borrar_plan(plan integer);
       public          postgres    false            8           1255    37119    borrar_prueba(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_prueba(prueba integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT testid FROM tests WHERE testid = prueba) THEN
        DELETE FROM tests WHERE testid = prueba;
    END IF;
END
$$;
 4   DROP FUNCTION public.borrar_prueba(prueba integer);
       public          postgres    false            3           1255    37114    borrar_regulacion(integer)    FUNCTION       CREATE FUNCTION public.borrar_regulacion(norma integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT regulationId FROM regulations WHERE regulationid = norma) THEN
        DELETE FROM regulations WHERE regulationid = norma;
    END IF;
END;
$$;
 7   DROP FUNCTION public.borrar_regulacion(norma integer);
       public          postgres    false            4           1255    37115    borrar_riesgo(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_riesgo(riesgo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT riskid FROM risks WHERE riskid = riesgo) THEN
        DELETE FROM risks WHERE riskid = riesgo;
    END IF;
END;
$$;
 4   DROP FUNCTION public.borrar_riesgo(riesgo integer);
       public          postgres    false            -           1255    37108    borrar_rol(integer)    FUNCTION     �   CREATE FUNCTION public.borrar_rol(idrol integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF EXISTS (SELECT roleid FROM roles WHERE roleid = idrol) THEN
        DELETE FROM roles
        WHERE roleid = idrol;
    END IF;
END
$$;
 0   DROP FUNCTION public.borrar_rol(idrol integer);
       public          postgres    false                       1255    37052 �   insertar_Activo(character varying, character varying, integer, text, character varying, character varying, character varying, character varying, numeric, integer)    FUNCTION     G  CREATE FUNCTION public."insertar_Activo"(tipo character varying, estado character varying, cantidad integer, descripcion text, marca character varying, serie character varying, hardware character varying, ubicacion character varying, precio numeric, identidad integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO assets(assettype, assetstatus, assetquantity, description_assets, brand, serialnumber, hardwaredetails, location_asset, assetcost, entityid)
	VALUES (tipo, estado, cantidad, descripcion, marca, serie, hardware, ubicacion, precio, identidad);
END;
$$;
   DROP FUNCTION public."insertar_Activo"(tipo character varying, estado character varying, cantidad integer, descripcion text, marca character varying, serie character varying, hardware character varying, ubicacion character varying, precio numeric, identidad integer);
       public          postgres    false                       1255    37051 7   insertar_Departamento(character varying, text, integer)    FUNCTION     !  CREATE FUNCTION public."insertar_Departamento"(nombre character varying, descripcion text, idempleado integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO departments(departmentname, description_departments, employeeid)
	VALUES (nombre, descripcion, idempleado);
END$$;
 n   DROP FUNCTION public."insertar_Departamento"(nombre character varying, descripcion text, idempleado integer);
       public          postgres    false                       1255    37050 I   insertar_Empleado(integer, integer, character varying, character varying)    FUNCTION     (  CREATE FUNCTION public."insertar_Empleado"(idpersona integer, idrol integer, correo character varying, estado character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO employees(personid, roleid, email, employmentstatus)
	VALUES (idpersona, idrol, correo, estado);
END$$;
 �   DROP FUNCTION public."insertar_Empleado"(idpersona integer, idrol integer, correo character varying, estado character varying);
       public          postgres    false            +           1255    37106 �   insertar_Entidad(integer, character varying, character varying, character varying, character varying, character varying, character varying, integer)    FUNCTION     �  CREATE FUNCTION public."insertar_Entidad"(identidad integer, nombre character varying, direccion character varying, tel character varying, actividad character varying, estado character varying, correo character varying, idpersona integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO entities(entityname, entityaddress, entityphone, mainactivity, entitystatus, personid, email)
	VALUES (nombre, direccion, tel, actividad, estado, idpersona, correo);
END$$;
 �   DROP FUNCTION public."insertar_Entidad"(identidad integer, nombre character varying, direccion character varying, tel character varying, actividad character varying, estado character varying, correo character varying, idpersona integer);
       public          postgres    false                       1255    37048 C   insertar_Evento(character varying, text, integer, integer, integer)    FUNCTION     M  CREATE FUNCTION public."insertar_Evento"(tipo character varying, descripcion text, identidad integer, idactivo integer, idriesgo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO events(eventtype, descriptionevents, entityid, assetid, riskid)
	VALUES (tipo, descripcion, identidad, idactivo, idriesgo);
END
$$;
 �   DROP FUNCTION public."insertar_Evento"(tipo character varying, descripcion text, identidad integer, idactivo integer, idriesgo integer);
       public          postgres    false            '           1255    37103 6   insertar_Notificacion(text, integer, integer, integer)    FUNCTION     3  CREATE FUNCTION public."insertar_Notificacion"(mensaje text, idevento integer, idpersona integer, identidad integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO notifications(descriptionnotifocations, eventid, personid, entityid)
	VALUES (mensaje, idevento, idpersona,identidad);
END
$$;
 t   DROP FUNCTION public."insertar_Notificacion"(mensaje text, idevento integer, idpersona integer, identidad integer);
       public          postgres    false                       1255    37042 �   insertar_Persona(integer, character varying, character varying, character varying, character varying, character varying, character varying, date)    FUNCTION     �  CREATE FUNCTION public."insertar_Persona"(cedula integer, nombre character varying, apellido character varying, clave character varying, telefono character varying, correo character varying, direccion character varying, cumple date) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO people(personid, firstname, lastname, password_people, phone, email, address_people, birthdate)
	VALUES (cedula, nombre, apellido, clave, telefono, correo, direccion, cumple);
END$$;
 �   DROP FUNCTION public."insertar_Persona"(cedula integer, nombre character varying, apellido character varying, clave character varying, telefono character varying, correo character varying, direccion character varying, cumple date);
       public          postgres    false                       1255    37055 ]   insertar_Plan(character varying, text, character varying, integer, integer, integer, integer)    FUNCTION     �  CREATE FUNCTION public."insertar_Plan"(tipo character varying, descripcion text, estado character varying, identidad integer, idactivo integer, idempleado integer, idriesgo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO actionplans(plantype, descriptionaction, statusaction, entityid, assetid, employeeid, riskid)
	VALUES (tipo, descripcion, estado, identidad, idactivo, idempleado, idriesgo);
END$$;
 �   DROP FUNCTION public."insertar_Plan"(tipo character varying, descripcion text, estado character varying, identidad integer, idactivo integer, idempleado integer, idriesgo integer);
       public          postgres    false                       1255    37034 D   insertar_Prueba(character varying, text, character varying, integer)    FUNCTION     3  CREATE FUNCTION public."insertar_Prueba"(tipo character varying, descripcion text, estado character varying, idempleado integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO tests(testtype, descriptiontests, statustests, employeeid)
	VALUES (tipo, descripcion, estado, idempleado);
END$$;
 �   DROP FUNCTION public."insertar_Prueba"(tipo character varying, descripcion text, estado character varying, idempleado integer);
       public          postgres    false                       1255    37036 [   insertar_Regulacion(character varying, character varying, date, character varying, integer)    FUNCTION     t  CREATE FUNCTION public."insertar_Regulacion"(tipo character varying, descripcion character varying, fecha date, estado character varying, idactivo integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO regulations(regulationtype, descriptionregulation, enactmentdate, statusregulation, asstid)
	VALUES (tipo, descripcion, fecha, estado, idactivo);
END$$;
 �   DROP FUNCTION public."insertar_Regulacion"(tipo character varying, descripcion character varying, fecha date, estado character varying, idactivo integer);
       public          postgres    false                       1255    37035 (   insertar_Riesgo(character varying, text)    FUNCTION     �   CREATE FUNCTION public."insertar_Riesgo"(tipo character varying, descripcion text) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO risks(risktype, description_risks) 
	VALUES (tipo, descripcion);
END$$;
 R   DROP FUNCTION public."insertar_Riesgo"(tipo character varying, descripcion text);
       public          postgres    false                       1255    37028 2   insertar_Rol(character varying, character varying)    FUNCTION     �   CREATE FUNCTION public."insertar_Rol"(tipo character varying, permiso character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO roles(roletype, permissions)
	VALUES (tipo, permiso);
END$$;
 X   DROP FUNCTION public."insertar_Rol"(tipo character varying, permiso character varying);
       public          postgres    false            �            1255    37006    listar_activos()    FUNCTION     �  CREATE FUNCTION public.listar_activos() RETURNS TABLE(assetid integer, assettype character varying, assetstatus character varying, assetauantity integer, description_assets text, brand character varying, serialnumber character varying, hardwaredetails character varying, softwaredetails character varying, location_asset character varying, assetcost numeric, entityid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT a.AssetID, a.AssetType, a.AssetStatus, a.AssetQuantity, a.Description_Assets, a.Brand, a.SerialNumber, 
	a.HardwareDetails, a.SoftwareDetails, a.Location_Asset, a.AssetCost, a.EntityID
	FROM Assets a;
END;
$$;
 '   DROP FUNCTION public.listar_activos();
       public          postgres    false                       1255    37021    listar_auditorias()    FUNCTION     �  CREATE FUNCTION public.listar_auditorias() RETURNS TABLE(auditid integer, actionaudit character varying, entity character varying, timestampaudit timestamp without time zone, personid integer, firstname character varying, class character varying, ipaddress character varying, useragent character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT a.AuditID, a.ActionAudit, a.Entity, a.TimestampAudit, a.PersonID, a.FirstName, a.Class, a.IPAddress, a.UserAgent 
	FROM AuditLogs a;
END;
$$;
 *   DROP FUNCTION public.listar_auditorias();
       public          postgres    false            �            1255    37002    listar_departamentos()    FUNCTION     I  CREATE FUNCTION public.listar_departamentos() RETURNS TABLE(departmentid integer, departmentname character varying, description_departments text, employeeid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT d.departmentid, d.departmentname, d.description_departments, d.employeeid
	FROM Departments d;
END;
$$;
 -   DROP FUNCTION public.listar_departamentos();
       public          postgres    false            �            1255    36997    listar_empleados()    FUNCTION     D  CREATE FUNCTION public.listar_empleados() RETURNS TABLE(employeeid integer, personid integer, roleid integer, email character varying, employmentstatus character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT e.employeeid, e.personid, e.roleid, e.email, e.employmentstatus  
	FROM Employees e;
END;
$$;
 )   DROP FUNCTION public.listar_empleados();
       public          postgres    false            *           1255    37105    listar_entidades()    FUNCTION       CREATE FUNCTION public.listar_entidades() RETURNS TABLE(entityid integer, entityname character varying, entityaddress character varying, entityphone character varying, registrationdate timestamp without time zone, mainactivity character varying, entitystatus character varying, personid integer, email character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT e.entityid, e.entityname, e.entityaddress, e.entityphone, e.registrationdate, e.mainactivity, e.entitystatus, e.personid, e.email
	FROM entities e;
END;
$$;
 )   DROP FUNCTION public.listar_entidades();
       public          postgres    false                        1255    37014    listar_eventos()    FUNCTION     �  CREATE FUNCTION public.listar_eventos() RETURNS TABLE(eventid integer, eventtype character varying, descriptionevents text, entityid integer, assetid integer, riskid integer, eventdate timestamp without time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT e.EventID, e.EventType, e.DescriptionEvents, e.EntityID, e.AssetID, e.RiskID, e.EventDate
	FROM Events e;
END;
$$;
 '   DROP FUNCTION public.listar_eventos();
       public          postgres    false            &           1255    37101    listar_notificaciones()    FUNCTION     T  CREATE FUNCTION public.listar_notificaciones() RETURNS TABLE(notificationid integer, descriptionnotifocations text, eventid integer, personid integer, entityid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT n.NotificationID, n.DescriptionNotifocations, n.EventID, n.personid, n.entityid
	FROM Notifications n;
END;
$$;
 .   DROP FUNCTION public.listar_notificaciones();
       public          postgres    false            �            1255    37012    listar_planes_accion()    FUNCTION       CREATE FUNCTION public.listar_planes_accion() RETURNS TABLE(planid integer, plantype character varying, descriptionaction text, creationdate timestamp without time zone, updatedate timestamp without time zone, statusaction character varying, entityid integer, assetid integer, employeeid integer, riskid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT a.PlanID, a.PlanType, a.DescriptionAction, a.CreationDate, a.UpdateDate, a.StatusAction, a.EntityID, a.AssetID, a.EmployeeID, a.RiskID
	FROM ActionPlans a;
END;
$$;
 -   DROP FUNCTION public.listar_planes_accion();
       public          postgres    false                       1255    37018    listar_pruebas()    FUNCTION     �  CREATE FUNCTION public.listar_pruebas() RETURNS TABLE(testid integer, testtype character varying, descriptiontests text, startdate timestamp without time zone, enddate date, statustests character varying, employeeid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT e.TestID, e.TestType, e.DescriptionTests, e.StartDate, e.EndDate, e.StatusTests, e.EmployeeID
	FROM Tests e;
END;
$$;
 '   DROP FUNCTION public.listar_pruebas();
       public          postgres    false            �            1255    37008    listar_regulaciones()    FUNCTION     �  CREATE FUNCTION public.listar_regulaciones() RETURNS TABLE(regulationid integer, regulationtype character varying, descriptionregulation text, enactmentdate date, statusregulation character varying, assetid integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT r.RegulationID, r.RegulationType, r.DescriptionRegulation, r.EnactmentDate, r.StatusRegulation, r.AssetID
	FROM Regulations r;
END;
$$;
 ,   DROP FUNCTION public.listar_regulaciones();
       public          postgres    false            �            1255    37010    listar_riesgos()    FUNCTION     �   CREATE FUNCTION public.listar_riesgos() RETURNS TABLE(riskid integer, risktype character varying, description_risks text)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT r.RiskID, r.RiskType, r.Description_Risks
	FROM Risks r;
END;
$$;
 '   DROP FUNCTION public.listar_riesgos();
       public          postgres    false            �            1255    36988    listar_rol()    FUNCTION     �   CREATE FUNCTION public.listar_rol() RETURNS TABLE(roleid integer, roletype character varying, permissions character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT r.roleid, r.roletype, r.permissions
	FROM roles r;
END;
$$;
 #   DROP FUNCTION public.listar_rol();
       public          postgres    false            #           1255    37086    listar_usuarios()    FUNCTION     �  CREATE FUNCTION public.listar_usuarios() RETURNS TABLE(personid integer, firstname character varying, lastname character varying, password_people character varying, phone character varying, email character varying, address_people character varying, birthdate date)
    LANGUAGE plpgsql
    AS $$
BEGIN
	RETURN QUERY
	SELECT u.personid, u.firstname, u.lastname, u.password_people, u.phone, u.email, u.address_people, u.birthdate
	FROM people u;
END;
$$;
 (   DROP FUNCTION public.listar_usuarios();
       public          postgres    false            �            1259    36865    actionplans    TABLE     H  CREATE TABLE public.actionplans (
    planid integer NOT NULL,
    plantype character varying(30) NOT NULL,
    descriptionaction text,
    creationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    statusaction character varying(20) NOT NULL,
    entityid integer,
    assetid integer,
    employeeid integer,
    riskid integer,
    CONSTRAINT actionplans_statusaction_check CHECK (((statusaction)::text = ANY ((ARRAY['En Proceso'::character varying, 'Finalizado'::character varying])::text[])))
);
    DROP TABLE public.actionplans;
       public         heap    postgres    false            �            1259    36864    actionplans_planid_seq    SEQUENCE     �   ALTER TABLE public.actionplans ALTER COLUMN planid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actionplans_planid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    36829    assets    TABLE       CREATE TABLE public.assets (
    assetid integer NOT NULL,
    assettype character varying(50) NOT NULL,
    assetstatus character varying(50) NOT NULL,
    assetquantity integer DEFAULT 1,
    description_assets text,
    brand character varying(30) NOT NULL,
    serialnumber character varying(30) NOT NULL,
    hardwaredetails character varying(30) NOT NULL,
    softwaredetails character varying(30),
    location_asset character varying(30) NOT NULL,
    assetcost numeric(10,2) NOT NULL,
    entityid integer
);
    DROP TABLE public.assets;
       public         heap    postgres    false            �            1259    36828    assets_assetid_seq    SEQUENCE     �   ALTER TABLE public.assets ALTER COLUMN assetid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.assets_assetid_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    36962 	   auditlogs    TABLE     �  CREATE TABLE public.auditlogs (
    auditid integer NOT NULL,
    actionaudit character varying(50) NOT NULL,
    entity character varying(50) NOT NULL,
    timestampaudit timestamp without time zone NOT NULL,
    personid integer,
    firstname character varying(100) NOT NULL,
    class character varying(255),
    ipaddress character varying(45),
    useragent character varying(255)
);
    DROP TABLE public.auditlogs;
       public         heap    postgres    false            �            1259    36961    auditlogs_auditid_seq    SEQUENCE     �   ALTER TABLE public.auditlogs ALTER COLUMN auditid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.auditlogs_auditid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    239            �            1259    36804    departments    TABLE     �   CREATE TABLE public.departments (
    departmentid integer NOT NULL,
    departmentname character varying(50) NOT NULL,
    description_departments text,
    employeeid integer
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    36803    departments_departmentid_seq    SEQUENCE     �   ALTER TABLE public.departments ALTER COLUMN departmentid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.departments_departmentid_seq
    START WITH 100
    INCREMENT BY 5
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    36786 	   employees    TABLE     �   CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    personid integer,
    roleid integer,
    email character varying(100) NOT NULL,
    employmentstatus character varying(30) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    36785    employees_employeeid_seq    SEQUENCE     �   ALTER TABLE public.employees ALTER COLUMN employeeid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_employeeid_seq
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    36817    entities    TABLE     �  CREATE TABLE public.entities (
    entityid integer NOT NULL,
    entityname character varying(100) NOT NULL,
    entityaddress character varying(50) NOT NULL,
    entityphone character varying(25) NOT NULL,
    registrationdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mainactivity character varying(50),
    entitystatus character varying(20),
    personid integer,
    email character varying(100)
);
    DROP TABLE public.entities;
       public         heap    postgres    false            �            1259    36816    entities_entityid_seq    SEQUENCE     �   ALTER TABLE public.entities ALTER COLUMN entityid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.entities_entityid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    36896    events    TABLE       CREATE TABLE public.events (
    eventid integer NOT NULL,
    eventtype character varying(30) NOT NULL,
    descriptionevents text,
    entityid integer,
    assetid integer,
    riskid integer,
    eventdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    36895    events_eventid_seq    SEQUENCE     �   ALTER TABLE public.events ALTER COLUMN eventid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.events_eventid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    36920    notifications    TABLE     �   CREATE TABLE public.notifications (
    notificationid integer NOT NULL,
    descriptionnotifocations text,
    eventid integer,
    personid integer,
    entityid integer
);
 !   DROP TABLE public.notifications;
       public         heap    postgres    false            �            1259    36919     notifications_notificationid_seq    SEQUENCE     �   ALTER TABLE public.notifications ALTER COLUMN notificationid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.notifications_notificationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    36778    people    TABLE     s  CREATE TABLE public.people (
    personid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    password_people character varying(30) NOT NULL,
    phone character varying(30) NOT NULL,
    email character varying(100) NOT NULL,
    address_people character varying(100) NOT NULL,
    birthdate date NOT NULL
);
    DROP TABLE public.people;
       public         heap    postgres    false            �            1259    36843    regulations    TABLE     �  CREATE TABLE public.regulations (
    regulationid integer NOT NULL,
    regulationtype character varying(30) NOT NULL,
    descriptionregulation text,
    enactmentdate date NOT NULL,
    statusregulation character varying(20) NOT NULL,
    assetid integer,
    CONSTRAINT regulations_statusregulation_check CHECK (((statusregulation)::text = ANY ((ARRAY['Vigente'::character varying, 'Derogada'::character varying])::text[])))
);
    DROP TABLE public.regulations;
       public         heap    postgres    false            �            1259    36842    regulations_regulationid_seq    SEQUENCE     �   ALTER TABLE public.regulations ALTER COLUMN regulationid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.regulations_regulationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    36857    risks    TABLE     �   CREATE TABLE public.risks (
    riskid integer NOT NULL,
    risktype character varying(50),
    description_risks text,
    levelrisk character varying(20)
);
    DROP TABLE public.risks;
       public         heap    postgres    false            �            1259    36856    risks_riskid_seq    SEQUENCE     �   ALTER TABLE public.risks ALTER COLUMN riskid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.risks_riskid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    36773    roles    TABLE     �   CREATE TABLE public.roles (
    roleid integer NOT NULL,
    roletype character varying(25) NOT NULL,
    permissions character varying(50) NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    36772    roles_roleid_seq    SEQUENCE     �   ALTER TABLE public.roles ALTER COLUMN roleid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.roles_roleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    36933    tests    TABLE     �  CREATE TABLE public.tests (
    testid integer NOT NULL,
    testtype character varying(30) NOT NULL,
    descriptiontests text,
    startdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    enddate date,
    statustests character varying(20) NOT NULL,
    employeeid integer,
    CONSTRAINT tests_statustests_check CHECK (((statustests)::text = ANY ((ARRAY['En Revisión'::character varying, 'En Proceso'::character varying, 'Completado'::character varying])::text[])))
);
    DROP TABLE public.tests;
       public         heap    postgres    false            �            1259    36932    tests_testid_seq    SEQUENCE     �   ALTER TABLE public.tests ALTER COLUMN testid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tests_testid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �          0    36865    actionplans 
   TABLE DATA           �   COPY public.actionplans (planid, plantype, descriptionaction, creationdate, updatedate, statusaction, entityid, assetid, employeeid, riskid) FROM stdin;
    public          postgres    false    231   �      �          0    36829    assets 
   TABLE DATA           �   COPY public.assets (assetid, assettype, assetstatus, assetquantity, description_assets, brand, serialnumber, hardwaredetails, softwaredetails, location_asset, assetcost, entityid) FROM stdin;
    public          postgres    false    225   �	      �          0    36962 	   auditlogs 
   TABLE DATA           �   COPY public.auditlogs (auditid, actionaudit, entity, timestampaudit, personid, firstname, class, ipaddress, useragent) FROM stdin;
    public          postgres    false    239   ]      �          0    36804    departments 
   TABLE DATA           h   COPY public.departments (departmentid, departmentname, description_departments, employeeid) FROM stdin;
    public          postgres    false    221   �      �          0    36786 	   employees 
   TABLE DATA           Z   COPY public.employees (employeeid, personid, roleid, email, employmentstatus) FROM stdin;
    public          postgres    false    219   �      �          0    36817    entities 
   TABLE DATA           �   COPY public.entities (entityid, entityname, entityaddress, entityphone, registrationdate, mainactivity, entitystatus, personid, email) FROM stdin;
    public          postgres    false    223   �      �          0    36896    events 
   TABLE DATA           m   COPY public.events (eventid, eventtype, descriptionevents, entityid, assetid, riskid, eventdate) FROM stdin;
    public          postgres    false    233   	      �          0    36920    notifications 
   TABLE DATA           n   COPY public.notifications (notificationid, descriptionnotifocations, eventid, personid, entityid) FROM stdin;
    public          postgres    false    235   i      �          0    36778    people 
   TABLE DATA           y   COPY public.people (personid, firstname, lastname, password_people, phone, email, address_people, birthdate) FROM stdin;
    public          postgres    false    217   �      �          0    36843    regulations 
   TABLE DATA           �   COPY public.regulations (regulationid, regulationtype, descriptionregulation, enactmentdate, statusregulation, assetid) FROM stdin;
    public          postgres    false    227   /      �          0    36857    risks 
   TABLE DATA           O   COPY public.risks (riskid, risktype, description_risks, levelrisk) FROM stdin;
    public          postgres    false    229   �      �          0    36773    roles 
   TABLE DATA           >   COPY public.roles (roleid, roletype, permissions) FROM stdin;
    public          postgres    false    216   �      �          0    36933    tests 
   TABLE DATA           p   COPY public.tests (testid, testtype, descriptiontests, startdate, enddate, statustests, employeeid) FROM stdin;
    public          postgres    false    237   Y      �           0    0    actionplans_planid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.actionplans_planid_seq', 5, true);
          public          postgres    false    230            �           0    0    assets_assetid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.assets_assetid_seq', 104, true);
          public          postgres    false    224            �           0    0    auditlogs_auditid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.auditlogs_auditid_seq', 6, true);
          public          postgres    false    238            �           0    0    departments_departmentid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.departments_departmentid_seq', 120, true);
          public          postgres    false    220            �           0    0    employees_employeeid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.employees_employeeid_seq', 104, true);
          public          postgres    false    218            �           0    0    entities_entityid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.entities_entityid_seq', 8, true);
          public          postgres    false    222            �           0    0    events_eventid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.events_eventid_seq', 5, true);
          public          postgres    false    232            �           0    0     notifications_notificationid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.notifications_notificationid_seq', 7, true);
          public          postgres    false    234            �           0    0    regulations_regulationid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.regulations_regulationid_seq', 5, true);
          public          postgres    false    226            �           0    0    risks_riskid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.risks_riskid_seq', 6, true);
          public          postgres    false    228            �           0    0    roles_roleid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_roleid_seq', 11, true);
          public          postgres    false    215            �           0    0    tests_testid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tests_testid_seq', 16, true);
          public          postgres    false    236            �           2606    36874    actionplans actionplans_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.actionplans
    ADD CONSTRAINT actionplans_pkey PRIMARY KEY (planid);
 F   ALTER TABLE ONLY public.actionplans DROP CONSTRAINT actionplans_pkey;
       public            postgres    false    231            �           2606    36836    assets assets_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.assets
    ADD CONSTRAINT assets_pkey PRIMARY KEY (assetid);
 <   ALTER TABLE ONLY public.assets DROP CONSTRAINT assets_pkey;
       public            postgres    false    225            �           2606    36968    auditlogs auditlogs_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.auditlogs
    ADD CONSTRAINT auditlogs_pkey PRIMARY KEY (auditid);
 B   ALTER TABLE ONLY public.auditlogs DROP CONSTRAINT auditlogs_pkey;
       public            postgres    false    239            �           2606    36810    departments departments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (departmentid);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    221            �           2606    36792    employees employees_email_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_email_key;
       public            postgres    false    219            �           2606    36790    employees employees_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    219            �           2606    36822    entities entities_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.entities
    ADD CONSTRAINT entities_pkey PRIMARY KEY (entityid);
 @   ALTER TABLE ONLY public.entities DROP CONSTRAINT entities_pkey;
       public            postgres    false    223            �           2606    36903    events events_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (eventid);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    233            �           2606    36926     notifications notifications_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notificationid);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    235            �           2606    36784    people people_email_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_email_key UNIQUE (email);
 A   ALTER TABLE ONLY public.people DROP CONSTRAINT people_email_key;
       public            postgres    false    217            �           2606    36782    people people_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (personid);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            postgres    false    217            �           2606    36850    regulations regulations_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.regulations
    ADD CONSTRAINT regulations_pkey PRIMARY KEY (regulationid);
 F   ALTER TABLE ONLY public.regulations DROP CONSTRAINT regulations_pkey;
       public            postgres    false    227            �           2606    36863    risks risks_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.risks
    ADD CONSTRAINT risks_pkey PRIMARY KEY (riskid);
 :   ALTER TABLE ONLY public.risks DROP CONSTRAINT risks_pkey;
       public            postgres    false    229            �           2606    36777    roles roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (roleid);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    216            �           2606    36941    tests tests_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (testid);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    237            �           2606    37090    notifications entityid    FK CONSTRAINT        ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT entityid FOREIGN KEY (entityid) REFERENCES public.entities(entityid);
 @   ALTER TABLE ONLY public.notifications DROP CONSTRAINT entityid;
       public          postgres    false    235    223    4831            �           2606    36851    regulations fk_asset    FK CONSTRAINT     y   ALTER TABLE ONLY public.regulations
    ADD CONSTRAINT fk_asset FOREIGN KEY (assetid) REFERENCES public.assets(assetid);
 >   ALTER TABLE ONLY public.regulations DROP CONSTRAINT fk_asset;
       public          postgres    false    4833    227    225            �           2606    36880    actionplans fk_asset    FK CONSTRAINT     y   ALTER TABLE ONLY public.actionplans
    ADD CONSTRAINT fk_asset FOREIGN KEY (assetid) REFERENCES public.assets(assetid);
 >   ALTER TABLE ONLY public.actionplans DROP CONSTRAINT fk_asset;
       public          postgres    false    231    225    4833            �           2606    36909    events fk_asset    FK CONSTRAINT     t   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_asset FOREIGN KEY (assetid) REFERENCES public.assets(assetid);
 9   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_asset;
       public          postgres    false    4833    225    233            �           2606    36811    departments fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employees(employeeid);
 A   ALTER TABLE ONLY public.departments DROP CONSTRAINT fk_employee;
       public          postgres    false    219    4827    221            �           2606    36885    actionplans fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.actionplans
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employees(employeeid);
 A   ALTER TABLE ONLY public.actionplans DROP CONSTRAINT fk_employee;
       public          postgres    false    4827    231    219                        2606    36942    tests fk_employee    FK CONSTRAINT        ALTER TABLE ONLY public.tests
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employees(employeeid);
 ;   ALTER TABLE ONLY public.tests DROP CONSTRAINT fk_employee;
       public          postgres    false    219    237    4827            �           2606    36837    assets fk_entity    FK CONSTRAINT     y   ALTER TABLE ONLY public.assets
    ADD CONSTRAINT fk_entity FOREIGN KEY (entityid) REFERENCES public.entities(entityid);
 :   ALTER TABLE ONLY public.assets DROP CONSTRAINT fk_entity;
       public          postgres    false    4831    225    223            �           2606    36875    actionplans fk_entity    FK CONSTRAINT     ~   ALTER TABLE ONLY public.actionplans
    ADD CONSTRAINT fk_entity FOREIGN KEY (entityid) REFERENCES public.entities(entityid);
 ?   ALTER TABLE ONLY public.actionplans DROP CONSTRAINT fk_entity;
       public          postgres    false    223    231    4831            �           2606    36904    events fk_entity    FK CONSTRAINT     y   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_entity FOREIGN KEY (entityid) REFERENCES public.entities(entityid);
 :   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_entity;
       public          postgres    false    233    223    4831            �           2606    36927    notifications fk_event    FK CONSTRAINT     {   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_event FOREIGN KEY (eventid) REFERENCES public.events(eventid);
 @   ALTER TABLE ONLY public.notifications DROP CONSTRAINT fk_event;
       public          postgres    false    233    235    4841            �           2606    36793    employees fk_person    FK CONSTRAINT     z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_person FOREIGN KEY (personid) REFERENCES public.people(personid);
 =   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_person;
       public          postgres    false    4823    217    219            �           2606    36823    entities fk_person    FK CONSTRAINT     y   ALTER TABLE ONLY public.entities
    ADD CONSTRAINT fk_person FOREIGN KEY (personid) REFERENCES public.people(personid);
 <   ALTER TABLE ONLY public.entities DROP CONSTRAINT fk_person;
       public          postgres    false    223    4823    217                       2606    36969    auditlogs fk_person    FK CONSTRAINT     z   ALTER TABLE ONLY public.auditlogs
    ADD CONSTRAINT fk_person FOREIGN KEY (personid) REFERENCES public.people(personid);
 =   ALTER TABLE ONLY public.auditlogs DROP CONSTRAINT fk_person;
       public          postgres    false    4823    217    239            �           2606    36890    actionplans fk_risk    FK CONSTRAINT     u   ALTER TABLE ONLY public.actionplans
    ADD CONSTRAINT fk_risk FOREIGN KEY (riskid) REFERENCES public.risks(riskid);
 =   ALTER TABLE ONLY public.actionplans DROP CONSTRAINT fk_risk;
       public          postgres    false    4837    231    229            �           2606    36914    events fk_risk    FK CONSTRAINT     p   ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_risk FOREIGN KEY (riskid) REFERENCES public.risks(riskid);
 8   ALTER TABLE ONLY public.events DROP CONSTRAINT fk_risk;
       public          postgres    false    4837    229    233            �           2606    36798    employees fk_role    FK CONSTRAINT     s   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_role FOREIGN KEY (roleid) REFERENCES public.roles(roleid);
 ;   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_role;
       public          postgres    false    4819    216    219            �           2606    37095    notifications personid    FK CONSTRAINT     }   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT personid FOREIGN KEY (personid) REFERENCES public.people(personid);
 @   ALTER TABLE ONLY public.notifications DROP CONSTRAINT personid;
       public          postgres    false    4823    235    217            �   F  x���Kj�0���)�	~�i���(����ZS#�5F���z�^�c�	�.J�}��Rmz0�6�;�����0:�'0�����OA#�1О���s��x�KUU�(�E�����\/��ۦl��z��Qdը�(�T�:3�(�ń�"���	���w�xN�S
�'���?�L�o�g���O4�V�U�u}�7?��`E����|T�����Hao2th�|(�-$�Y�its}�QjNǪO[8�\����<t�l'v�a��
�BU�Y�Յ�E���w�w��Lw�9�k$�7�i
�n��N�<�~[j� #���      �   u  x�u�MN�0�דS���N��e� �T�" 6lL�"�kGv\�3p.��4$�͌����(!�mg[(�o�QZ���
'��^8g��aDo�ݫpJ�5T���	O�� ��-�z~q���0VU	w�4��#��q���VF�Y�Z�Be��EQB�|�:�pj����	w��Զ�k����&0y��$f����0(�G(}��n��˓��� �J���u|_�>v�ȧ}�謇����yV�$�!fS�f����ۇ�t=B�z�']�!!#F0b���o
ʧ��%���Q4���,��{ �#o��䟼�`����� th;?�cN'T&�F���x��󐒰"Γ��|����<��$��gQ}�      �   X  x�}�Mj�0���S��%���.��P(	t��`+�@��l�ַ鲋�r_��S�,�7��7�Ӽ�Y���/����X����Ny2at�g��KΗqҔ�e<N��l/-j���X�]�_[�X�ʕ��!��C2
[�I�0rE�VyӢ�ݍo�r�ݰ����آ��H����o��^��� ���т:zk%+�ol�y25��Z4��?:��25�a՟���c<�=�ʈ%�ª-dc������q"��Թu1Xp!�[�d�
;����������=��(e�X3$~���kQ���m�����O�F��/G?^�1e)uyo�u�(]����A���      �   "  x�=�=N1�k�>@ف��& *�Y�de�z���nDA�#��o��z�7�Y���7.T�c�!QQXj�&��*C�s�Y��ќ�0�،h�0p�a��U�Z��^݇��:@��*!�ƍɌ��&�c&�X̱/��|�9�`iRw�O�z�`h�k�܆|����R�����W�ܝp��}�H�����.�^I���)��-�#����kc0u]^Γ�t�v;�^Q�,�oɔ
��K�� ��s���G�HRh/��(�Jx�߶Z�_=Й�      �   �   x�m�=� @����I����G+q**�#�r�20��O����4/��&�����=��r�Q����.5d��
�a�8l�+��m�b*y�K��1�u�����|,���G1k,e@T�	��K�.0z=�n�7c�L�      �   g  x��ұN�0��}
K̉�N�N�������b�X2��v��H<E_�KH�T��s���,ȳ���FM�U�M+�S�����e,�䌕�9�g\$�ג2��l��T�[Iro���Zz������v@pυ,�%��D��&bx�f�>�T�wV[����r&�}���7^Q�%�Q�4�j��[�_��L\�`���1r��i�S�����ȶ3���h,)����[,��?�Q�HhO'�qc��!�$�rmM�����w�sL�IQ������ͧ�Wm5�0�g�u`}�øA�$����
�^5����L���y">����y�l)|�`]v8t�S�zM��=���      �   P  x�}�=n�0�g��@G��4[� @��څ����,����u�#�b����E �(~z�k��i�m��^��,N�O���I�C�9`�g�y�ajщu�)d#�պY�-4����ݦ�v�FVR�;�IL>�#�P�|uE�E�h\���BH{@�0�g6�h0��߉��E�ȵh���8��Ŋ�W�ɌxW�֢	�(Ӄ�٦�Z��q�E�vU"�B]�#%{]@v�)����8Q'F��^<fMɇ���������h�5B$���bb-��n���1�`���Wdy���{�l�b�1�e�;N�ǳQ�7��n�=Cw��������/�q      �   %  x�e�;n�@Dk�)��eKv��H�&M�4�.%؏�!��R��X([�\� ��9�{,<�A��oЖt���V�S�Sn���D�,J;s�$��r���y��&�hh�ݵ�C�OOЩΎR�U5��V-�����L�4��<YF�O�֞�r��NLy�셿១W����[M8�9�x;E�,W���3�(.������@7���oa��ӊ�j�Ĵ���~�~r��Q����s��-�,�u��0-��	�v����"N9TI��,�[�rA'��!r��TL����{xR��R�'���      �   �  x�mT�n�0<�_��=��ukҢ-
0�"�^6�2�D���"�c9��cٕ� m}�b8���B*mlU;��[��`{���)o�ȴx��;��{��������Mj�;��*���^Wi��#���\.�L���aא�'`S�0<F�����
I/�eZ��Օ5����;B��4g�����+ŭ]�~�c�:�m�+�h]��g_��H��ᐔPI�����z<N}���*���]�B���g_܄{(j�z��v�����d���>I��\#�VBkm��B�N�3�ZQ̥�J��(��#�T�Xqi�s�Tly=��s7<v[r��m��]h�s�A�XD\�q@����\���xr���ԡʆk���fK8f`k�� �Eڭ����-�K�Jٟpg�:��7�R���'�(RrE�N��}8==��������%��R*E���J��g�6%�%�^1�B��:.*.I�Dl�:�R���}�t ���@���Ku]�
eK��IZB_� �������y��D\��������=���GGW��Gg,���rnZ�c%����u81�K7��u�o��	l9��c���`�p���̘�ȸ�|���g�5�`��E��H�cx55��r6�=�M^      �   T  x�]��N�0���S���v� � 8q�RYJ�ओx.n\�b8]�UH��8�����V�,��+~�B=��c�p���zHv�^������F�W�3:G�P<��1Y�!k���Ӧ�n[7m��w�Đ�j��t7�[��E��D�vLlS䐊��@C�
���P�|$G�2���?#J� ~�n�Yq[����Á�~�/����*�TC��;�I
�g�"9���GU⧀F{�|��7�E@W7��[���f�	�Ԃ>��#�y:dJeX�j>%-�lEʚ�b�@Wĭ�߈T=��Mϙ�GA�.^����ˆ�y�1k�s��}�)�Ft,�]ݭ�;�1��p И      �   &  x�MP�N1����/��W��(�PDI�g�E>��G�D��	�c�O!�����;3f+��'��s`�<�{%�]὾�|��tȄ����0 ���#v�6����Qk,�͖)��CI�x��r$�G�)��@J��j�=%,�f:�J�{e�1����E]!E� ���&�,CYƖr�S���-igɳ�k���xd�E`�|��g检[4	�h��A�K$-I�ս���1kʘKR~��&T�y'�-�����T�k,��7&�+<���?r�ob_:k�/�6��      �   �   x�3�tL����,.)JL�/�t.JM,�Q�IM���%��9�U לL���".Nה��Rt5\����)�s �~��s~nj^IbQf~1��ghq)�V�eh��W�Y�Յ�Z�h+H��+F��� cy:�      �   s  x���Kj�0@��)t���+I�B��fbM�@��>��N]��XG��6]ee���y���Q��@��_�+�wr�`�x�,�p��)�w��c&Q���[TZї^�����JT�R��ZqQ��b-�l�Z��r
U��lg�޻�cR�B�l�� 7;ޚ���l�3�wT��5Dl�c �<�h��gm����Q�F��R.2�{� ����W��:�mt����8����9��S{�7�Dݏ%}���7�:R��y���ꪂh�������o���L�ٰ���͟��;Rf����	�:�)�JE����B.ٮEA�h����&�ƗĶH(�3�2�_�.a���9���|q9��8�#��d^�͊��b���     