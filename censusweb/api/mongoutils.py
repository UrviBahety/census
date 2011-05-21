from django.conf import settings
from pymongo import Connection, ASCENDING

from constants import *

def get_geographies_collection():
    connection = Connection()
    db = connection[settings.CENSUS_DB] 
    return db[settings.GEOGRAPHIES_COLLECTION]

def get_labels_collection():
    connection = Connection()
    db = connection[settings.CENSUS_DB] 
    return db[settings.LABELS_COLLECTION]

def get_counties_by_state(state):
    geographies = get_geographies_collection()

    counties = geographies.find({ 'metadata.STATE': state, 'sumlev': SUMLEV_COUNTY }, fields=['geoid', 'metadata.NAME'], sort=[('metadata.NAME', ASCENDING)])

    return [(c['metadata']['NAME'], c['geoid']) for c in counties] 

def get_places_by_state(state):
    geographies = get_geographies_collection()

    places = geographies.find({ 'metadata.STATE': state, 'sumlev': SUMLEV_PLACE }, fields=['geoid', 'metadata.NAME'], sort=[('metadata.NAME', ASCENDING)])

    return [(p['metadata']['NAME'], p['geoid']) for p in places] 

def get_tracts_by_county(county_geoid):
    state_fips  = county_geoid[0:2]
    county_fips = county_geoid[2:]

    geographies = get_geographies_collection()

    tracts = geographies.find({ 'metadata.STATE': state_fips, 'metadata.COUNTY': county_fips, 'sumlev': SUMLEV_TRACT }, fields=['geoid', 'metadata.NAME'], sort=[('metadata.NAME', ASCENDING)])

    return [(t['metadata']['NAME'], t['geoid']) for t in tracts] 

def get_geography(geoid):
    geographies = get_geographies_collection()
    return geographies.find_one({ 'geoid': geoid })

def get_geographies_list(geoids):
    collection = get_geographies_collection()
    raw_geographies = list( collection.find({ 'geoid': { "$in": geoids } }) )
    
    # Re-order `raw_geographies` into the original order of the `geoids` input
    geo_list = []
    for geoid in geoids:
        g = filter(lambda item: item['geoid'] == geoid, raw_geographies)
        # Same location can be entered multiple times, but they're all equvalent.
        # Fail if 0, grab first match otherwise.
        if len(g) == 0:
            continue
        geo_list.append( g[0] )
    return geo_list

def get_labels_for_table(year, table):
    labels = get_labels_collection()

    return labels.find_one({ 'year': year, 'key': table })

def get_tables_for_year(year):
    labels = get_labels_collection()

    return sorted([x['key'] for x in labels.find({'year' : '2010' },fields=['key'])])