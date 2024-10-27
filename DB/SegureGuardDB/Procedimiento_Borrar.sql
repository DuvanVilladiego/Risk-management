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
	

CREATE OR REPLACE FUNCTION public."borrar_persona"(IN persona INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    IF EXISTS (SELECT personid FROM people WHERE personid = persona) THEN
        DELETE FROM people WHERE personid = persona;
    END IF;
END
$BODY$;

CREATE OR REPLACE FUNCTION public."borrar_empleado"(IN empleado INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT employeeid FROM employees WHERE employeeid = empleado) THEN
        DELETE FROM employees WHERE employeeid = empleado;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_departamento"(IN departamento INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT departmentid FROM departments WHERE departmentid = departamento) THEN
        DELETE FROM departments WHERE departmentid = departamento;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_entidad"(IN entidad INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT entityid FROM entities WHERE entityid = entidad) THEN
        DELETE FROM entities WHERE entityid = entidad;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_activo"(IN activo INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT assetid FROM assets WHERE assetid = activo) THEN
        DELETE FROM assets WHERE assetid = activo;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_regulacion"(IN norma INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT regulationId FROM regulations WHERE regulationid = norma) THEN
        DELETE FROM regulations WHERE regulationid = norma;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_riesgo"(IN riesgo INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT riskid FROM risks WHERE riskid = riesgo) THEN
        DELETE FROM risks WHERE riskid = riesgo;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_plan"(IN plan INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT planid FROM actionplans WHERE planid = plan) THEN
        DELETE FROM actionplans WHERE planid = plan;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_evento"(IN evento INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT eventid FROM events WHERE eventid = evento) THEN
        DELETE FROM events WHERE eventid = evento;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_notificacion"(IN notificacion INTEGER)
	RETURNS VOID
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT notificacionid FROM notifications WHERE notificationid = notificacion) THEN
        DELETE FROM notifications WHERE notificationid = notificacion;
    END IF;
END
$$;

CREATE OR REPLACE FUNCTION public."borrar_prueba"(IN prueba INTEGER)
	RETURNS VOID 
	LANGUAGE 'plpgsql'
AS $$
BEGIN
    IF EXISTS (SELECT testid FROM tests WHERE testid = prueba) THEN
        DELETE FROM tests WHERE testid = prueba;
    END IF;
END
$$;
