

CREATE TABLE oficina(
    id_oficina INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- datos de oficina
INSERT INTO oficina (ciudad, telefono, direccion, departamento, pais)
VALUES
  ('Bogotá', '123456789', 'Calle Principal 123', 'Cundinamarca', 'Colombia'),
  ('Medellín', '987654321', 'Avenida Central 456', 'Antioquia', 'Colombia'),
  ('Cali', '555555555', 'Carrera Principal 789', 'Valle del Cauca', 'Colombia'),
  ('Barranquilla', '999999999', 'Calle Imaginaria 1', 'Atlántico', 'Colombia'),
  ('Cartagena', '111111111', 'Avenida Central 2', 'Bolívar', 'Colombia'),
  ('Santa Marta', '222222222', 'Carrera Ficticia 3', 'Magdalena', 'Colombia'),
  ('Pereira', '333333333', 'Calle Sin Nombre 4', 'Risaralda', 'Colombia'),
  ('Manizales', '444444444', 'Avenida Desconocida 5', 'Caldas', 'Colombia'),
  ('Bucaramanga', '555555555', 'Carrera Inexistente 6', 'Santander', 'Colombia'),
  ('Cúcuta', '666666666', 'Calle Imaginaria 7', 'Norte de Santander', 'Colombia'),
  ('Villavicencio', '777777777', 'Avenida Falsa 8', 'Meta', 'Colombia'),
  ('Ibagué', '888888888', 'Carrera Sin Nombre 9', 'Tolima', 'Colombia'),
  ('Paris', '111222333', 'Rue du Paradis 10', 'Île-de-France', 'Francia'),
  ('Londres', '444555666', 'Baker Street 221B', 'Gran Londres', 'Reino Unido'),
  ('Roma', '777888999', 'Via della Fantasia 123', 'Lazio', 'Italia'),
  ('Nueva York', '123123123', 'Broadway 456', 'Nueva York', 'Estados Unidos'),
  ('Sidney', '456456456', 'George Street 789', 'Nueva Gales del Sur', 'Australia'),
  ('Tokio', '789789789', 'Shibuya Crossing 1', 'Tokio', 'Japón'),
  ('San Francisco', '321321321', 'Golden Gate 2', 'California', 'Estados Unidos'),
  ('Moscú', '654654654', 'Kremlin 3', 'Moscú', 'Rusia'),
  ('Berlín', '987987987', 'Unter den Linden 4', 'Berlín', 'Alemania'),
  ('Amsterdam', '246246246', 'Keizersgracht 5', 'Holanda Septentrional', 'Países Bajos');

  ('Ámsterdam', '777777777', 'Prinsengracht 10', 'Holanda Septentrional', 'Países Bajos'),
  ('Toronto', '888888888', 'King Street 123', 'Ontario', 'Canadá'),
  ('Sao Paulo', '999999999', 'Avenida Paulista 456', 'Sao Paulo', 'Brasil'),
  ('México DF', '101010101', 'Paseo de la Reforma 789', 'Ciudad de México', 'México'),
  ('Buenos Aires', '111111111', 'Avenida 9 de Julio 1', 'Buenos Aires', 'Argentina'),
  ('Barcelona', '121212121', 'Passeig de Gràcia 2', 'Cataluña', 'España'),
  ('Munich', '131313131', 'Marienplatz 3', 'Baviera', 'Alemania'),
  ('Estocolmo', '141414141', 'Drottninggatan 4', 'Estocolmo', 'Suecia'),
  ('Ginebra', '151515151', 'Quai du Mont-Blanc 5', 'Ginebra', 'Suiza'),
  ('Viena', '161616161', 'Kärntner Strasse 6', 'Viena', 'Austria'),
  ('Bruselas', '171717171', 'Grand-Place 7', 'Bruselas', 'Bélgica'),
  ('Atenas', '181818181', 'Ermou Street 8', 'Ática', 'Grecia'),
  ('Dublín', '191919191', 'O\Connell Street 9', 'Dublín', 'Irlanda'),
  ('Oslo', '202020202', 'Karl Johans gate 10', 'Oslo', 'Noruega'),
  ('Lima', '212121212', 'Avenida Javier Prado 11', 'Lima', 'Perú'),
  ('Santiago', '222222222', 'Avenida Providencia 12', 'Santiago', 'Chile'),
  ('Caracas', '232323232', 'Avenida Libertador 13', 'Distrito Capital', 'Venezuela'),
  ('Quito', '242424242', 'Avenida de los Shyris 14', 'Pichincha', 'Ecuador'),
  ('La Paz', '252525252', 'Avenida Arce 15', 'La Paz', 'Bolivia'),
  ('Asunción', '262626262', 'Avenida Mariscal López 16', 'Asunción', 'Paraguay'),
  ('Montevideo', '272727272', '18 de Julio Avenue 17', 'Montevideo', 'Uruguay');

  ('Zurich', '282828282', 'Bahnhofstrasse 18', 'Zurich', 'Suiza'),
  ('Río de Janeiro', '292929292', 'Copacabana Avenue 19', 'Río de Janeiro', 'Brasil'),
  ('Madrid', '303030303', 'Gran Vía 20', 'Comunidad de Madrid', 'España'),
  ('Lisboa', '313131313', 'Avenida da Liberdade 21', 'Lisboa', 'Portugal'),
  ('Bangkok', '323232323', 'Sukhumvit Road 22', 'Bangkok', 'Tailandia'),
  ('Seúl', '333333333', 'Gangnam-gu 23', 'Seúl', 'Corea del Sur'),
  ('Nueva Delhi', '343434343', 'Connaught Place 24', 'Delhi', 'India');


ALTER TABLE oficina CHANGE id id_oficina INT UNIQUE AUTO_INCREMENT;

CREATE TABLE empleado(
    documento INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    id_oficina INT REFERENCES oficina(id_oficina) ,
    jefe VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('454', 'Laina', 'Swaddle', '+86 336 202 8062', 'lswaddle0@php.net', 1, 'Laina Swaddle', 'Mechanical Systems Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('85168', 'Madlin', 'Linnett', '+62 168 775 9745', 'mlinnett1@ihg.com', 2, 'Madlin Linnett', 'Human Resources Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('6835', 'Eleanor', 'Heiner', '+242 467 487 8479', 'eheiner2@globo.com', 3, 'Eleanor Heiner', 'Recruiting Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('09888', 'Nicola', 'Raiment', '+355 517 685 1724', 'nraiment3@buzzfeed.com', 4, 'Nicola Raiment', 'Nurse Practicioner');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('928', 'Brannon', 'Readman', '+86 842 106 7481', 'breadman4@businesswire.com', 5, 'Brannon Readman', 'Sales Representative');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('95194', 'Lauritz', 'McAviy', '+1 213 937 4237', 'lmcaviy5@boston.com', 6, 'Lauritz McAviy', 'Senior Developer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('9036', 'Dorelle', 'Bullen', '+55 213 623 8847', 'dbullen6@chronoengine.com', 7, 'Dorelle Bullen', 'Help Desk Technician');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('34', 'Charmane', 'Crampton', '+598 722 426 6840', 'ccrampton7@about.com', 8, 'Charmane Crampton', 'Nurse');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('000', 'Glynnis', 'Wix', '+1 954 838 2455', 'gwix8@japanpost.jp', 9, 'Glynnis Wix', 'Accounting Assistant II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('81', 'Godiva', 'Chillistone', '+62 149 196 7268', 'gchillistone9@vimeo.com', 10, 'Godiva Chillistone', 'Editor');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('941', 'Devy', 'Schwieso', '+62 420 207 9014', 'dschwiesoa@japanpost.jp', 11, 'Devy Schwieso', 'Social Worker');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('358', 'Decca', 'Bygrove', '+36 262 477 9057', 'dbygroveb@de.vu', 12, 'Decca Bygrove', 'Mechanical Systems Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('09071', 'Ashleigh', 'Wollard', '+967 266 708 1367', 'awollardc@so-net.ne.jp', 13, 'Ashleigh Wollard', 'Compensation Analyst');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('1428', 'Jakie', 'Arkell', '+86 354 888 3113', 'jarkelld@github.io', 14, 'Jakie Arkell', 'Account Executive');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('57578', 'Gillan', 'Sharrier', '+1 617 328 9848', 'gsharriere@soundcloud.com', 15, 'Gillan Sharrier', 'Product Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('88772', 'Ramsay', 'Eaklee', '+351 386 709 8276', 'reakleef@mozilla.com', 16, 'Ramsay Eaklee', 'Dental Hygienist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('885', 'Sumner', 'Abrahams', '+1 144 201 5753', 'sabrahamsg@51.la', 17, 'Sumner Abrahams', 'Product Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('847', 'Woodie', 'Sall', '+55 827 172 3473', 'wsallh@toplist.cz', 18, 'Woodie Sall', 'VP Sales');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('70', 'Derby', 'Raulin', '+234 463 353 8590', 'draulini@pagesperso-orange.fr', 19, 'Derby Raulin', 'Food Chemist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('124', 'Ruy', 'Overpool', '+86 819 308 6450', 'roverpoolj@google.com', 20, 'Ruy Overpool', 'Administrative Assistant II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('347', 'Fabe', 'Calcraft', '+420 680 514 1290', 'fcalcraftk@dropbox.com', 21, 'Fabe Calcraft', 'Chief Design Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('39602', 'Sile', 'Vallow', '+51 404 973 1553', 'svallowl@live.com', 22, 'Sile Vallow', 'Geologist I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('378', 'Baron', 'Di Dello', '+86 787 961 6975', 'bdim@washington.edu', 23, 'Baron Di Dello', 'Design Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('97698', 'Rafe', 'Kibbel', '+55 272 837 6442', 'rkibbeln@tripadvisor.com', 24, 'Rafe Kibbel', 'Speech Pathologist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('337', 'Morty', 'Martine', '+420 714 415 4114', 'mmartineo@google.ru', 25, 'Morty Martine', 'Speech Pathologist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('8', 'Livia', 'Twinbrow', '+967 509 347 3908', 'ltwinbrowp@bigcartel.com', 26, 'Livia Twinbrow', 'General Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('0', 'Tabbie', 'McBay', '+63 969 203 2260', 'tmcbayq@wiley.com', 27, 'Tabbie McBay', 'Marketing Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('99', 'Rodger', 'Findon', '+84 379 909 0073', 'rfindonr@desdev.cn', 28, 'Rodger Findon', 'Computer Systems Analyst III');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('843', 'Bren', 'Hanscom', '+55 805 384 4731', 'bhanscoms@boston.com', 29, 'Bren Hanscom', 'Teacher');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('7', 'Florina', 'Raycroft', '+33 701 334 5897', 'fraycroftt@google.co.uk', 30, 'Florina Raycroft', 'Sales Associate');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('8', 'Lizbeth', 'Wither', '+963 192 749 4429', 'lwitheru@goodreads.com', 31, 'Lizbeth Wither', 'Mechanical Systems Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('36', 'Armando', 'Carnell', '+62 461 946 1830', 'acarnellv@biblegateway.com', 32, 'Armando Carnell', 'Statistician I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('99', 'Roarke', 'Wilkisson', '+351 997 238 4310', 'rwilkissonw@gov.uk', 33, 'Roarke Wilkisson', 'Research Nurse');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('22110', 'Brooke', 'Dalman', '+86 186 132 0461', 'bdalmanx@digg.com', 34, 'Brooke Dalman', 'Accountant III');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('36225', 'Clem', 'Eggleton', '+1 848 338 4317', 'ceggletony@europa.eu', 35, 'Clem Eggleton', 'Budget/Accounting Analyst II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('47577', 'Cynde', 'Yosselevitch', '+504 331 708 7921', 'cyosselevitchz@wikia.com', 36, 'Cynde Yosselevitch', 'Software Test Engineer I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('32', 'Minna', 'Coalbran', '+66 725 902 7619', 'mcoalbran10@hatena.ne.jp', 37, 'Minna Coalbran', 'Project Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('9', 'Beryl', 'Kondratowicz', '+86 147 615 6057', 'bkondratowicz11@techcrunch.com', 38, 'Beryl Kondratowicz', 'Civil Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('0', 'Pauline', 'Kinrade', '+63 966 844 2873', 'pkinrade12@meetup.com', 39, 'Pauline Kinrade', 'Environmental Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('95', 'Paloma', 'Khoter', '+55 914 932 0068', 'pkhoter13@hibu.com', 40, 'Paloma Khoter', 'Health Coach II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('05007', 'Dulcie', 'Gotecliffe', '+963 835 758 1079', 'dgotecliffe14@google.es', 41, 'Dulcie Gotecliffe', 'Junior Executive');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('15971', 'Kristina', 'Mellhuish', '+86 748 229 5567', 'kmellhuish15@addthis.com', 42, 'Kristina Mellhuish', 'Clinical Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('52', 'Joyous', 'Gook', '+63 425 334 1204', 'jgook16@squarespace.com', 43, 'Joyous Gook', 'Physical Therapy Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('82462', 'Maxwell', 'Menloe', '+86 815 918 5071', 'mmenloe17@wordpress.com', 44, 'Maxwell Menloe', 'Clinical Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('392', 'Ibby', 'Lowings', '+212 423 767 1114', 'ilowings18@apache.org', 45, 'Ibby Lowings', 'Legal Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('43165', 'Laurella', 'Dalrymple', '+263 223 922 8685', 'ldalrymple19@washington.edu', 46, 'Laurella Dalrymple', 'Assistant Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('7774', 'Willette', 'Mines', '+230 754 422 6390', 'wmines1a@house.gov', 47, 'Willette Mines', 'Graphic Designer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('80944', 'Peri', 'Woloschin', '+420 983 175 7527', 'pwoloschin1b@diigo.com', 48, 'Peri Woloschin', 'Environmental Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('452', 'Gaylord', 'Hyams', '+81 125 369 5962', 'ghyams1c@reverbnation.com', 49, 'Gaylord Hyams', 'VP Accounting');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('52161', 'Dewie', 'Beaney', '+970 243 498 1915', 'dbeaney1d@chron.com', 50, 'Dewie Beaney', 'Environmental Tech');

insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('662', 'Giles', 'Bamell', '+33 762 954 2208', 'gbamell0@princeton.edu', 1, 'Giles Bamell', 'Dental Hygienist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('0', 'Standford', 'Westcot', '+86 592 486 2255', 'swestcot1@artisteer.com', 2, 'Standford Westcot', 'Nurse');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('54402', 'Myra', 'Killeen', '+7 425 117 3826', 'mkilleen2@cpanel.net', 3, 'Myra Killeen', 'Librarian');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('9', 'Raff', 'Tiron', '+63 413 267 0706', 'rtiron3@csmonitor.com', 4, 'Raff Tiron', 'Data Coordinator');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('5', 'Karrah', 'Gosz', '+84 121 828 9604', 'kgosz4@auda.org.au', 5, 'Karrah Gosz', 'Legal Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('1', 'Richmond', 'Longmire', '+63 417 160 5613', 'rlongmire5@pagesperso-orange.fr', 6, 'Richmond Longmire', 'Director of Sales');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('8', 'Legra', 'Gilhoolie', '+7 959 172 6668', 'lgilhoolie6@unesco.org', 7, 'Legra Gilhoolie', 'Librarian');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('52', 'Zedekiah', 'Joffe', '+48 365 705 5870', 'zjoffe7@toplist.cz', 8, 'Zedekiah Joffe', 'Structural Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('2798', 'Cristin', 'Bicknell', '+48 502 385 8141', 'cbicknell8@taobao.com', 9, 'Cristin Bicknell', 'Quality Control Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('24', 'Greer', 'Sigfrid', '+63 391 901 1307', 'gsigfrid9@furl.net', 10, 'Greer Sigfrid', 'Assistant Manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('6', 'Allie', 'Meace', '+62 471 561 4854', 'ameacea@parallels.com', 11, 'Allie Meace', 'Analog Circuit Design manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('6921', 'Jermaine', 'Nisbet', '+374 333 928 5639', 'jnisbetb@angelfire.com', 12, 'Jermaine Nisbet', 'Software Consultant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('6', 'Jameson', 'Greedy', '+358 600 931 0054', 'jgreedyc@free.fr', 13, 'Jameson Greedy', 'Programmer IV');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('366', 'Gordan', 'Ingleby', '+86 923 482 8601', 'ginglebyd@thetimes.co.uk', 14, 'Gordan Ingleby', 'Legal Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('43', 'Jessica', 'Tadman', '+33 507 222 0003', 'jtadmane@nasa.gov', 15, 'Jessica Tadman', 'Community Outreach Specialist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('10', 'Bear', 'Compston', '+7 998 795 4914', 'bcompstonf@360.cn', 16, 'Bear Compston', 'Food Chemist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('4278', 'Tatiana', 'Sarch', '+84 835 214 4200', 'tsarchg@bbb.org', 17, 'Tatiana Sarch', 'Programmer I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('4', 'Bobbie', 'Guilliland', '+30 278 944 9562', 'bguillilandh@go.com', 18, 'Bobbie Guilliland', 'Developer I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('4322', 'Ford', 'Learmouth', '+62 163 808 9799', 'flearmouthi@is.gd', 19, 'Ford Learmouth', 'Nurse Practicioner');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('6547', 'Iris', 'Ruecastle', '+48 300 240 7834', 'iruecastlej@google.pl', 20, 'Iris Ruecastle', 'Software Test Engineer II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('99', 'Harper', 'Greig', '+62 962 849 9155', 'hgreigk@google.es', 21, 'Harper Greig', 'Help Desk Technician');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('2', 'Doralin', 'Pitway', '+86 184 807 8727', 'dpitwayl@bbc.co.uk', 22, 'Doralin Pitway', 'VP Marketing');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('719', 'Vanya', 'Clynter', '+55 969 114 6921', 'vclynterm@wikimedia.org', 23, 'Vanya Clynter', 'Operator');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('1', 'Concettina', 'Letteresse', '+86 143 724 9890', 'cletteressen@mit.edu', 24, 'Concettina Letteresse', 'Programmer IV');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('3', 'Paulina', 'Pink', '+7 396 670 7000', 'ppinko@github.com', 25, 'Paulina Pink', 'Paralegal');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('71', 'Kara', 'MacGilfoyle', '+86 616 852 0011', 'kmacgilfoylep@chronoengine.com', 26, 'Kara MacGilfoyle', 'Quality Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('46707', 'Sissie', 'Madeley', '+7 903 276 8534', 'smadeleyq@last.fm', 27, 'Sissie Madeley', 'VP Product Management');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('8612', 'Korella', 'Bradder', '+86 308 825 8583', 'kbradderr@yale.edu', 28, 'Korella Bradder', 'Technical Writer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('4', 'Jonas', 'Kleinpeltz', '+55 988 518 2370', 'jkleinpeltzs@wikispaces.com', 29, 'Jonas Kleinpeltz', 'Staff Accountant III');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('9116', 'Lynnea', 'Cleevely', '+54 686 493 0920', 'lcleevelyt@squarespace.com', 30, 'Lynnea Cleevely', 'Executive Secretary');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('04092', 'Juan', 'Kolodziejski', '+353 179 778 0610', 'jkolodziejskiu@redcross.org', 31, 'Juan Kolodziejski', 'Financial Analyst');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('30341', 'Tad', 'Smethurst', '+54 771 213 7786', 'tsmethurstv@nature.com', 32, 'Tad Smethurst', 'Financial Advisor');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('73', 'Adolphus', 'Van der Hoeven', '+62 178 385 1391', 'avanw@amazon.co.uk', 33, 'Adolphus Van der Hoeven', 'Research Associate');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('79490', 'Lanae', 'Cruxton', '+234 545 809 0669', 'lcruxtonx@washingtonpost.com', 34, 'Lanae Cruxton', 'Sales Associate');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('75877', 'Jerrine', 'Rattry', '+251 456 876 2122', 'jrattryy@hp.com', 35, 'Jerrine Rattry', 'Software Engineer I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('181', 'Burk', 'Phippen', '+7 675 879 6756', 'bphippenz@nsw.gov.au', 36, 'Burk Phippen', 'VP Marketing');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('50374', 'Amalita', 'Jacklings', '+51 312 847 1154', 'ajacklings10@histats.com', 37, 'Amalita Jacklings', 'VP Quality Control');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('79', 'Linc', 'MacKill', '+7 124 271 4127', 'lmackill11@nymag.com', 38, 'Linc MacKill', 'Associate Professor');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('26', 'Velvet', 'Lambarton', '+86 465 363 8671', 'vlambarton12@jugem.jp', 39, 'Velvet Lambarton', 'Health Coach II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('7', 'Carole', 'Elizabeth', '+56 518 819 9854', 'celizabeth13@ed.gov', 40, 'Carole Elizabeth', 'Analog Circuit Design manager');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('3648', 'Norrie', 'Pifford', '+387 705 958 3212', 'npifford14@t.co', 41, 'Norrie Pifford', 'Legal Assistant');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('60', 'Guinevere', 'MacClay', '+55 598 863 9365', 'gmacclay15@google.de', 42, 'Guinevere MacClay', 'Recruiter');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('224', 'Emalee', 'Kamen', '+57 258 252 1916', 'ekamen16@hc360.com', 43, 'Emalee Kamen', 'Engineer III');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('379', 'Lyndel', 'Smissen', '+31 871 293 1516', 'lsmissen17@nymag.com', 44, 'Lyndel Smissen', 'Food Chemist');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('72097', 'Romy', 'Eunson', '+60 255 911 2812', 'reunson18@squarespace.com', 45, 'Romy Eunson', 'Sales Representative');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('30', 'Corie', 'Nystrom', '+86 451 929 3273', 'cnystrom19@hhs.gov', 46, 'Corie Nystrom', 'Biostatistician IV');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('5', 'Lesley', 'Dinjes', '+62 981 243 8922', 'ldinjes1a@guardian.co.uk', 47, 'Lesley Dinjes', 'Accountant II');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('5533', 'Odette', 'Greensides', '+55 121 134 1118', 'ogreensides1b@cloudflare.com', 48, 'Odette Greensides', 'Human Resources Assistant I');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('0181', 'Idell', 'Izatt', '+63 371 109 4869', 'iizatt1c@youtube.com', 49, 'Idell Izatt', 'Civil Engineer');
insert into empleado (documento, nombre, apellido, telefono, correo, id_oficina, jefe, cargo) values ('7', 'Jamaal', 'Manby', '+595 342 110 6300', 'jmanby1d@nytimes.com', 50, 'Jamaal Manby', 'Assistant Professor');

CREATE TABLE cliente(
    id_cliente INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    empresa VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL,
    empleado_atiende INT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (empleado_atiende) REFERENCES empleado(documento)
);


-- Insertar datos para Colombia
INSERT INTO cliente (empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES
    ('Ecopetrol', 'Juan', 'López', '1234567890', 'Calle Falsa 123, Bogotá', 'Cundinamarca', 'Colombia', 1),
    ('Grupo Éxito', 'María', 'González', '2345678901', 'Avenida Principal 456, Medellín', 'Antioquia', 'Colombia', 2),
    ('Bancolombia', 'Andrés', 'Rodríguez', '3456789012', 'Carrera Central 789, Cali', 'Valle del Cauca', 'Colombia', 3),
    ('Postobón', 'Laura', 'Pérez', '4567890123', 'Calle Principal 987, Barranquilla', 'Atlántico', 'Colombia', 4),
    ('Avianca', 'Carlos', 'Gómez', '5678901234', 'Avenida Central 654, Cartagena', 'Bolívar', 'Colombia', 5),
    -- ... Agrega aquí más registros para Colombia

    ('Grupo Aval', 'Sofía', 'Hernández', '6789012345', 'Carrera Principal 321, Bucaramanga', 'Santander', 'Colombia', 1),
    ('Grupo Argos', 'Diego', 'Torres', '7890123456', 'Avenida Central 654, Santa Marta', 'Magdalena', 'Colombia', 2),
    ('ISA', 'Valentina', 'Rojas', '8901234567', 'Calle Principal 987, Pereira', 'Risaralda', 'Colombia', 3),
    ('Bancolombia', 'Luis', 'Ramírez', '9012345678', 'Avenida Central 654, Villavicencio', 'Meta', 'Colombia', 4),
    ('Avianca', 'Ana', 'Sánchez', '0123456789', 'Carrera Principal 321, Manizales', 'Caldas', 'Colombia', 5);

-- Insertar datos para Reino Unido
INSERT INTO cliente (empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES
    ('British Airways', 'Michael', 'Johnson', '1122334455', '123 Fake Street, London', 'England', 'United Kingdom', 6),
    ('BP', 'Sarah', 'Smith', '2233445566', '456 Main Avenue, Manchester', 'Lancashire', 'United Kingdom', 7),
    ('HSBC', 'David', 'Williams', '3344556677', '789 Broad Road, Birmingham', 'West Midlands', 'United Kingdom', 8),
    ('Vodafone', 'Emma', 'Brown', '4455667788', '987 High Street, Glasgow', 'Scotland', 'United Kingdom', 9),
    ('Tesco', 'James', 'Taylor', '5566778899', '654 Elm Lane, Cardiff', 'Wales', 'United Kingdom', 10),
    -- ... Agrega aquí más registros para Reino Unido

    ('Jaguar Land Rover', 'Olivia', 'Davies', '6677889900', '321 Oak Close, Belfast', 'Northern Ireland', 'United Kingdom', 6),
    ('Barclays', 'William', 'Wilson', '7788990011', '654 Pine Road, Edinburgh', 'Scotland', 'United Kingdom', 7),
    ('Sainsbury\s', 'Sophie', 'Evans', '8899001122', '987 Maple Avenue, Liverpool', 'Merseyside', 'United Kingdom', 8),
    ('Lloyds Banking Group', 'Daniel', 'Jones', '9900112233', '321 Elm Street, Bristol', 'England', 'United Kingdom', 9),
    ('Virgin Atlantic', 'Emily', 'Clark', '0011223344', '654 Cedar Lane, Leeds', 'West Yorkshire', 'United Kingdom', 10);
    -- Insertar datos adicionales para Colombia
INSERT INTO cliente (empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES
    ('Grupo Nutresa', 'Isabella', 'Gómez', '2233445566', '123 Main Street, Bogotá', 'Cundinamarca', 'Colombia', 11),
    ('Bancolombia', 'Sebastián', 'Hernández', '3344556677', '456 Elm Avenue, Medellín', 'Antioquia', 'Colombia', 12),
    ('Alpina', 'Valentina', 'Ramírez', '4455667788', '789 Oak Road, Cali', 'Valle del Cauca', 'Colombia', 13),
    ('Grupo Éxito', 'Matías', 'Torres', '5566778899', '987 Cedar Lane, Barranquilla', 'Atlántico', 'Colombia', 14),
    ('Avianca', 'Julieta', 'Sánchez', '6677889900', '321 Maple Avenue, Cartagena', 'Bolívar', 'Colombia', 15),
    -- ... Agrega aquí más registros para Colombia

    ('Grupo Aval', 'Gabriel', 'Hernández', '7788990011', '654 Elm Street, Bucaramanga', 'Santander', 'Colombia', 16),
    ('Grupo Argos', 'Lucía', 'González', '8899001122', '987 Pine Road, Santa Marta', 'Magdalena', 'Colombia', 17),
    ('ISA', 'Benjamín', 'Rojas', '9900112233', '321 Cedar Lane, Pereira', 'Risaralda', 'Colombia', 18),
    ('Bancolombia', 'Santiago', 'Ramírez', '0011223344', '654 Maple Avenue, Villavicencio', 'Meta', 'Colombia', 19),
    ('Avianca', 'Camila', 'Sánchez', '1122334455', '987 Elm Street, Manizales', 'Caldas', 'Colombia', 20),
    -- ... Agrega aquí más registros para Colombia

    ('Grupo Nutresa', 'Isabella', 'Gómez', '2233445566', '123 Main Street, Bogotá', 'Cundinamarca', 'Colombia', 21),
    ('Bancolombia', 'Sebastián', 'Hernández', '3344556677', '456 Elm Avenue, Medellín', 'Antioquia', 'Colombia', 22),
    ('Alpina', 'Valentina', 'Ramírez', '4455667788', '789 Oak Road, Cali', 'Valle del Cauca', 'Colombia', 23),
    ('Grupo Éxito', 'Matías', 'Torres', '5566778899', '987 Cedar Lane, Barranquilla', 'Atlántico', 'Colombia', 24),
    ('Avianca', 'Julieta', 'Sánchez', '6677889900', '321 Maple Avenue, Cartagena', 'Bolívar', 'Colombia', 25),
    -- ... Agrega aquí más registros para Colombia

    ('Grupo Aval', 'Gabriel', 'Hernández', '7788990011', '654 Elm Street, Bucaramanga', 'Santander', 'Colombia', 26),
    ('Grupo Argos', 'Lucía', 'González', '8899001122', '987 Pine Road, Santa Marta', 'Magdalena', 'Colombia', 27),
    ('ISA', 'Benjamín', 'Rojas', '9900112233', '321 Cedar Lane, Pereira', 'Risaralda', 'Colombia', 28),
    ('Bancolombia', 'Santiago', 'Ramírez', '0011223344', '654 Maple Avenue, Villavicencio', 'Meta', 'Colombia', 29),
    ('Avianca', 'Camila', 'Sánchez', '1122334455', '987 Elm Street, Manizales', 'Caldas', 'Colombia', 30),
    -- ... Agrega aquí más registros para Colombia

-- Insertar datos adicionales para Reino Unido
INSERT INTO cliente (empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende)
VALUES
    ('British Airways', 'Michael', 'Johnson', '2233445566', '123 Fake Street, London', 'England', 'United Kingdom', 31),
    ('BP', 'Sarah', 'Smith', '3344556677', '456 Main Avenue, Manchester', 'Lancashire', 'United Kingdom', 32),
    ('HSBC', 'David', 'Williams', '4455667788', '789 Broad Road, Birmingham', 'West Midlands', 'United Kingdom', 33),
    ('Vodafone', 'Emma', 'Brown', '5566778899', '987 High Street, Glasgow', 'Scotland', 'United Kingdom', 34),
    ('Tesco', 'James', 'Taylor', '6677889900', '321 Elm Lane, Cardiff', 'Wales', 'United Kingdom', 35),
    -- ... Agrega aquí más registros para Reino Unido

    ('Jaguar Land Rover', 'Olivia', 'Davies', '7788990011', '654 Oak Close, Belfast', 'Northern Ireland', 'United Kingdom', 36),
    ('Barclays', 'William', 'Wilson', '8899001122', '987 Elm Road, Edinburgh', 'Scotland', 'United Kingdom', 37),
    ('Sainsbury\s', 'Sophie', 'Evans', '9900112233', '321 Maple Avenue, Liverpool', 'Merseyside', 'United Kingdom', 38),
    ('Lloyds Banking Group', 'Daniel', 'Jones', '0011223344', '654 Pine Street, Bristol', 'England', 'United Kingdom', 39),
    ('Virgin Atlantic', 'Emily', 'Clark', '1122334455', '987 Cedar Lane, Leeds', 'West Yorkshire', 'United Kingdom', 40),
    -- ... Agrega aquí más registros para Reino Unido

    ('British Airways', 'Michael', 'Johnson', '2233445566', '123 Fake Street, London', 'England', 'United Kingdom', 41),
    ('BP', 'Sarah', 'Smith', '3344556677', '456 Main Avenue, Manchester', 'Lancashire', 'United Kingdom', 42),
    ('HSBC', 'David', 'Williams', '4455667788', '789 Broad Road, Birmingham', 'West Midlands', 'United Kingdom', 43),
    ('Vodafone', 'Emma', 'Brown', '5566778899', '987 High Street, Glasgow', 'Scotland', 'United Kingdom', 44),
    ('Tesco', 'James', 'Taylor', '6677889900', '321 Elm Lane, Cardiff', 'Wales', 'United Kingdom', 45),
    -- ... Agrega aquí más registros para Reino Unido

    ('Jaguar Land Rover', 'Olivia', 'Davies', '7788990011', '654 Oak Close, Belfast', 'Northern Ireland', 'United Kingdom', 46),
    ('Barclays', 'William', 'Wilson', '8899001122', '987 Elm Road, Edinburgh', 'Scotland', 'United Kingdom', 47),
    ('Sainsbury\s', 'Sophie', 'Evans', '9900112233', '321 Maple Avenue, Liverpool', 'Merseyside', 'United Kingdom', 48),
    ('Lloyds Banking Group', 'Daniel', 'Jones', '0011223344', '654 Pine Street, Bristol', 'England', 'United Kingdom', 49),
    ('Virgin Atlantic', 'Emily', 'Clark', '1122334455', '987 Cedar Lane, Leeds', 'West Yorkshire', 'United Kingdom', 50);
