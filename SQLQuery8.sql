CREATE TABLE Enfants(
    Id INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    FirstName VARCHAR(8) NOT NULL  
  ,LastName  VARCHAR(7) NOT NULL
  ,TutorName VARCHAR(15) NOT NULL
  ,CIN       VARCHAR(7) NOT NULL
  ,Phone     INTEGER  NOT NULL
  ,Adress    VARCHAR(27) NOT NULL
  ,Province  VARCHAR(26) NOT NULL
  ,City      VARCHAR(10) NOT NULL
);

INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Garnier','Marie Durand','S680901',546492456,'102 Boulevard Saint-Germain','Occitanie','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Durand','Antoine Petit','Y672770',263675636,'789 Boulevard Saint-Michel','Provence-Alpes-Côte d''Azur','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Dupont','Camille Laurent','R992982',206960753,'90 Avenue Victor Hugo','Nouvelle-Aquitaine','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Garnier','Claire Martin','F793818',945020039,'110 Rue du Bac','Auvergne-Rhône-Alpes','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Martin','Luc Roux','F538100',520951698,'102 Boulevard Saint-Germain','Auvergne-Rhône-Alpes','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Garnier','Sophie Garnier','Z501289',339026157,'90 Avenue Victor Hugo','Provence-Alpes-Côte d''Azur','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Roux','Sophie Garnier','I334572',396820363,'456 Avenue de la République','Nouvelle-Aquitaine','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Durand','Marie Durand','O311145',977427143,'56 Boulevard du Soleil','Hauts-de-France','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Roux','Marie Durand','L670387',725375658,'110 Rue du Bac','Île-de-France','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Petit','Jacques Blanc','G891262',281229248,'789 Boulevard Saint-Michel','Bretagne','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Blanc','Jacques Blanc','Q902443',181204221,'12 Rue des Fleurs','Provence-Alpes-Côte d''Azur','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Petit','Sophie Garnier','Y954549',485307440,'110 Rue du Bac','Bretagne','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Laurent','Sophie Garnier','V834486',245745017,'123 Rue de la Paix','Normandie','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Lemoine','Sophie Garnier','U415054',182357700,'102 Boulevard Saint-Germain','Grand Est','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Garnier','Jacques Blanc','K271214',292441914,'110 Rue du Bac','Nouvelle-Aquitaine','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Lemoine','Luc Roux','V567945',226209965,'102 Boulevard Saint-Germain','Bretagne','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Garnier','Camille Laurent','S955144',383064166,'90 Avenue Victor Hugo','Bretagne','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Laurent','Pierre Lemoine','E720704',356532324,'123 Rue de la Paix','Occitanie','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Garnier','Jean Dupont','W199341',815379470,'12 Rue des Fleurs','Nouvelle-Aquitaine','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Eva','Roux','Claire Martin','C708897',796157329,'12 Rue des Fleurs','Hauts-de-France','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Moreau','Pierre Lemoine','A752702',347615751,'456 Avenue de la République','Auvergne-Rhône-Alpes','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Garnier','Sophie Garnier','R207767',141477325,'12 Rue des Fleurs','Normandie','Strasbourg');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Blanc','Nicolas Moreau','L914628',717655750,'12 Rue des Fleurs','Occitanie','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Dupont','Pierre Lemoine','E733906',149010516,'123 Rue de la Paix','Auvergne-Rhône-Alpes','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Martin','Claire Martin','V638264',262013431,'456 Avenue de la République','Île-de-France','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Moreau','Sophie Garnier','I236838',276221160,'123 Rue de la Paix','Nouvelle-Aquitaine','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Blanc','Sophie Garnier','N634603',864491847,'78 Rue de la Liberté','Pays de la Loire','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Garnier','Claire Martin','K799105',176256017,'12 Rue des Fleurs','Pays de la Loire','Strasbourg');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Martin','Antoine Petit','U165303',407047853,'78 Rue de la Liberté','Île-de-France','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Roux','Sophie Garnier','I322827',173646367,'56 Boulevard du Soleil','Île-de-France','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Moreau','Camille Laurent','E473280',946683314,'34 Avenue des Champs','Normandie','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Martin','Sophie Garnier','P939477',222260143,'78 Rue de la Liberté','Auvergne-Rhône-Alpes','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Roux','Jean Dupont','H714756',851439399,'789 Boulevard Saint-Michel','Grand Est','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Garnier','Nicolas Moreau','A351320',241214105,'56 Boulevard du Soleil','Nouvelle-Aquitaine','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Laurent','Jacques Blanc','X723301',900225122,'123 Rue de la Paix','Occitanie','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Blanc','Marie Durand','H171587',522968946,'102 Boulevard Saint-Germain','Auvergne-Rhône-Alpes','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Laurent','Marie Durand','O368218',582025564,'34 Avenue des Champs','Grand Est','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Martin','Luc Roux','W375599',391981394,'34 Avenue des Champs','Île-de-France','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Dupont','Luc Roux','A132551',104854438,'102 Boulevard Saint-Germain','Normandie','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Laurent','Claire Martin','I966170',984629175,'78 Rue de la Liberté','Nouvelle-Aquitaine','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Durand','Nicolas Moreau','O499417',651912504,'90 Avenue Victor Hugo','Nouvelle-Aquitaine','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Dupont','Luc Roux','C238026',747498850,'78 Rue de la Liberté','Occitanie','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Roux','Antoine Petit','L695287',172791378,'456 Avenue de la République','Bretagne','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Moreau','Camille Laurent','Q997254',266617475,'456 Avenue de la République','Normandie','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Petit','Jean Dupont','U232692',508829947,'78 Rue de la Liberté','Bretagne','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Martin','Camille Laurent','I348043',753200641,'12 Rue des Fleurs','Île-de-France','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Durand','Pierre Lemoine','A391822',445655812,'789 Boulevard Saint-Michel','Nouvelle-Aquitaine','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Martin','Pierre Lemoine','Y728596',742162290,'102 Boulevard Saint-Germain','Nouvelle-Aquitaine','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Laurent','Pierre Lemoine','T229329',143034543,'56 Boulevard du Soleil','Pays de la Loire','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Blanc','Nicolas Moreau','H253841',975760540,'110 Rue du Bac','Provence-Alpes-Côte d''Azur','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Dupont','Nicolas Moreau','F354429',866052822,'110 Rue du Bac','Nouvelle-Aquitaine','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Moreau','Camille Laurent','Q948032',737750871,'110 Rue du Bac','Provence-Alpes-Côte d''Azur','Strasbourg');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Martin','Nicolas Moreau','Z780582',238232396,'789 Boulevard Saint-Michel','Provence-Alpes-Côte d''Azur','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Roux','Pierre Lemoine','P448476',499464427,'123 Rue de la Paix','Occitanie','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Eva','Laurent','Luc Roux','O873232',550813299,'78 Rue de la Liberté','Normandie','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Durand','Marie Durand','N996975',917432975,'12 Rue des Fleurs','Occitanie','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Petit','Pierre Lemoine','Q357527',584328555,'34 Avenue des Champs','Bretagne','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Garnier','Marie Durand','U592128',960875128,'90 Avenue Victor Hugo','Hauts-de-France','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Roux','Luc Roux','I826652',948811480,'34 Avenue des Champs','Hauts-de-France','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Durand','Sophie Garnier','I728969',701214435,'34 Avenue des Champs','Hauts-de-France','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Eva','Moreau','Marie Durand','M363440',674527238,'12 Rue des Fleurs','Bretagne','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Durand','Jean Dupont','N167552',837576261,'123 Rue de la Paix','Auvergne-Rhône-Alpes','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Lemoine','Claire Martin','O889014',445799951,'90 Avenue Victor Hugo','Nouvelle-Aquitaine','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Grace','Dupont','Marie Durand','X402466',203392657,'110 Rue du Bac','Grand Est','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Dupont','Jacques Blanc','G596479',586350336,'78 Rue de la Liberté','Auvergne-Rhône-Alpes','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Lemoine','Pierre Lemoine','N234151',912067755,'12 Rue des Fleurs','Île-de-France','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Petit','Marie Durand','A979358',968624011,'789 Boulevard Saint-Michel','Bretagne','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Dupont','Marie Durand','Z879779',161183089,'12 Rue des Fleurs','Normandie','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Roux','Pierre Lemoine','C787424',477741996,'789 Boulevard Saint-Michel','Auvergne-Rhône-Alpes','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Garnier','Sophie Garnier','I525061',951449877,'34 Avenue des Champs','Pays de la Loire','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Dupont','Sophie Garnier','Y573458',912062187,'110 Rue du Bac','Provence-Alpes-Côte d''Azur','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Petit','Jean Dupont','A932646',124611410,'90 Avenue Victor Hugo','Bretagne','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Roux','Nicolas Moreau','R192886',819309657,'12 Rue des Fleurs','Bretagne','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Blanc','Jacques Blanc','D540353',895776301,'78 Rue de la Liberté','Hauts-de-France','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Garnier','Jean Dupont','V427192',888942140,'56 Boulevard du Soleil','Normandie','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Laurent','Luc Roux','Y863069',174774307,'56 Boulevard du Soleil','Île-de-France','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Laurent','Luc Roux','Z476715',667385077,'102 Boulevard Saint-Germain','Normandie','Marseille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Martin','Jean Dupont','E116617',262322245,'789 Boulevard Saint-Michel','Nouvelle-Aquitaine','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Roux','Sophie Garnier','A306442',179692360,'12 Rue des Fleurs','Bretagne','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Martin','Jacques Blanc','L434542',498949818,'12 Rue des Fleurs','Hauts-de-France','Strasbourg');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Petit','Antoine Petit','B689748',937509995,'123 Rue de la Paix','Provence-Alpes-Côte d''Azur','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Moreau','Nicolas Moreau','A371789',625744134,'102 Boulevard Saint-Germain','Auvergne-Rhône-Alpes','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Moreau','Marie Durand','N776260',516462917,'123 Rue de la Paix','Occitanie','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Blanc','Pierre Lemoine','K100586',543340627,'56 Boulevard du Soleil','Hauts-de-France','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Martin','Jacques Blanc','B652809',690829656,'789 Boulevard Saint-Michel','Île-de-France','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Bob','Garnier','Claire Martin','M495294',546947353,'90 Avenue Victor Hugo','Auvergne-Rhône-Alpes','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Moreau','Luc Roux','V979465',231979858,'123 Rue de la Paix','Île-de-France','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('David','Dupont','Jacques Blanc','G555132',862110337,'90 Avenue Victor Hugo','Auvergne-Rhône-Alpes','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Lemoine','Jacques Blanc','Z412566',100577493,'456 Avenue de la République','Grand Est','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Garnier','Luc Roux','G761119',254559366,'123 Rue de la Paix','Île-de-France','Bordeaux');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Jack','Martin','Sophie Garnier','X499609',367896241,'34 Avenue des Champs','Nouvelle-Aquitaine','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Martin','Sophie Garnier','H629221',658309858,'78 Rue de la Liberté','Grand Est','Rouen');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Moreau','Jacques Blanc','G435608',548314330,'456 Avenue de la République','Île-de-France','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Alice','Blanc','Claire Martin','K502381',817927756,'123 Rue de la Paix','Île-de-France','Rennes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Petit','Nicolas Moreau','G158008',135365133,'789 Boulevard Saint-Michel','Normandie','Lille');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Isabelle','Blanc','Luc Roux','U679559',536318413,'90 Avenue Victor Hugo','Pays de la Loire','Nantes');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Hugo','Garnier','Antoine Petit','M213758',224372268,'102 Boulevard Saint-Germain','Occitanie','Paris');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Charlie','Dupont','Jacques Blanc','Q807115',989322053,'110 Rue du Bac','Provence-Alpes-Côte d''Azur','Toulouse');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Petit','Pierre Lemoine','O279156',325021384,'102 Boulevard Saint-Germain','Hauts-de-France','Lyon');
INSERT INTO Enfants(FirstName,LastName,TutorName,CIN,Phone,Adress,Province,City) VALUES ('Felix','Laurent','Sophie Garnier','X262996',981746418,'110 Rue du Bac','Pays de la Loire','Lyon');