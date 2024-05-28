﻿CREATE TABLE Ogranak(
	OgranakID INT NOT NULL PRIMARY KEY,
	NazivSkole VARCHAR(50) NOT NULL
);

ALTER TABLE Knjiga
ADD
OgranakID INT,
CONSTRAINT FK_Knjiga_Ogranak FOREIGN KEY (OgranakID) REFERENCES Ogranak(OgranakID),
DatumNabavke DATE,
CONSTRAINT CHK_DatumNabavke CHECK(DatumNabavke > DATEFROMPARTS(2000,1,1))