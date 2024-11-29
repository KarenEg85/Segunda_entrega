USE nomina

-- Insertando datos en la tabla nomEmpleado

INSERT INTO nomina.nomEmpleado (Nombre, ApellidoPaterno, ApellidoMaterno, FechaNacimiento, RFC, CURP, Direccion, FechaIngreso) VALUES
('Edgar', 'Breton', 'Madero', '2000-08-12', 'BAME000812K09', 'BAME000812HDFTRL01', 'Francisco Petrarca 223, 11560', '2023-11-21'),
('Bladimir', 'Serrano', 'Ramirez', '1987-05-10', 'SBRA870519MG7', 'SBRA870519HDFSRR09', 'Homero 205, 11560', '2012-06-09'),
('Jorge Ivan', 'Martinez', 'Perez', '1988-12-17', 'MPJI881217RR5', 'MPJI881217HDFDFT88', 'Horacio 302, 11560', '2023-09-24');


-- Insertando datos en la tabla nomRazonSocial

INSERT INTO nomina.nomRazonSocial (DesRazonSocial, RFC, Direccion) VALUES
('BRECOM', 'BREC110313FG5', 'Newton 56'),
('PERME', 'PERM160112RT7', 'Anzures 69'),
('ATLEM', 'BREC110313FGC', 'Popotla 78');


-- Insertando datos en la tabla nomPuesto

INSERT INTO nomina.nomPuesto (Puesto) VALUES
('Director'),
('Administrador'),
('Operativo');


-- Insertando datos en la tabla nomAguinaldo

INSERT INTO nomina.nomAguinaldo (Descripcion, Dias) VALUES
('Aguinaldo 1','15'),
('Aguinaldo 2','30'),
('Aguinaldo 3','45');

-- Insertando datos en la tabla nomVacaciones

INSERT INTO nomina.nomAguinaldo (Descripcion, Dias) VALUES
('VA 1','12');


-- Insertando datos en la tabla nomRegistroPatronal

INSERT INTO nomina.nomRegistroPatronal (NumeroPatronal, Descripción) VALUES
('Y5432378','BRECOM C1'),
('Y6472771','PERME C5'),
('Y9734853','ATLEM C2');


-- Insertando datos en la tabla CatConstanteConcepto

INSERT INTO nomina.CatConstanteConcepto (Descripcion, ClaveSAT) VALUES
('SUELDO','001'),
('IMPUESTO RETENIDO','002'),
('VACACIONES','001');

-- Insertando datos en la tabla  CatConstanteNomina

INSERT INTO nomina.CatConstanteNomina (Descripcion, ClaveSAT) VALUES
('ORDINARIA','O'),
('EXTRAORDINARIA','E');

-- Insertando datos en la tabla nomTipoConcepto

INSERT INTO nomina.nomTipoConcepto (idConstanteConcepto, Descripcion) VALUES
('001','SUELDOS Y SALARIOS'),
('002','ISR'),
('001','SUELDOS Y SALARIOS');

-- Insertando datos en la tabla nomTipoNomina

INSERT INTO nomina.nomTipoNomina (idConstanteNomina, idRazonSocial, NombreTipoNomina) VALUES
(O, 01, 'E099'),
(E, 01, 'E099'),
(E, 01, 'E099');


 -- Insertando datos en la tabla nomConceptos

INSERT INTO nomina.nomConceptos (idConstanteConcepto, idTipoConcepto, NombreConcepto, Descripcion, Parametros, Version) VALUES

(001, 'SALABASE', 'IMPORTE', 'PROGRAMA'),
(002, 'IMPURETE', 'IMPORTE', 'PROGRAMA'),
(001, 'VACACION', 'IMPORTE', 'PROGRAMA');


 -- Insertando datos en la tabla nomEmpleadoNomina

INSERT INTO nomina.nomEmpleadoNomina (idRazonSocial, idEmpleado, idTipoNomina, idPuesto, idRegistroPatronal, idAguinaldo, idVacaciones, idConcepto, SalarioDiario, SalarioDiarioIntegrado, SalarioMensual)

(01, 100000, 010, 1000, 01, 01, 01, 01, '248.93', '261.20', '7567.47'),
(01, 100001, 010, 1001, 02, 01, 01, 01, '248.93', '261.20', '7567.47'),
(01, 100002, 010, 1002, 03, 01, 01, 01, '2400.93', '2491', '72988.27');
