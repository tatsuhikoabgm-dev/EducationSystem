-- create database education_system
-- CHARACTER SET utf8mb4
-- COLLATE utf8mb4_0900_ai_ci;


-- -- material_typesの作成
-- create table material_types(
-- id int primary key auto_increment,
-- name char(10) not null);

-- insert into material_types(name)
-- values("書籍"),
-- ("DVD"),
-- ("オーディオ"),
-- ("その他");

-- select * from material_types;

-- -- materialsの作成
-- create table materials(
-- id int primary key auto_increment,
-- name char(30) not null,
-- publisher char(30),
-- note varchar(100),
-- material_type_id int not null,
-- created datetime DEFAULT CURRENT_TIMESTAMP,
-- status char(3) not null default "ACT")
-- ;

-- insert into materials
-- (name,publisher,note,material_type_id)
-- values
-- ("実践ビジネス英語１","ABC出版","中級車向け",2),
-- ("実践ビジネス英語２","ABC出版","上級者向け",2),
-- ("わかりやすい論文の書き方","XYZ書房","",1),
-- ("ベートーヴェン全集１","","初期の作品を収録",3),
-- ("ベートーヴェン全集２","","中期の作品を収録",3),
-- ("ベートーヴェン全集３","","後期の作品を収録",3),
-- ("趣味の俳句","ＡＢＣ出版","",1);


select m.name,publisher,note,mt.name,created,status
from materials m
join material_types mt
on m.material_type_id = mt.id;


