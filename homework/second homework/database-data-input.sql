INSERT INTO dbo.KADMINISTRATOR (username, password, ime, telefon)
VALUES 
  ('markrose','haha123','Mark', '3521503852'),
  ('tendawte','passoword','Tenda', '5285103581'),
  ('gilbert23','palmtrees5','Gilbert', '3864271339'),
  ('pekopeko','tuntun12','Peko', '1332569137'),
  ('sans','quesnola%#5Fkf','Sans', '6683925138'),
  ('bennyBoy','ggkeNVS','Benneth', '1196381123'),
  ('treeegdfs','fgljhpewoimt','Teer', '3295712359'),
  ('Tuu_nga','h(MHUHFMSKEJf','Tunga', '2921573983'),
  ('Zendalo','3359dkfhs9v','Zenny', '1935667428'),
  ('Finnito','LFGJISefs','Finnla', '3228859118');
  
  
INSERT INTO dbo.JAZIK (jazik)
VALUES
  ('English'),
  ('Macedonian'),
  ('German'),
  ('Japanese'),
  ('Italian'),
  ('Chinese'),
  ('French');
  
  
INSERT INTO dbo.EMAIL (ime, mail)
VALUES 
  ('Mark','mark@ruzinov.com'),
  ('Jeff','jeffrey@gmail.com'),
  ('Bob','builder@yahoo.com'),
  ('Ken','barb@gmail.com'),
  ('Michael','mikey@outlook.com'),
  ('Lando','norrisgp@hotmail.com'),
  ('Max','verstapp@me.com'),
  ('Lewis','hamster@gmail.com'),
  ('Nigel','berry@facebook.com'),
  ('Coco','kata@gmail.com');
  
INSERT INTO dbo.GALERIJA (preview)
VALUES
  (4135972),
  (2356146),
  (3466234),
  (7543134),
  (7653244),
  (3531346),
  (6532443),
  (1243264),
  (7754234),
  (2352465);
  
INSERT INTO dbo.KDOKUMENT (naslov,jazik_id_jazik_n,dokument,prikaz)
VALUES
  ('Ride of your Life',1,'ride.txt',2),
  ('Tunnel Vision',3,'tunnels.txt',1),
  ('Galaxy Dentures',4,'galaxy.rtf',5),
  ('Simulated Shapes',7,'shapes.txt',4),
  ('Bar Nights',5,'bar.rtf',6),
  ('Talladega Nights',1,'nights.txt',5),
  ('Romance Isn't Dead),6,'romance.txt',3),
  ('One way Down',1,'down.txt',15),
  ('Kingdom Come',9,'kingdom.txt',11),
  ('Finale',2,'finale.rtf',9);
  
INSERT INTO dbo.KNOVOST (adm_id_admin_n,jazik_id_jazik_n,naslov,opis,datum_od,datum_do)
VALUES
  (1,1,'A great title','An Opis',2020-06-11,2020-06-14),
  (6,2,'Theory of Leagues','Opis Dos',2020-09-21,2020-10-08),
  (2,5,'Thunder Dome','Opis Trois',2019-03-22,2019-04-20),
  (3,7,'Genshin Stories','Opis Quattro',2020-07-11,2020-07-17),
  (6,4,'22 Years Later','Legendary Opis',2020-01-12,2021-02-14),
  (1,2,'Louisiana River','Opis',2017-02-11,2018-02-21),
  (2,7,'Motorist Law','Opis 7',2020-05-12,2020-06-02),
  (7,5,'Gun go Boom','Chuckler',2020-09-23,2020-06-14),
  (8,8,'Mission Possible','Peklor',2020-02-15,2020-04-07),
  (4,1,'Open Up','Opeace',2020-11-09,2020-12-24);
  
INSERT INTO dbo.GALERIJA_OPIS (gal_id_galerija,jazik_id_jazik_n,naslov,opis)
VALUES
  (3,1,'Great Gallery Image','Description of the image'),
  (1,1,'Second Image','Description of the second image'),
  (2,3,'Third Image','Description of the third image'),
  (5,6,'Fourth Gallery Image','Description of the fourth image'),
  (6,2,'Fifth Gallery Image','Description of the fifth image'),
  (7,8,'Sixth Gallery Image','Description of the sixth image'),
  (8,3,'Seventh Gallery Image','Description of the seventh image'),
  (4,9,'Eighth Gallery Image','Description of the eighth image'),
  (9,1,'Ninth Gallery Image','Description of the ninth image'),
  (10,5,'Tenth Gallery Image','Description of the tenth image');
  

INSERT INTO dbo.GALERIJA_SLIKA (gal_id_galerija,opis_slika,slika,opis_slika_eng)
VALUES
  (2,'This is an image of the number 2','2.jpg','Description, but in English'),
  (5,'This is an image of the number 5','5.jpg','Description, but in English'),
  (1,'This is an image of the number 1','1.jpg','Description, but in English'),
  (7,'This is an image of the number 7','7.jpg','Description, but in English'),
  (3,'This is an image of the number 3','3.jpg','Description, but in English'),
  (6,'This is an image of the number 6','6.jpg','Description, but in English'),
  (9,'This is an image of the number 9','9.jpg','Description, but in English'),
  (8,'This is an image of the number 8','8.jpg','Description, but in English'),
  (4,'This is an image of the number 4','4.jpg','Description, but in English'),
  (10,'This is an image of the number 10','10.jpg','Description, but in English');
  
INSERT INTO dbo.EMAIL_GRUPA (jazik_id_jazik_n,naziv,aktivna)
VALUES
  (1,'MainGroup',1),
  (2,'Admins',1),
  (3,'Editors',1),
  (6,'Creators',0),
  (4,'Writers',1),
  (8,'Managers',1),
  (5,'Assistants',0),
  (9,'Legal',1),
  (10,'Regulatory',0),
  (7,'Spare',0);
  
INSERT INTO dbo.EMAIL_PORAKA (grupa_id_grupa,datum,naslov,tekst)
VALUES
  (1,2020-04-05,'Push Request','May we push to production? Thanks'),
  (1,2020-04-06,'Push Reply','Of course, please do.'),
  (1,2020-04-07,'Push Request','Great.'),
  (1,2020-04-08,'Push Request','Message 4'),
  (1,2020-04-09,'Push Request','Message 5'),
  (1,2020-04-10,'Push Request','Message 6'),
  (1,2020-04-11,'Push Request','Message 7'),
  (1,2020-04-12,'Push Request','Message 8'),
  (1,2020-04-13,'Push Request','Message 9'),
  (1,2020-04-14,'Push Request','Message 10');
  
INSERT INTO dbo.MAILING (email_id_posetitel,email_id_grupa)
VALUES
  (1,1),
  (2,2),
  (5,6),
  (7,8),
  (8,2),
  (3,10),
  (4,5),
  (9,7),
  (10,4),
  (6,9);
  