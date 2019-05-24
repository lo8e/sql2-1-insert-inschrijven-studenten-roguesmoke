USE lo8e_sql2;

INSERT INTO klassen
    (klas_code, slb_code, cohort, opleiding_code) VALUES 
	('lo9e-amo1','brc01', 2019, 'amo'), 
	('lo9e-amo2','rs001', 2019, 'amo'), 
    ('lo9e-amo3','akr02', 2019, 'amo'); 

INSERT INTO studenten (ov_nummer, achternaam, tussenvoegsel, voornaam, geboortedatum, postcode, plaats, gewicht, lengte, inschrijvings_datum) VALUES
	(90000,'Hoo','','Jer','1993-03-21','2212 AB','Laan VM', 78.2, 1.75, '2018-01-01'),
	(90001,'Adje','','Loss','1993-04-22','2213 GS','Noordsingel', 80.3, 1.82, '2018-01-01'),
	(90002,'Tien','','Erik','1993-05-23','2214 TT','Westeinde', 75.5, 1.85, '2018-01-01'),
	(90003,'Bob','','Martijn','1993-06-24','2215 ZZ','Oosteinde', 76.7, 1.84, '2018-01-01');

INSERT INTO klassen_studenten(ov_nummer, klas_code) VALUES
	(90000,'lo9e-amo1'),
	(90001,'lo9e-amo1'),
	(90002,'lo9e-amo2'),
	(90003,'lo9e-amo3');

UPDATE studenten
SET geboortedatum = "1993-05-22"
WHERE ov_nummer = "90001";