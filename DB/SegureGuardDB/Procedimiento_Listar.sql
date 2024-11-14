-- LISTAR

CREATE OR REPLACE FUNCTION Listar_Roles()
RETURNS TABLE(roleid INTEGER, roletype VARCHAR, permissions VARCHAR) AS $$
BEGIN
	RETURN QUERY
	SELECT r.roleid, r.roletype, r.permissions
	FROM roles r;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Usuarios()
RETURNS TABLE(personid INTEGER, firstname VARCHAR, lastname VARCHAR, password_people VARCHAR, phone VARCHAR, email VARCHAR, address_people VARCHAR, birthdate DATE) AS $$
BEGIN
	RETURN QUERY
	SELECT u.personid, u.firstname, u.lastname, u.password_people, u.phone, u.email, u.address_people, u.birthdate
	FROM people u;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Empleados()
RETURNS TABLE(employeeid INTEGER, personid INTEGER, roleid INTEGER, email VARCHAR, employmentstatus VARCHAR) AS $$
BEGIN
	RETURN QUERY
	SELECT e.employeeid, e.personid, e.roleid, e.email, e.employmentstatus  
	FROM Employees e;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Departamentos()
RETURNS TABLE(departmentid INTEGER, departmentname VARCHAR, description_departments TEXT, employeeid INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT d.departmentid, d.departmentname, d.description_departments, d.employeeid
	FROM Departments d;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Entidades()
RETURNS TABLE(entityid INTEGER, entityname VARCHAR, entityaddress VARCHAR, entityphone VARCHAR, registrationdate TIMESTAMP, mainactivity VARCHAR, entitystatus VARCHAR, personid INT) AS $$
BEGIN
	RETURN QUERY
	SELECT e.entityid, e.entityname, e.entityaddress, e.entityphone, e.registrationdate, e.mainactivity, e.entitysatus, e.personid
	FROM entities e;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Activos()
RETURNS TABLE(assetID INTEGER, assettype VARCHAR, assetStatus VARCHAR, assetauantity INTEGER, description_assets TEXT, 
	brand VARCHAR, serialnumber VARCHAR, hardwaredetails VARCHAR, softwaredetails VARCHAR, 
	location_asset VARCHAR, assetcost DECIMAL, entityid INT) AS $$
BEGIN
	RETURN QUERY
	SELECT a.AssetID, a.AssetType, a.AssetStatus, a.AssetQuantity, a.Description_Assets, a.Brand, a.SerialNumber, 
	a.HardwareDetails, a.SoftwareDetails, a.Location_Asset, a.AssetCost, a.EntityID
	FROM Assets a;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Regulaciones()
RETURNS TABLE(regulationid INTEGER, regulationtype VARCHAR, descriptionregulation TEXT, enactmentdate DATE, 
	statusregulation VARCHAR, assetid INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT r.RegulationID, r.RegulationType, r.DescriptionRegulation, r.EnactmentDate, r.StatusRegulation, r.AssetID
	FROM Regulations r;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Riesgos()
RETURNS TABLE(riskid INTEGER, risktype VARCHAR, description_risks TEXT) AS $$
BEGIN
	RETURN QUERY
	SELECT r.RiskID, r.RiskType, r.Description_Risks
	FROM Risks r;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Planes_Accion()
RETURNS TABLE(planid INTEGER, plantype VARCHAR, descriptionaction TEXT, creationdate TIMESTAMP, updatedate TIMESTAMP, 
	statusaction VARCHAR, entityid INTEGER, assetid INTEGER, employeeid INTEGER, riskid INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT a.PlanID, a.PlanType, a.DescriptionAction, a.CreationDate, a.UpdateDate, a.StatusAction, a.EntityID, a.AssetID, a.EmployeeID, a.RiskID
	FROM ActionPlans a;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Eventos()
RETURNS TABLE(eventid INTEGER, eventtype VARCHAR, descriptionevents TEXT, entityid INTEGER, assetid INTEGER, riskid INTEGER, eventdate TIMESTAMP) AS $$
BEGIN
	RETURN QUERY
	SELECT e.EventID, e.EventType, e.DescriptionEvents, e.EntityID, e.AssetID, e.RiskID, e.EventDate
	FROM Events e;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Notificaciones()
RETURNS TABLE(notificationid INTEGER, communicationchannel VARCHAR, descriptionnotifocations TEXT, eventid INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT n.NotificationID, n.CommunicationChannel, n.DescriptionNotifocations, n.EventID 
	FROM Notifications n;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Pruebas()
RETURNS TABLE(testid INTEGER, testtype VARCHAR, descriptiontests TEXT, startdate TIMESTAMP, enddate DATE, 
	statustests VARCHAR, employeeid INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT e.TestID, e.TestType, e.DescriptionTests, e.StartDate, e.EndDate, e.StatusTests, e.EmployeeID
	FROM Tests e;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Reportes()
RETURNS TABLE(historyID INTEGER, affectedtable VARCHAR, operation VARCHAR, operationdate TIMESTAMP, 
	employeeid INTEGER, oldvalue TEXT, newvalue TEXT, primarykeyaffected INTEGER) AS $$
BEGIN
	RETURN QUERY
	SELECT h.HistoryID, h.AffectedTable, h.Operation, h.OperationDate, h.EmployeeID, h.OldValue, h.NewValue, h.PrimaryKeyAffected 
	FROM History h;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION Listar_Auditorias()
RETURNS TABLE(auditid INTEGER, actionaudit VARCHAR, entity VARCHAR, timestampaudit TIMESTAMP, personid INTEGER, 
	firstname VARCHAR, class VARCHAR, ipaddress VARCHAR, useragent VARCHAR) AS $$
BEGIN
	RETURN QUERY
	SELECT a.AuditID, a.ActionAudit, a.Entity, a.TimestampAudit, a.PersonID, a.FirstName, a.Class, a.IPAddress, a.UserAgent 
	FROM AuditLogs a;
END;
$$ LANGUAGE plpgsql;



