# -*- coding: utf-8 -*-
"""
Prepare WWTN base data
    Download database dump from the site
    Prepare the file for setup on MySQL by:
        - Converting invalid characters
        - Adding drop/create database commands and setting character encoding
        - Adding commands to dump each table to a csv file
    Write out the file
"""
import requests
from bs4 import BeautifulSoup
#%%
# This folder will be used to output the data.
# You can change it to any other location provided that MySQL has permissions to write to it
outFolder = r'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads'


#%%
WWTNPage = 'https://wwtn.history.qmul.ac.uk'
dbPage = WWTNPage + '/database'

#%%
r = requests.get(dbPage)
soup = BeautifulSoup(r.content, 'html.parser') 
tags = soup.find_all('a', href=True)

for tag in tags:
    if tag.text == 'Database schema':
        dbDumpURL = WWTNPage + tag.get("href")
        print(tag.get("href"), tag.text)

        dbDump = requests.get(dbDumpURL)

        if dbDump.status_code == 200: 
            with open('WWTNDump.txt', 'wb') as local_file:
                local_file.write(dbDump.content)
                print(local_file.name)

            with open('WWTNDump.sql', 'wb') as local_file:
                    local_file.write(dbDump.content)
                    print(local_file.name)
#%%
# Read in the file
with open('WWTNDump.txt', 'r') as file :
    sqlScript = file.read()

# Build a list of character substitutions.
# These were found by trial-and-error - so the list may grow with future updates to the WWTN database
subs = []
subs.append(['\x92','’'])
subs.append(['\x134',''])

# Run the substitutions
for sub in subs:
    sqlScript = sqlScript.replace(sub[0], sub[1])

prepends = 'drop database if exists wwtn;'
prepends = prepends + '\n ' + 'create database if not exists wwtn'
prepends = prepends + '\n ' + 'CHARACTER SET utf8mb4;'
prepends = prepends + '\n ' + 'use wwtn;'

sqlScript = sqlScript.replace('DEFAULT CHARSET=latin1;','DEFAULT CHARSET=utf8mb4;')
#%%
tables = [['associated_people',"'uid','relationship','pid'"]
            ,['convent',"'uid','cid','date_from','age_entry','type','mstatus','date_left','reason_left','note','from_type'"]
            ,['convents',"'cid','religorder'"]
            ,['creative_works',"'uid','idx','role','description'"]
            ,['link_types',"'idx','role1','role2'"]
            ,['linkages',"'uid1','idx','uid2'"]
            ,['locations',"'cid','idx','place','date_from','date_to'"]
            ,['notes',"'uid','idx','note'"]
            ,['nuns',"'uid','forename','surname','name_religion','date_birth','date_death','age_death','national_identity','conv','note','namequal','pbirth','pdeath'"]
            ,['office',"'uid','cid','officeid','date_from','date_until','note'"]
            ,['offices',"'idx','office','ranking'"]
            ,['pdfs',"'idx','name'"]
            ,['pdfxuids',"'idx','uid'"]
            ,['people',"'pid','title','forename','surname','suffix','note','distinguish'"]
            ,['people_places',"'pid','plid'"]
            ,['places',"'plid','place','loc','o_p'"]
            ,['professions',"'uid','ordid','date_profession','age_profession','dowry','note'"]
            ,['quotes',"'uid'"]
            ,['relationships',"'idx','relationship'"]
            ,['religorders',"'ordid','name'"]
            ,['srcdocs',"'srcid','srcname'"]
            ,['srcrefs',"'refid','srcid','itemref'"]
            ,['srcxcids',"'srcid','cid'"]
            ,['srcxuids',"'refid','uid'"]
            ,['variants',"'idx','variant'"]
        ]
appends = '\n'
for table in tables:
    tablename = table[0]
    fields = table[1]
    line = 'select ' + fields + ' union all ' + '\n ' \
        + "SELECT * FROM "+ tablename \
        + " INTO OUTFILE '" + '\n ' \
        + outFolder + "/" + tablename + ".csv'" + '\n ' \
        + " FIELDS ENCLOSED BY '\"' TERMINATED BY ',' " + '\n ' \
        + " ESCAPED BY '\"' LINES TERMINATED BY '\\n' ;" + '\n '
    appends = appends + line + '\n '

#%%
sqlScript = prepends + '\n ' + sqlScript + appends
sqlScript = appends

# Write the file out again
with open('WWTNDump.sql', 'w') as file:
    file.write(sqlScript)
