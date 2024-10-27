-- Consulta que retorna el usuario, con sus rol, id de empleado

SELECT r.roleid, e.employeeid
FROM employees e
JOIN 
    people p ON e.personid = p.personid
JOIN 
    roles r ON e.roleid = r.roleid
WHERE e.personid = 1089012345;
