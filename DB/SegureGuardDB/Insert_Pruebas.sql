-- insert Pruebas 

INSERT INTO roles (roletype, permissions) VALUES 
('Administrador', 'Crear, Leer, Actualizar, Eliminar'),
('Editor', 'Leer, Actualizar'),
('Moderador', 'Leer, Moderar Comentarios'),
('Usuario', 'Leer'),
('Invitado', 'Leer, Comentarios Limitados');

INSERT INTO people (personid, firstname, lastname, password_people, phone, email, address_people, birthDate) VALUES
(1012345678, 'Juan', 'Pérez', 'password123', '3001234567', 'juan.perez@example.com', 'Calle 123 #45-67, Bogotá', '1985-04-12'),
(1023456789, 'María', 'González', 'securePass!45', '3109876543', 'maria.gonzalez@example.com', 'Carrera 15 #22-55, Medellín', '1990-08-22'),
(1034567890, 'Carlos', 'Ramírez', 'carlito2024', '3125556677', 'carlos.ramirez@example.com', 'Avenida Siempre Viva 742, Cali', '1978-12-05'),
(1045678901, 'Ana', 'Martínez', 'anaMartinez77', '3203334445', 'ana.martinez@example.com', 'Calle 50 #10-20, Barranquilla', '1995-02-14'),
(1056789012, 'Luis', 'Hernández', 'superLuigi99', '3008889990', 'luis.hernandez@example.com', 'Carrera 7 #34-67, Cartagena', '1982-09-30'),
(1067890123, 'Laura', 'Salazar', 'lauraSecure#01', '3014567890', 'laura.salazar@example.com', 'Calle 80 #30-45, Manizales', '1992-11-25'),
(1078901234, 'Fernando', 'Castro', 'fernandoPass21', '3112233445', 'fernando.castro@example.com', 'Carrera 9 #25-15, Bucaramanga', '1988-06-10'),
(1089012345, 'Sofía', 'Mejía', 'sofiaMejia23!', '3029988776', 'sofia.mejia@example.com', 'Avenida Las Palmas #45-20, Medellín', '1996-01-05'),
(1090123456, 'Diego', 'Torres', 'diegoTorres45', '3136655443', 'diego.torres@example.com', 'Calle 10 #20-30, Cali', '1980-03-18'),
(1101234567, 'Valentina', 'López', 'valeLopez$84', '3145566778', 'valentina.lopez@example.com', 'Carrera 40 #18-12, Pereira', '1993-07-22');

INSERT INTO employees (personid, roleid, email, employmentstatus) VALUES
(1067890123, 7, 'laura.salazar@empresa.com', 'Activo'),
(1078901234, 8, 'fernando.castro@empresa.com', 'Activo'),
(1089012345, 7, 'sofia.mejia@empresa.com', 'Activo'),
(1090123456, 8, 'diego.torres@empresa.com', 'Activo'),
(1101234567, 9, 'valentina.lopez@empresa.com', 'Activo');

INSERT INTO departments (departmentname, description_departments, employeeid) VALUES
('Recursos Humanos', 'Gestiona la contratación, capacitación y bienestar de los empleados.', 100),
('Finanzas', 'Maneja la contabilidad, presupuestos y reportes financieros.', 101),
('Marketing', 'Encargado de la promoción, publicidad y comunicación de la empresa.', 102),
('Tecnología', 'Soporte técnico y desarrollo de infraestructura tecnológica.', 103),
('Ventas', 'Responsable de la estrategia de ventas y relaciones con clientes.', 104);

INSERT INTO entities (entityname, entityaddress, entityphone, email, mainactivity, entitystatus, personid) VALUES
('Tech Solutions S.A.S', 'Calle 101 #10-20', '3007654321', 'contact@techsolutions.com', 'Desarrollo de Software', 'Activo', 1012345678),
('Servicios Globales Ltda', 'Carrera 20 #15-30', '3112345678', 'info@serviciosglobales.com', 'Consultoría', 'Activo', 1023456789),
('Innovatech Corp', 'Avenida 50 #40-60', '3208765432', 'support@innovatech.com', 'Tecnología', 'Activo', 1034567890),
('Salud y Vida', 'Calle 23 #45-67', '3107654321', 'contacto@saludyvida.com', 'Servicios Médicos', 'Activo', 1045678901),
('Logística y Transporte S.A.', 'Carrera 33 #22-44', '3023456789', 'contacto@logisticaytransporte.com', 'Logística', 'Activo', 1056789012);

INSERT INTO assets (assettype, assetstatus, assetquantity, description_assets, brand, serialnumber, hardwaredetails, softwaredetails, location_asset, assetcost, entityid) VALUES
('Laptop', 'Disponible', 10, 'Laptop para desarrollo de software', 'Dell', 'SN123456789', '16GB RAM, 512GB SSD', 'Windows 11 Pro', 'Oficina Principal', 1200.00, 4),
('Impresora', 'En uso', 5, 'Impresora multifuncional color', 'HP', 'SN987654321', 'Impresión a color, escáner', 'N/A', 'Oficina Principal', 300.00, 5),
('Servidor', 'Disponible', 2, 'Servidor para manejo de datos', 'Cisco', 'SN135792468', '32GB RAM, 2TB HDD', 'Ubuntu Server', 'Sala de Servidores', 4000.00, 6),
('Monitor', 'Disponible', 15, 'Monitor de 24 pulgadas', 'LG', 'SN246813579', '1920x1080', 'N/A', 'Oficina Principal', 150.00, 7),
('Router', 'En uso', 8, 'Router para red interna', 'TP-Link', 'SN102938475', 'AC750', 'N/A', 'Sala de Servidores', 80.00, 8);

