-- PCT22E. GROUP QUARTERS POPULATION BY SEX  BY GROUP QUARTERS TYPE FOR THE POPULATION 18 YEARS AND OVER (NATIVE HAWAIIAN AND OTHER PACIFIC ISLANDER ALONE)
-- designed to work with the IRE Census bulk data exports
-- see http://census.ire.org/data/bulkdata.html
CREATE TABLE ire_pct22e (
	geoid VARCHAR(11) NOT NULL, 
	sumlev VARCHAR(3) NOT NULL, 
	state VARCHAR(2) NOT NULL, 
	county VARCHAR(3), 
	cbsa VARCHAR(5), 
	csa VARCHAR(3), 
	necta VARCHAR(5), 
	cnecta VARCHAR(3), 
	name VARCHAR(90) NOT NULL, 
	pop100 INTEGER NOT NULL, 
	hu100 INTEGER NOT NULL, 
	pop100_2000 INTEGER, 
	hu100_2000 INTEGER, 
	pct022e001 INTEGER, 
	pct022e001_2000 INTEGER, 
	pct022e002 INTEGER, 
	pct022e002_2000 INTEGER, 
	pct022e003 INTEGER, 
	pct022e003_2000 INTEGER, 
	pct022e004 INTEGER, 
	pct022e004_2000 INTEGER, 
	pct022e005 INTEGER, 
	pct022e005_2000 INTEGER, 
	pct022e006 INTEGER, 
	pct022e006_2000 INTEGER, 
	pct022e007 INTEGER, 
	pct022e007_2000 INTEGER, 
	pct022e008 INTEGER, 
	pct022e008_2000 INTEGER, 
	pct022e009 INTEGER, 
	pct022e009_2000 INTEGER, 
	pct022e010 INTEGER, 
	pct022e010_2000 INTEGER, 
	pct022e011 INTEGER, 
	pct022e011_2000 INTEGER, 
	pct022e012 INTEGER, 
	pct022e012_2000 INTEGER, 
	pct022e013 INTEGER, 
	pct022e013_2000 INTEGER, 
	pct022e014 INTEGER, 
	pct022e014_2000 INTEGER, 
	pct022e015 INTEGER, 
	pct022e015_2000 INTEGER, 
	pct022e016 INTEGER, 
	pct022e016_2000 INTEGER, 
	pct022e017 INTEGER, 
	pct022e017_2000 INTEGER, 
	pct022e018 INTEGER, 
	pct022e018_2000 INTEGER, 
	pct022e019 INTEGER, 
	pct022e019_2000 INTEGER, 
	pct022e020 INTEGER, 
	pct022e020_2000 INTEGER, 
	pct022e021 INTEGER, 
	pct022e021_2000 INTEGER, 
	PRIMARY KEY (geoid)
);