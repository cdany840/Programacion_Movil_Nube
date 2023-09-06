-- Crear la tabla Dirección
CREATE TABLE Dirección (
    cveDireccion INT PRIMARY KEY,
    nomDireccion VARCHAR(255)
);

-- Crear la tabla Departamento
CREATE TABLE Departamento (
    cveDepartamento INT PRIMARY KEY,
    nomDepartamento VARCHAR(255),
    cveDireccion INT,
    FOREIGN KEY (cveDireccion) REFERENCES Dirección(cveDireccion)
);

-- Crear la tabla Tipo de Proyecto
CREATE TABLE TipoProyecto (
    cveTipoProyecto INT PRIMARY KEY,
    nomTipoProyecto VARCHAR(255)
);

-- Crear la tabla Puesto
CREATE TABLE Puesto (
    cvePuesto INT PRIMARY KEY,
    SueldoBase DECIMAL(10, 2)
);

-- Crear la tabla Empleado
CREATE TABLE Empleado (
    cveEmpleado INT PRIMARY KEY,
    nomEmpleado VARCHAR(255),
    RFC VARCHAR(15),
    cvePuesto INT,
    FOREIGN KEY (cvePuesto) REFERENCES Puesto(cvePuesto)
);

-- Crear la tabla Proyecto
CREATE TABLE Proyecto (
    cveProyecto INT PRIMARY KEY,
    nomProyecto VARCHAR(255),
    cveTipoProyecto INT,
    cveDepartamento INT,
    cveEmpleado INT,
    FOREIGN KEY (cveTipoProyecto) REFERENCES TipoProyecto(cveTipoProyecto),
    FOREIGN KEY (cveDepartamento) REFERENCES Departamento(cveDepartamento),
    FOREIGN KEY (cveEmpleado) REFERENCES Empleado(cveEmpleado)
);

-- Crear la tabla Participación en Proyecto
CREATE TABLE ParticipacionEnProyecto (
    IDParticipacion INT PRIMARY KEY,
    PorcentajeParticipacion DECIMAL(5, 2),
    presupuestoEmp DECIMAL(10, 2),
    cveProyecto INT,
    cveEmpleado INT,
    FOREIGN KEY (cveProyecto) REFERENCES Proyecto(cveProyecto),
    FOREIGN KEY (cveEmpleado) REFERENCES Empleado(cveEmpleado)
);

-- Crear la tabla Concepto de Gasto
CREATE TABLE ConceptoDeGasto (
    cveConceptoGasto INT PRIMARY KEY,
    nomConceptoGasto VARCHAR(255)
);

-- Crear la tabla Presupuesto del Proyecto
CREATE TABLE PresupuestoDelProyecto (
    IDPresupuesto INT PRIMARY KEY,
    conceptoGasto DECIMAL(10, 2),
    cveProyecto INT,
    cveConceptoGasto INT,
    FOREIGN KEY (cveProyecto) REFERENCES Proyecto(cveProyecto),
    FOREIGN KEY (cveConceptoGasto) REFERENCES ConceptoDeGasto(cveConceptoGasto)
);

