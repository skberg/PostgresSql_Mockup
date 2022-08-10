CREATE TABLE car(
    car_uid UUID NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT null,
    model VARCHAR(100) NOT null,
    price NUMERIC(19, 2) NOT null);



CREATE TABLE person (
    person_UUID UUID NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100),
    date_of_birth DATE NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_uid UUID REFERENCES car(car_uid),
    UNIQUE(car_uid),
    UNIQUE(email));





insert into person (person_UUID, first_name, last_name,gender,email,date_of_birth,country_of_birth) values ( uuid_generate_v4(),'Jesse', 'Jochens', 'Male', 'jjochens0@craigslist.org', '2021-05-26', 'Indonesia');
insert into person (person_UUID, first_name, last_name,gender,email,date_of_birth,country_of_birth) values (uuid_generate_v4(),'Dugald', 'Hanwell', 'Male', 'dhanwell6@ow.ly', '2022-01-05', 'Costa Rica');
insert into person (person_UUID, first_name, last_name,gender,email,date_of_birth,country_of_birth) values (uuid_generate_v4(),'Gerik', 'O''Halligan', 'Genderqueer', 'gohalligan9@bizjournals.com', '2022-04-27', 'Thailand');
insert into person (person_UUID, first_name, last_name,gender,email,date_of_birth,country_of_birth) values (uuid_generate_v4(),'Teri', 'Jewell', 'Female', 'tjewellb@mayoclinic.com', '2021-05-26', 'Poland');
insert into person (person_UUID, first_name, last_name,gender,email,date_of_birth,country_of_birth) values (uuid_generate_v4(),'Willy', 'Marklin', 'Male', 'wmarklinq@biglobe.ne.jp', '2021-11-01', 'Ecuador');



insert into car (car_uid, make, model, price) values ( uuid_generate_v4(),'Buick', 'Roadmaster', 75054);
insert into car (car_uid, make, model, price) values ( uuid_generate_v4(),'Suzuki', 'SJ', 64012);
insert into car (car_uid, make, model, price) values ( uuid_generate_v4(),'Oldsmobile', 'Intrigue', 77266);
insert into car (car_uid, make, model, price) values ( uuid_generate_v4(),'GMC', 'Sierra 1500', 96281);
insert into car (car_uid, make, model, price) values ( uuid_generate_v4(),'Volkswagen', 'GTI', 243820);