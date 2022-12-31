
select 'uid','relationship','pid' union all 
 SELECT * FROM associated_people INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/associated_people.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','cid','date_from','age_entry','type','mstatus','date_left','reason_left','note','from_type' union all 
 SELECT * FROM convent INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/convent.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'cid','religorder' union all 
 SELECT * FROM convents INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/convents.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','idx','role','description' union all 
 SELECT * FROM creative_works INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/creative_works.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','role1','role2' union all 
 SELECT * FROM link_types INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/link_types.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid1','idx','uid2' union all 
 SELECT * FROM linkages INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/linkages.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'cid','idx','place','date_from','date_to' union all 
 SELECT * FROM locations INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/locations.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','idx','note' union all 
 SELECT * FROM notes INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/notes.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','forename','surname','name_religion','date_birth','date_death','age_death','national_identity','conv','note','namequal','pbirth','pdeath' union all 
 SELECT * FROM nuns INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/nuns.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','cid','officeid','date_from','date_until','note' union all 
 SELECT * FROM office INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/office.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','office','ranking' union all 
 SELECT * FROM offices INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/offices.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','name' union all 
 SELECT * FROM pdfs INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pdfs.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','uid' union all 
 SELECT * FROM pdfxuids INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/pdfxuids.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'pid','title','forename','surname','suffix','note','distinguish' union all 
 SELECT * FROM people INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/people.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'pid','plid' union all 
 SELECT * FROM people_places INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/people_places.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'plid','place','loc','o_p' union all 
 SELECT * FROM places INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/places.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid','ordid','date_profession','age_profession','dowry','note' union all 
 SELECT * FROM professions INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/professions.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'uid' union all 
 SELECT * FROM quotes INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/quotes.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','relationship' union all 
 SELECT * FROM relationships INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/relationships.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'ordid','name' union all 
 SELECT * FROM religorders INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/religorders.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'srcid','srcname' union all 
 SELECT * FROM srcdocs INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/srcdocs.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'refid','srcid','itemref' union all 
 SELECT * FROM srcrefs INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/srcrefs.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'srcid','cid' union all 
 SELECT * FROM srcxcids INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/srcxcids.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'refid','uid' union all 
 SELECT * FROM srcxuids INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/srcxuids.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 select 'idx','variant' union all 
 SELECT * FROM variants INTO OUTFILE '
 C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/variants.csv'
  FIELDS ENCLOSED BY '"' TERMINATED BY ',' 
  ESCAPED BY '"' LINES TERMINATED BY '\n' ;
 
 