INSERT INTO regulations (regulationtype, descriptionregulation, enactmentdate, statusregulation, assetid) VALUES
('Norma de Seguridad', 'Establece las medidas de seguridad para la protección de laptops contra robos.', '2023-01-15', 'Vigente', 100),
('Norma de Uso', 'Regula el uso responsable de impresoras en la oficina, limitando el uso personal.', '2023-03-10', 'Vigente', 101),
('Norma Ambiental', 'Norma para la correcta disposición de equipos electrónicos al final de su vida útil.', '2022-05-20', 'Vigente', 102),
('Norma de Mantenimiento', 'Establece las pautas para el mantenimiento regular de servidores.', '2023-02-05', 'Vigente', 103),
('Norma de Conectividad', 'Regula la instalación y configuración de routers en la red corporativa.', '2023-04-25', 'Vigente', 104);

INSERT INTO risks (risktype, description_risks, levelrisk) VALUES
('Robo', 'Posibilidad de que los activos físicos sean robados de la oficina.', 'Alto'),
('Fuga de Datos', 'Riesgo de filtración de información sensible debido a un ciberataque.', 'Crítico'),
('Fallo Técnico', 'Fallo en el hardware o software que afecta la operatividad.', 'Medio'),
('Cumplimiento Normativo', 'Riesgo de no cumplir con regulaciones aplicables a los activos.', 'Alto'),
('Desastres Naturales', 'Impacto de desastres naturales que pueden dañar instalaciones y activos.', 'Bajo');

INSERT INTO actionplans (plantype, descriptionaction, statusaction, entityid, assetid, employeeid, riskid) VALUES
('Plan de Mitigación', 'Implementar medidas de seguridad para prevenir robos de laptops.', 'En Proceso', 4, 100, 100, 2),
('Plan de Respuesta', 'Desarrollar un protocolo de respuesta ante fugas de datos.', 'Finalizado', 5, 101, 101, 3),
('Plan de Mantenimiento', 'Realizar mantenimiento preventivo a los servidores cada tres meses.', 'En Proceso', 6, 102, 102, 4),
('Plan de Capacitación', 'Capacitar a los empleados en cumplimiento normativo.', 'Finalizado', 7, 103, 103, 5),
('Plan de Contingencia', 'Desarrollar un plan de contingencia ante desastres naturales.', 'En Proceso', 8, 104, 104, 6);

INSERT INTO events (eventtype, descriptionevents, entityid, assetid, riskid) VALUES
('Incidente de Robo', 'Robo de 2 laptops de la oficina durante la noche.', 4, 100, 2),
('Fuga de Datos', 'Filtración de datos sensibles debido a un ataque cibernético.', 5, 101, 3),
('Fallo del Sistema', 'Fallo en el servidor que resultó en tiempo de inactividad.', 6, 102, 4),
('Cumplimiento Normativo', 'Auditoría de cumplimiento normativo realizada sin incidentes.', 7, 103, 5),
('Desastre Natural', 'Inundación en las instalaciones que afectó a varios activos.', 8, 104, 6);

INSERT INTO notifications (descriptionnotifocations, eventid, personid, entityid) VALUES
('Notificación de robo de laptops. Se recomienda revisar las cámaras de seguridad.', 1, 1012345678, 4),
('Alerta de fuga de datos. Se requiere acción inmediata para mitigar el riesgo.', 2, 1023456789, 5),
('Notificación de fallo del sistema. Se está investigando la causa.', 3, 1034567890, 6),
('Informe de auditoría: Cumplimiento normativo exitoso.', 4, 1045678901, 7),
('Advertencia sobre inundación en las instalaciones. Se recomienda evacuar.', 5, 1056789012, 8);

INSERT INTO tests (testtype, descriptiontests, enddate, statustests, employeeid) VALUES
('Simulación de Robo', 'Realizar una simulación de robo para evaluar las medidas de seguridad.', '2024-12-01', 'En Proceso', 100),
('Prueba de Seguridad de Datos', 'Evaluar la seguridad de los sistemas para prevenir filtraciones de datos.', '2024-11-15', 'En Revisión', 101),
('Mantenimiento del Sistema', 'Llevar a cabo mantenimiento preventivo del servidor para evitar fallos.', '2024-11-30', 'En Proceso', 102),
('Auditoría de Cumplimiento', 'Revisar el cumplimiento de las normas y procedimientos.', '2024-12-10', 'En Revisión', 103),
('Emergencia por Inundación', 'Desarrollar un plan de respuesta ante inundaciones.', '2024-11-20', 'Completado', 104);

INSERT INTO auditLogs (actionaudit, entity, timestampaudit, personid, firstname, class, ipaddress, useragent) VALUES
('Creación de entidad', 'Entities', CURRENT_TIMESTAMP, 1012345678, 'Juan Pérez', 'EntityManagement', '192.168.1.10', 'Mozilla/5.0'),
('Actualización de roles', 'Roles', CURRENT_TIMESTAMP, 1023456789, 'María González', 'RoleManagement', '192.168.1.11', 'Chrome/90.0'),
('Eliminación de activos', 'Assets', CURRENT_TIMESTAMP, 1034567890, 'Carlos Ramírez', 'AssetManagement', '192.168.1.12', 'Safari/14.0'),
('Auditoría de cumplimiento', 'Compliance', CURRENT_TIMESTAMP, 1067890123, 'Laura Salazar', 'Audit', '192.168.1.13', 'Firefox/88.0'),
('Registro de eventos de seguridad', 'Events', CURRENT_TIMESTAMP,1101234567, 'Valentina López', 'EventLogging', '192.168.1.14', 'Edge/91.0');


