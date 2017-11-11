DROP SCHEMA

IF EXISTS DBSportKits;
	CREATE SCHEMA DBSportKits COLLATE = utf8_general_ci;

USE DBSportKits;

CREATE TABLE parent(
	parent_id VARCHAR(10) NOT NULL,
    parent_name VARCHAR(50) NOT NULL,
    parent_lastName VARCHAR(80) NOT NULL,
    parent_password VARCHAR(30) NOT NULL,
    
    parent_bithday DATE NOT NULL,
    parent_address VARCHAR(100),
    parent_email VARCHAR(100) NOT NULL,
    parent_phone VARCHAR(20),
    parent_nameSon VARCHAR(100),
    parent_ageSon INT,
    
    PRIMARY KEY (parent_id)

);

CREATE TABLE coach(
	coach_id VARCHAR(10) NOT NULL,
    coach_name VARCHAR(50) NOT NULL,
    coach_lastName VARCHAR(80) NOT NULL,
    coach_password VARCHAR(30) NOT NULL,
    
    coach_bithday DATE NOT NULL,
    coach_address VARCHAR(100),
    coach_email VARCHAR(100) NOT NULL,
    coach_phone VARCHAR(20),
    coach_trainingLocation VARCHAR(100) NOT NULL,
    coach_registrationDate DATE NOT NULL,
    coach_experenceYears INT,
    coach_points INT NOT NULL,
    coach_description VARCHAR(300),
    
    PRIMARY KEY (coach_id)

);

CREATE TABLE sport(
	sport_id VARCHAR(10) NOT NULL,
    sport_name VARCHAR(50) NOT NULL,
    coach_id VARCHAR(10) NOT NULL,
    
    PRIMARY KEY (sport_id),
    CONSTRAINT sport_coach FOREIGN KEY (coach_id) REFERENCES coach(coach_id) 
    
);

CREATE TABLE agreement(
	agreement_id VARCHAR(10) NOT NULL,
    agreement_date DATE NOT NULL,
    sport_id VARCHAR(10) NOT NULL,
    parent_id VARCHAR(10) NOT NULL,
    
    PRIMARY KEY (agreement_id),
    CONSTRAINT agreement_sport FOREIGN KEY (sport_id) REFERENCES sport(sport_id), 
    CONSTRAINT agreement_parent FOREIGN KEY (parent_id) REFERENCES parent(parent_id)
    
);
/* *************************************************************** 
***************************INSERTING DATA*************************
**************************************************************** */

INSERT INTO parent VALUES ('001', 'eduardo','cuzcano',123456,'2017-10-10','mz 13 l9 armatambo','e_cuzcano@gmail.com',951355302,'giuliana',15);
INSERT INTO parent VALUES ('002', 'victor','rojas',111111,'2002-10-10','AV CHACLA chorrillos','v_rojas@gmail.com',993549102,'macquito',10);
INSERT INTO parent (parent_id,parent_name,parent_lastName,parent_password,parent_bithday,parent_address,parent_email,parent_phone,parent_nameSon,parent_ageSon)
VALUES ('003', 'Eduardo','Rios',222222,'2010-10-10','Av emancipacion de chorrillos','e_rios@gmail.com',951357458,'amadeusito',14);
INSERT INTO parent (parent_id,parent_name,parent_lastName,parent_password,parent_bithday,parent_address,parent_email,parent_phone,parent_nameSon,parent_ageSon)
VALUES ('004', 'pamela','soto',333333,'2014-04-10','Av los chupos nro154-Lima','p_rios@gmail.com',987456456,'victoria',11);
INSERT INTO parent (parent_id,parent_name,parent_lastName,parent_password,parent_bithday,parent_address,parent_email,parent_phone,parent_nameSon,parent_ageSon)
VALUES ('005', 'giuliana','Ramirez',444444,'2012-11-12','Av 28 de julio-Lima','g_ramires@gmail.com',988956321,'juancito',11);


INSERT INTO coach (coach_id,coach_name,coach_lastName,coach_password,coach_bithday,coach_address,coach_email,coach_phone,coach_trainingLocation,coach_registrationDate,coach_experenceYears,coach_points,coach_description)
VALUES ('001', 'Luis','becerra',555555,'2017-10-10','calle los silencio lince','l_becerra@gmail.com',987456123,'Comas','2017-10-10',10,8,'BUENO');
INSERT INTO coach (coach_id,coach_name,coach_lastName,coach_password,coach_bithday,coach_address,coach_email,coach_phone,coach_trainingLocation,coach_registrationDate,coach_experenceYears,coach_points,coach_description)
VALUES ('002', 'marco','casma',666666,'2016-04-14','av las venganzas-comas','m_casma@gmail.com',978524689,'Lince','2016-11-11',8,7,'BUENO');
INSERT INTO coach (coach_id,coach_name,coach_lastName,coach_password,coach_bithday,coach_address,coach_email,coach_phone,coach_trainingLocation,coach_registrationDate,coach_experenceYears,coach_points,coach_description)
VALUES ('003', 'ana','salazar',777777,'2017-11-18','calle las gaviotas 354','a_salazar@gmail.com',897564231,'Independencia','2017-10-18',9,10,'EXCELENTE');
INSERT INTO coach (coach_id,coach_name,coach_lastName,coach_password,coach_bithday,coach_address,coach_email,coach_phone,coach_trainingLocation,coach_registrationDate,coach_experenceYears,coach_points,coach_description)
VALUES ('004', 'jhonny','rojas',888888,'2016-11-10','Av las delicias 345-tupac','j_rojas@gmail.com',987456258,'Chorrillos','2016-04-11',2,5,'REGULAR');
INSERT INTO coach (coach_id,coach_name,coach_lastName,coach_password,coach_bithday,coach_address,coach_email,coach_phone,coach_trainingLocation,coach_registrationDate,coach_experenceYears,coach_points,coach_description)
VALUES ('005', 'elias','boza',999999,'2016-10-10','calle las pleyares la campiña','e_boza@gmail.com',987456258,'Lince','2017-01-10',8,9,'EXCELENTE');



INSERT INTO sport (sport_id,sport_name,coach_id)
VALUES ('001','futbol','001');
INSERT INTO sport (sport_id,sport_name,coach_id)
VALUES ('002','voley','002');
INSERT INTO sport (sport_id,sport_name,coach_id)
VALUES ('003','natacion','003');
INSERT INTO sport (sport_id,sport_name,coach_id)
VALUES ('004','atletismo','004');
INSERT INTO sport (sport_id,sport_name,coach_id)
VALUES ('005','gimnacio','005');


INSERT INTO agreement (agreement_id,agreement_date,sport_id,parent_id)
VALUES ('001','2017-10-10','001','001');
INSERT INTO agreement (agreement_id,agreement_date,sport_id,parent_id)
VALUES ('002','2016-12-20','002','002');
INSERT INTO agreement (agreement_id,agreement_date,sport_id,parent_id)
VALUES ('003','2017-11-11','003','003');
INSERT INTO agreement (agreement_id,agreement_date,sport_id,parent_id)
VALUES ('004','2016-08-11','004','004');
INSERT INTO agreement (agreement_id,agreement_date,sport_id,parent_id)
VALUES ('005','2017-10-10','005','005');
