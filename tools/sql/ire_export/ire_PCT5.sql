-- PCT5. ASIAN ALONE WITH ONE ASIAN CATEGORY FOR SELECTED GROUPS
-- designed to work with the IRE Census bulk data exports
-- see http://census.ire.org/data/bulkdata.html
CREATE TABLE ire_pct5 (
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
	pct005001 INTEGER, 
	pct005001_2000 INTEGER, 
	pct005002 INTEGER, 
	pct005002_2000 INTEGER, 
	pct005003 INTEGER, 
	pct005003_2000 INTEGER, 
	pct005004 INTEGER, 
	pct005004_2000 INTEGER, 
	pct005005 INTEGER, 
	pct005005_2000 INTEGER, 
	pct005006 INTEGER, 
	pct005006_2000 INTEGER, 
	pct005007 INTEGER, 
	pct005007_2000 INTEGER, 
	pct005008 INTEGER, 
	pct005008_2000 INTEGER, 
	pct005009 INTEGER, 
	pct005009_2000 INTEGER, 
	pct005010 INTEGER, 
	pct005010_2000 INTEGER, 
	pct005011 INTEGER, 
	pct005011_2000 INTEGER, 
	pct005012 INTEGER, 
	pct005012_2000 INTEGER, 
	pct005013 INTEGER, 
	pct005013_2000 INTEGER, 
	pct005014 INTEGER, 
	pct005014_2000 INTEGER, 
	pct005015 INTEGER, 
	pct005015_2000 INTEGER, 
	pct005016 INTEGER, 
	pct005016_2000 INTEGER, 
	pct005017 INTEGER, 
	pct005017_2000 INTEGER, 
	pct005018 INTEGER, 
	pct005018_2000 INTEGER, 
	pct005019 INTEGER, 
	pct005019_2000 INTEGER, 
	pct005020 INTEGER, 
	pct005020_2000 INTEGER, 
	pct005021 INTEGER, 
	pct005021_2000 INTEGER, 
	pct005022 INTEGER, 
	pct005022_2000 INTEGER, 
	PRIMARY KEY (geoid)
);