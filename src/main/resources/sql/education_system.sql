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
-- name char(30) not null　unique,
-- publisher char(30),
-- note varchar(100),
-- material_type_id int not null,
-- created datetime DEFAULT CURRENT_TIMESTAMP,
-- status char(3) not null default "ACT")
-- ;

-- --ダミーデータの挿入
-- INSERT INTO materials (name, publisher, note, material_type_id, status)
-- VALUES
-- ('実践ビジネス英語１', 'ABC出版', '中級者向け', 2, 'ACT'),
-- ('実践ビジネス英語２', 'ABC出版', '上級者向け', 2, 'ACT'),
-- ('わかりやすい論文の書き方', 'XYZ書房', '大学生向け', 1, 'ACT'),
-- ('ベートーヴェン全集１', '音楽社', '初期の作品を収録', 3, 'ACT'),
-- ('ベートーヴェン全集２', '音楽社', '中期の作品を収録', 3, 'ACT'),
-- ('ベートーヴェン全集３', '音楽社', '後期の作品を収録', 3, 'ACT'),
-- ('趣味の俳句', '文芸堂', '初心者にもおすすめ', 1, 'ACT'),
-- ('TOEIC完全攻略', 'ABC出版', 'スコアアップ必携', 2, 'ACT'),
-- ('SQL入門', '技術評論社', '初心者向け実践書', 1, 'ACT'),
-- ('Javaの基礎', '技術評論社', '入門者向け解説', 1, 'ACT'),
-- ('Spring Boot実践ガイド', 'オライリー', 'Webアプリ開発の基礎', 2, 'ACT'),
-- ('猫の百科事典', '動物出版', '猫好き必見の書', 1, 'ACT'),
-- ('犬のしつけ方', '動物出版', '飼い主向けガイド', 1, 'ACT'),
-- ('和食の世界', '料理文化社', 'だしと旨味の探求', 3, 'ACT'),
-- ('フランス料理大全', '料理文化社', '美食の本質を探る', 3, 'ACT'),
-- ('プログラミング思考', 'IT書房', '論理的思考の入門書', 1, 'ACT'),
-- ('リーダーシップ入門', 'ビジネス社', '組織マネジメント基礎', 2, 'ACT'),
-- ('会計の基本', '経済新報社', '簿記３級対応', 1, 'ACT'),
-- ('Excel実用活用', '実務出版', '関数とマクロ入門', 1, 'ACT'),
-- ('Word完全マスター', '実務出版', '効率的文書作成法', 1, 'ACT'),
-- ('データベース設計の教科書', 'IT書房', '正規化の概念を解説', 1, 'ACT'),
-- ('HTML&CSS入門', 'Web出版', 'Web制作初心者向け', 1, 'ACT'),
-- ('JavaScript基礎講座', 'Web出版', 'DOM操作の基本', 1, 'ACT'),
-- ('React実践ハンドブック', 'Web出版', 'SPA構築入門', 2, 'ACT'),
-- ('Docker入門', '技術評論社', '環境構築を自動化', 2, 'ACT'),
-- ('Linuxの世界', '技術評論社', 'コマンド操作を学ぶ', 2, 'ACT'),
-- ('Git活用ガイド', '開発社', 'チーム開発の必読書', 2, 'ACT'),
-- ('Pythonで学ぶAI入門', 'AI出版', '機械学習の基礎', 2, 'ACT'),
-- ('データ分析入門', 'AI出版', '統計の基礎を解説', 2, 'ACT'),
-- ('統計学が最強の学問である', '光文社', '人気のベストセラー', 1, 'ACT'),
-- ('C言語の絵本', '技術評論社', 'プログラミング入門', 1, 'ACT'),
-- ('アルゴリズム図鑑', 'オライリー', '視覚的に理解する', 2, 'ACT'),
-- ('ネットワークの基礎', 'IT書房', 'OSI参照モデルを学ぶ', 1, 'ACT'),
-- ('セキュリティ入門', 'IT書房', '脅威と対策を理解', 2, 'ACT'),
-- ('クラウド時代の開発', 'オライリー', 'AWSとGCP入門', 2, 'ACT'),
-- ('テスト駆動開発', 'オライリー', 'TDDの実践手法', 2, 'ACT'),
-- ('設計パターン入門', 'IT書房', '再利用可能な設計を学ぶ', 2, 'ACT'),
-- ('英語で話すプレゼン術', 'ビジネス社', 'グローバル対応', 3, 'ACT'),
-- ('世界史年表', '学研社', '高校生向け参考書', 1, 'ACT'),
-- ('日本史講義録', '学研社', '受験対策に最適', 1, 'ACT'),
-- ('数学ⅠAの要点', '教育出版', '高校数学の基礎', 1, 'ACT'),
-- ('物理基礎を学ぶ', '教育出版', '図で理解する物理', 1, 'ACT'),
-- ('化学入門', '教育出版', '反応式をわかりやすく解説', 1, 'ACT'),
-- ('生物のしくみ', '教育出版', '生命現象を探る', 1, 'ACT'),
-- ('心理学入門', '人間科学社', '心の働きを学ぶ', 1, 'ACT'),
-- ('社会学概論', '人間科学社', '社会構造の理解', 1, 'ACT'),
-- ('哲学の扉', '思想社', '考える力を育てる', 1, 'ACT'),
-- ('経済学の基礎', '経済新報社', '需要と供給の原理', 1, 'ACT'),
-- ('現代政治の理解', '政治出版', '民主主義の仕組み', 1, 'ACT'),
-- ('アートの歴史', '文化出版', '西洋美術史概説', 3, 'ACT'),
-- ('デザインの原則', '文化出版', '美的感覚を磨く', 3, 'ACT');





-- -- ☆☆改修版用のテーブルだよっ☆☆
-- -- ☆☆パスワードは全部 dummy1234 だよ！！☆☆


-- create table users(
-- id bigint not null primary key auto_increment,
-- login_id varchar(30) not null unique collate utf8mb4_ja_0900_as_cs,
-- login_pass char(60) not null,
-- role enum('ADMIN','STUDENT') not null default'STUDENT',
-- status enum('ACTIVE','INACTIVE') not null default'ACTIVE',
-- created_at datetime not null default current_timestamp,
-- updated_at datetime not null default current_timestamp on update current_timestamp)
-- ENGINE=InnoDB
-- DEFAULT CHARSET=utf8mb4
-- COLLATE=utf8mb4_0900_ai_ci;




 create table students(
 id bigint not null primary key auto_increment,
 user_id bigint not null,
 name varchar(30) not null ,
 address varchar(50) not null,
 birthday date not null ,
 gender enum('MALE','FEMALE') not null,
 entrance_date date not null,
 class_name char(1) not null,
 club_name varchar(30),
 phone_number varchar(15) not null,
 created_at datetime not null default current_timestamp,
 updated_at datetime not null default current_timestamp on update current_timestamp,
 CONSTRAINT fk_students_user
     FOREIGN KEY (user_id) REFERENCES users(id))
     ENGINE=InnoDB
   DEFAULT CHARSET=utf8mb4
   COLLATE=utf8mb4_0900_ai_ci;



 INSERT INTO users (id, login_id, login_pass, role, status, created_at, updated_at) VALUES
 (1, 'admin01', '$2a$10$Ci0GdpZfOqFoE5qQ6lJrEOp4XcMdkaVzLS6M5qNOPeZkqsutVQdru', 'ADMIN', 'ACTIVE', NOW(), NOW()),
 (2, 'admin02', '$2a$10$L3Hf40J8mGgktTJ/YvG8be0w4k7pq14IFtX2t6dlIjS/QyiG3PXQ2', 'ADMIN', 'ACTIVE', NOW(), NOW()),
 (3, 'user003', '$2a$10$GW2Tp8rcC6vu2rtoPhbIuOmKJxS5xAhzO3TOu1DxUnm6FXFrH0mqS', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (4, 'user004', '$2a$10$uM9E0Zt/TW8qLCZpQkaCkeGRc2VOfIedacZ2k2u7ZdQXxxspYDgiK', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (5, 'user005', '$2a$10$BgH8c4K4QfC0z3G5TJsL5O.3qLIItJvUkaUap3BxMeoEU0Xwe43e2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (6, 'user006', '$2a$10$EBrUvGiFa/6CwB74mWNYI.MHCVq1kC.MNQuKXL.LT3JhDqfyBLlRW', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (7, 'user007', '$2a$10$wbvZvFmTaVJ6XyHDysJQe.0ashuHjSbDnv6Mc7rXc8sFl41gDM0pC', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (8, 'user008', '$2a$10$gU2jA4u7eoxMtzlZp2N0mO0ONyJvNfA37nYd0JVHcx9hIFGVbjwEe', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (9, 'user009', '$2a$10$QrEJ9WjqeDutsvKonZWcUOVm/OnemODaS3YZruVJmE0Tcc7yXmVb2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (10,'user010', '$2a$10$TqpTWXywVCHj1ZD2ndd13eWmy6nDXPvZdkwYwcQ1yBPhRVt9HzM/2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (11,'user011', '$2a$10$Ci0GdpZfOqFoE5qQ6lJrEOp4XcMdkaVzLS6M5qNOPeZkqsutVQdru', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (12,'user012', '$2a$10$L3Hf40J8mGgktTJ/YvG8be0w4k7pq14IFtX2t6dlIjS/QyiG3PXQ2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (13,'user013', '$2a$10$GW2Tp8rcC6vu2rtoPhbIuOmKJxS5xAhzO3TOu1DxUnm6FXFrH0mqS', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (14,'user014', '$2a$10$uM9E0Zt/TW8qLCZpQkaCkeGRc2VOfIedacZ2k2u7ZdQXxxspYDgiK', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (15,'user015', '$2a$10$BgH8c4K4QfC0z3G5TJsL5O.3qLIItJvUkaUap3BxMeoEU0Xwe43e2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (16,'user016', '$2a$10$EBrUvGiFa/6CwB74mWNYI.MHCVq1kC.MNQuKXL.LT3JhDqfyBLlRW', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (17,'user017', '$2a$10$wbvZvFmTaVJ6XyHDysJQe.0ashuHjSbDnv6Mc7rXc8sFl41gDM0pC', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (18,'user018', '$2a$10$gU2jA4u7eoxMtzlZp2N0mO0ONyJvNfA37nYd0JVHcx9hIFGVbjwEe', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (19,'user019', '$2a$10$QrEJ9WjqeDutsvKonZWcUOVm/OnemODaS3YZruVJmE0Tcc7yXmVb2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (20,'user020', '$2a$10$TqpTWXywVCHj1ZD2ndd13eWmy6nDXPvZdkwYwcQ1yBPhRVt9HzM/2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (21,'user021', '$2a$10$Ci0GdpZfOqFoE5qQ6lJrEOp4XcMdkaVzLS6M5qNOPeZkqsutVQdru', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (22,'user022', '$2a$10$L3Hf40J8mGgktTJ/YvG8be0w4k7pq14IFtX2t6dlIjS/QyiG3PXQ2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (23,'user023', '$2a$10$GW2Tp8rcC6vu2rtoPhbIuOmKJxS5xAhzO3TOu1DxUnm6FXFrH0mqS', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (24,'user024', '$2a$10$uM9E0Zt/TW8qLCZpQkaCkeGRc2VOfIedacZ2k2u7ZdQXxxspYDgiK', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (25,'user025', '$2a$10$BgH8c4K4QfC0z3G5TJsL5O.3qLIItJvUkaUap3BxMeoEU0Xwe43e2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (26,'user026', '$2a$10$EBrUvGiFa/6CwB74mWNYI.MHCVq1kC.MNQuKXL.LT3JhDqfyBLlRW', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (27,'user027', '$2a$10$wbvZvFmTaVJ6XyHDysJQe.0ashuHjSbDnv6Mc7rXc8sFl41gDM0pC', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (28,'user028', '$2a$10$gU2jA4u7eoxMtzlZp2N0mO0ONyJvNfA37nYd0JVHcx9hIFGVbjwEe', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (29,'user029', '$2a$10$QrEJ9WjqeDutsvKonZWcUOVm/OnemODaS3YZruVJmE0Tcc7yXmVb2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (30,'user030', '$2a$10$TqpTWXywVCHj1ZD2ndd13eWmy6nDXPvZdkwYwcQ1yBPhRVt9HzM/2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (31,'user031', '$2a$10$Ci0GdpZfOqFoE5qQ6lJrEOp4XcMdkaVzLS6M5qNOPeZkqsutVQdru', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (32,'user032', '$2a$10$L3Hf40J8mGgktTJ/YvG8be0w4k7pq14IFtX2t6dlIjS/QyiG3PXQ2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (33,'user033', '$2a$10$GW2Tp8rcC6vu2rtoPhbIuOmKJxS5xAhzO3TOu1DxUnm6FXFrH0mqS', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (34,'user034', '$2a$10$uM9E0Zt/TW8qLCZpQkaCkeGRc2VOfIedacZ2k2u7ZdQXxxspYDgiK', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (35,'user035', '$2a$10$BgH8c4K4QfC0z3G5TJsL5O.3qLIItJvUkaUap3BxMeoEU0Xwe43e2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (36,'user036', '$2a$10$EBrUvGiFa/6CwB74mWNYI.MHCVq1kC.MNQuKXL.LT3JhDqfyBLlRW', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (37,'user037', '$2a$10$wbvZvFmTaVJ6XyHDysJQe.0ashuHjSbDnv6Mc7rXc8sFl41gDM0pC', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (38,'user038', '$2a$10$gU2jA4u7eoxMtzlZp2N0mO0ONyJvNfA37nYd0JVHcx9hIFGVbjwEe', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (39,'user039', '$2a$10$QrEJ9WjqeDutsvKonZWcUOVm/OnemODaS3YZruVJmE0Tcc7yXmVb2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (40,'user040', '$2a$10$TqpTWXywVCHj1ZD2ndd13eWmy6nDXPvZdkwYwcQ1yBPhRVt9HzM/2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (41,'user041', '$2a$10$Ci0GdpZfOqFoE5qQ6lJrEOp4XcMdkaVzLS6M5qNOPeZkqsutVQdru', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (42,'user042', '$2a$10$L3Hf40J8mGgktTJ/YvG8be0w4k7pq14IFtX2t6dlIjS/QyiG3PXQ2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (43,'user043', '$2a$10$GW2Tp8rcC6vu2rtoPhbIuOmKJxS5xAhzO3TOu1DxUnm6FXFrH0mqS', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (44,'user044', '$2a$10$uM9E0Zt/TW8qLCZpQkaCkeGRc2VOfIedacZ2k2u7ZdQXxxspYDgiK', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (45,'user045', '$2a$10$BgH8c4K4QfC0z3G5TJsL5O.3qLIItJvUkaUap3BxMeoEU0Xwe43e2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (46,'user046', '$2a$10$EBrUvGiFa/6CwB74mWNYI.MHCVq1kC.MNQuKXL.LT3JhDqfyBLlRW', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (47,'user047', '$2a$10$wbvZvFmTaVJ6XyHDysJQe.0ashuHjSbDnv6Mc7rXc8sFl41gDM0pC', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (48,'user048', '$2a$10$gU2jA4u7eoxMtzlZp2N0mO0ONyJvNfA37nYd0JVHcx9hIFGVbjwEe', 'STUDENT', 'ACTIVE', NOW(), NOW()),
 (49,'user049', '$2a$10$QrEJ9WjqeDutsvKonZWcUOVm/OnemODaS3YZruVJmE0Tcc7yXmVb2', 'STUDENT', 'ACTIVE', NOW(), NOW()),
-- (50,'user050', '$2a$10$TqpTWXywVCHj1ZD2ndd13eWmy6nDXPvZdkwYwcQ1yBPhRVt9HzM/2', 'STUDENT', 'ACTIVE', NOW(), NOW());

INSERT INTO students (id, user_id, name, address, birthday, gender, entrance_date, class_name, club_name, phone_number) VALUES
(1,1,'松本陸','東京都中野区野方3-7-10','2009-11-27','MALE','2024-04-01','A','バレー部','090-1890-5661'),
(2,2,'山本悠斗','東京都文京区春日1-4-8','2010-07-05','MALE','2024-04-01','A','バレー部','090-2180-4436'),
(3,3,'田中湊','東京都板橋区志村2-7-12','2009-04-11','MALE','2024-04-01','A','陸上部','090-8183-7146'),
(4,4,'佐藤陸','東京都葛飾区立石2-17-4','2009-10-21','MALE','2024-04-01','B','サッカー部','090-3358-1227'),
(5,5,'渡辺蒼','東京都板橋区前野町2-6-12','2010-01-26','MALE','2024-04-01','C','バスケ部','090-9872-5912'),
(6,6,'田中蒼','東京都目黒区自由が丘4-11-9','2009-08-07','MALE','2024-04-01','B','陸上部','090-5789-4934'),
(7,7,'伊藤葵','東京都中野区鷺宮4-14-16','2010-06-26','FEMALE','2024-04-01','A','美術部','090-5923-8880'),
(8,8,'田中心愛','東京都世田谷区経堂4-9-7','2009-06-25','FEMALE','2024-04-01','C','美術部','090-8465-7916'),
(9,9,'中村結愛','東京都北区東十条5-12-1','2009-02-11','FEMALE','2024-04-01','A','テニス部','090-4956-3990'),
(10,10,'中村さくら','東京都豊島区巣鴨4-18-20','2010-09-23','FEMALE','2024-04-01','C','美術部','090-5961-7731'),
(11,11,'佐々木心愛','東京都江東区東陽3-16-14','2009-12-21','FEMALE','2024-04-01','C','バスケ部','090-6162-1301'),
(12,12,'松本美咲','東京都練馬区旭丘2-3-13','2009-03-25','FEMALE','2024-04-01','B','テニス部','090-3410-9261'),
(13,13,'田中陽翔','東京都世田谷区砧2-13-18','2010-09-04','MALE','2024-04-01','A','バスケ部','090-5377-2730'),
(14,14,'高橋花','東京都豊島区巣鴨3-9-3','2009-09-20','FEMALE','2024-04-01','B','野球部','090-6877-2431'),
(15,15,'伊藤翔太','東京都渋谷区代々木1-2-16','2010-10-24','MALE','2024-04-01','A','テニス部','090-5645-5685'),
(16,16,'佐藤蓮','東京都練馬区石神井町1-19-2','2009-07-14','MALE','2024-04-01','C','サッカー部','090-4539-1768'),
(17,17,'山田蓮','東京都中央区築地4-2-9','2010-07-18','MALE','2024-04-01','A','テニス部','090-5606-4842'),
(18,18,'高橋美咲','東京都練馬区豊玉北3-1-6','2010-11-24','FEMALE','2024-04-01','B','テニス部','090-1922-1530'),
(19,19,'高橋花','東京都文京区本郷3-1-9','2009-05-27','FEMALE','2024-04-01','B','吹奏楽部','090-6598-3198'),
(20,20,'吉田湊','東京都港区芝公園3-7-5','2010-09-30','MALE','2024-04-01','C','吹奏楽部','090-8318-3688'),
(21,21,'田中美咲','東京都渋谷区代々木4-9-17','2009-08-14','FEMALE','2024-04-01','A','陸上部','090-8014-3289'),
(22,22,'加藤蒼','東京都杉並区高円寺南4-20-1','2009-06-03','MALE','2024-04-01','B','野球部','090-3627-9671'),
(23,23,'松本結愛','東京都杉並区阿佐谷北4-11-3','2009-06-01','FEMALE','2024-04-01','A','バスケ部','090-9445-9094'),
(24,24,'伊藤結衣','東京都大田区大森北2-14-3','2009-02-02','FEMALE','2024-04-01','A','美術部','090-3747-8807'),
(25,25,'中村陽翔','東京都世田谷区太子堂3-5-8','2010-10-12','MALE','2024-04-01','C','茶道部','090-2192-6791'),
(26,26,'高橋さくら','東京都文京区小石川4-6-5','2010-09-28','FEMALE','2024-04-01','B','テニス部','090-9287-6254'),
(27,27,'鈴木蓮','東京都中央区築地1-10-5','2010-04-25','MALE','2024-04-01','A','茶道部','090-7741-2625'),
(28,28,'山口陸','東京都練馬区旭丘5-6-12','2010-07-02','MALE','2024-04-01','C','サッカー部','090-4131-6112'),
(29,29,'山本翔太','東京都中央区日本橋3-2-8','2009-06-01','MALE','2024-04-01','B','帰宅部','090-2779-9212'),
(30,30,'井上心愛','東京都中野区江古田2-11-1','2010-03-25','FEMALE','2024-04-01','B','帰宅部','090-1857-3678'),
(31,31,'佐藤陽斗','東京都世田谷区太子堂2-6-17','2009-11-25','MALE','2024-04-01','B','吹奏楽部','090-3121-5551'),
(32,32,'松本翔太','東京都目黒区八雲1-4-3','2009-06-13','MALE','2024-04-01','C','吹奏楽部','090-7103-4076'),
(33,33,'吉田結衣','東京都中央区銀座2-2-3','2009-08-27','FEMALE','2024-04-01','A','茶道部','090-4560-4940'),
(34,34,'高橋花','東京都文京区白山1-9-9','2008-09-04','FEMALE','2023-04-01','B','陸上部','090-8721-9786'),
(35,35,'佐々木美咲','東京都中央区晴海1-9-7','2008-09-29','FEMALE','2023-04-01','A','帰宅部','090-8829-7830'),
(36,36,'渡辺湊','東京都新宿区百人町4-6-3','2009-06-04','MALE','2023-04-01','A','テニス部','090-6552-8435'),
(37,37,'山口悠斗','東京都江戸川区一之江1-14-20','2009-07-03','MALE','2023-04-01','A','陸上部','090-2500-3706'),
(38,38,'山口大和','東京都世田谷区太子堂4-10-7','2008-03-23','MALE','2023-04-01','B','サッカー部','090-1390-4020'),
(39,39,'佐藤陸','東京都目黒区碑文谷4-5-15','2008-05-18','MALE','2023-04-01','B','テニス部','090-8607-7455'),
(40,40,'山田陸','東京都板橋区前野町1-7-2','2008-10-07','MALE','2023-04-01','A','帰宅部','090-7870-4879'),
(41,41,'山田凛','東京都港区北青山2-14-18','2009-11-25','FEMALE','2023-04-01','A','茶道部','090-7166-3788'),
(42,42,'中村蒼','東京都世田谷区経堂1-3-16','2008-02-10','MALE','2023-04-01','A','茶道部','090-8774-1401'),
(43,43,'佐藤悠斗','東京都江戸川区一之江1-18-15','2008-01-07','MALE','2023-04-01','C','バスケ部','090-3797-5261'),
(44,44,'渡辺湊','東京都渋谷区代々木4-16-2','2008-04-09','MALE','2023-04-01','C','吹奏楽部','090-9891-8913'),
(45,45,'小林湊','東京都中野区江古田1-15-19','2008-04-04','MALE','2023-04-01','B','バレー部','090-4673-5225'),
(46,46,'渡辺美咲','東京都江東区南砂5-1-13','2009-05-18','FEMALE','2023-04-01','C','陸上部','090-3337-3182'),
(47,47,'高橋陽斗','東京都北区赤羽1-19-11','2009-01-01','MALE','2023-04-01','C','テニス部','090-9070-3298'),
(48,48,'佐藤蒼','東京都港区南青山5-1-15','2008-07-01','MALE','2023-04-01','B','テニス部','090-9832-9643'),
(49,49,'田中翔太','東京都葛飾区青戸3-1-11','2008-03-15','MALE','2023-04-01','C','バスケ部','090-9382-6447'),
(50,50,'田中結愛','東京都江東区東陽4-20-11','2009-08-24','FEMALE','2023-04-01','B','帰宅部','090-1631-4054'),
(51,51,'佐々木陽菜','東京都新宿区下落合3-19-11','2008-09-29','FEMALE','2023-04-01','B','帰宅部','090-9827-2475'),
(52,52,'木村悠真','東京都中野区鷺宮5-14-18','2009-07-18','MALE','2023-04-01','C','野球部','090-1919-9419'),
(53,53,'中村美咲','東京都豊島区南長崎5-6-6','2009-02-16','FEMALE','2023-04-01','A','テニス部','090-3673-5881'),
(54,54,'木村凛','東京都江戸川区船堀5-16-7','2009-11-30','FEMALE','2023-04-01','B','陸上部','090-6295-7359'),
(55,55,'伊藤蒼','東京都江東区東陽3-11-15','2008-03-31','MALE','2023-04-01','A','野球部','090-4405-4735'),
(56,56,'渡辺蒼','東京都墨田区菊川3-4-18','2009-06-07','MALE','2023-04-01','B','バスケ部','090-3401-6074'),
(57,57,'吉田心愛','東京都北区王子1-9-14','2009-02-01','FEMALE','2023-04-01','C','茶道部','090-1649-1233'),
(58,58,'山本悠斗','東京都中野区中野1-9-12','2009-08-28','MALE','2023-04-01','B','陸上部','090-4895-9349'),
(59,59,'田中紬','東京都杉並区阿佐谷北2-9-19','2009-03-08','FEMALE','2023-04-01','A','陸上部','090-5553-1633'),
(60,60,'佐々木翔太','東京都杉並区西荻北1-1-3','2009-08-25','MALE','2023-04-01','A','吹奏楽部','090-3116-2972'),
(61,61,'山田陽菜','東京都渋谷区恵比寿3-4-3','2009-04-09','FEMALE','2023-04-01','A','野球部','090-8071-9536'),
(62,62,'鈴木紬','東京都墨田区押上5-9-8','2009-05-15','FEMALE','2023-04-01','C','帰宅部','090-3624-3573'),
(63,63,'木村悠斗','東京都新宿区下落合5-15-19','2008-06-13','MALE','2023-04-01','B','美術部','090-4226-6710'),
(64,64,'山本心愛','東京都渋谷区本町1-11-8','2009-01-24','FEMALE','2023-04-01','B','バスケ部','090-6087-2137'),
(65,65,'松本蓮','東京都目黒区自由が丘1-11-1','2009-01-28','MALE','2023-04-01','A','バスケ部','090-2015-2415'),
(66,66,'山口悠斗','東京都豊島区巣鴨1-14-6','2009-09-20','MALE','2023-04-01','C','美術部','090-1328-9671'),
(67,67,'伊藤さくら','東京都練馬区桜台3-8-9','2007-01-22','FEMALE','2022-04-01','A','テニス部','090-3138-1261'),
(68,68,'山本翔太','東京都渋谷区初台5-10-12','2007-09-12','MALE','2022-04-01','C','陸上部','090-9755-9150'),
(69,69,'山本湊','東京都中央区築地4-4-15','2007-07-07','MALE','2022-04-01','B','バレー部','090-4494-5838'),
(70,70,'井上悠真','東京都目黒区自由が丘4-6-2','2007-01-24','MALE','2022-04-01','C','茶道部','090-6942-6703'),
(71,71,'渡辺悠真','東京都江戸川区葛西4-5-8','2008-01-12','MALE','2022-04-01','B','サッカー部','090-1636-9029'),
(72,72,'山本紬','東京都大田区大森西5-5-4','2008-05-09','FEMALE','2022-04-01','B','サッカー部','090-5991-2231'),
(73,73,'渡辺紬','東京都江戸川区小松川1-5-19','2008-10-14','FEMALE','2022-04-01','A','茶道部','090-3756-6763'),
(74,74,'山口陸','東京都文京区本郷1-12-4','2007-09-25','MALE','2022-04-01','B','茶道部','090-2036-2383'),
(75,75,'伊藤凛','東京都文京区春日4-18-19','2008-11-03','FEMALE','2022-04-01','C','美術部','090-5631-3382'),
(76,76,'松本蓮','東京都江戸川区葛西1-15-9','2007-11-07','MALE','2022-04-01','B','バスケ部','090-7341-6763'),
(77,77,'渡辺結愛','東京都文京区本郷3-16-20','2008-12-03','FEMALE','2022-04-01','C','美術部','090-5244-5472'),
(78,78,'鈴木結愛','東京都文京区本郷5-15-3','2008-08-09','FEMALE','2022-04-01','A','茶道部','090-1638-6696'),
(79,79,'山本湊','東京都江戸川区葛西5-3-17','2007-12-10','MALE','2022-04-01','B','茶道部','090-6765-2452'),
(80,80,'高橋凛','東京都江戸川区小松川5-4-8','2007-12-11','FEMALE','2022-04-01','A','茶道部','090-4291-6116'),
(81,81,'松本悠真','東京都港区六本木5-7-1','2008-01-19','MALE','2022-04-01','C','陸上部','090-3222-9874'),
(82,82,'中村大和','東京都渋谷区恵比寿4-9-6','2007-03-13','MALE','2022-04-01','C','陸上部','090-9721-6738'),
(83,83,'吉田心愛','東京都練馬区豊玉北1-17-12','2008-04-03','FEMALE','2022-04-01','A','バスケ部','090-5559-4839'),
(84,84,'鈴木陽翔','東京都新宿区戸山5-9-14','2007-10-02','MALE','2022-04-01','A','美術部','090-1310-5491'),
(85,85,'鈴木蓮','東京都江戸川区葛西5-4-19','2007-01-04','MALE','2022-04-01','A','美術部','090-6526-6042'),
(86,86,'高橋凛','東京都世田谷区経堂5-5-18','2007-06-08','FEMALE','2022-04-01','B','吹奏楽部','090-1428-6126'),
(87,87,'中村湊','東京都新宿区高田馬場3-10-3','2007-08-02','MALE','2022-04-01','C','サッカー部','090-3055-6246'),
(88,88,'吉田葵','東京都葛飾区青戸1-1-16','2008-05-12','FEMALE','2022-04-01','B','帰宅部','090-2519-8173'),
(89,89,'田中翔太','東京都板橋区志村2-2-8','2008-02-17','MALE','2022-04-01','C','茶道部','090-2789-1335'),
(90,90,'高橋蓮','東京都練馬区石神井町5-10-6','2008-04-24','MALE','2022-04-01','C','陸上部','090-1619-1608'),
(91,91,'渡辺紬','東京都練馬区豊玉北5-14-16','2007-05-23','FEMALE','2022-04-01','A','バスケ部','090-6532-1254'),
(92,92,'吉田陸','東京都豊島区駒込5-18-11','2008-11-28','MALE','2022-04-01','C','バレー部','090-1515-5542'),
(93,93,'山田大和','東京都江東区門前仲町2-1-4','2008-03-24','MALE','2022-04-01','C','吹奏楽部','090-5587-7564'),
(94,94,'山田結愛','東京都渋谷区笹塚4-12-6','2008-06-21','FEMALE','2022-04-01','A','テニス部','090-9348-3339'),
(95,95,'小林結愛','東京都江戸川区葛西3-10-12','2008-08-11','FEMALE','2022-04-01','B','バレー部','090-3735-3506'),
(96,96,'田中心愛','東京都豊島区目白1-16-15','2007-09-27','FEMALE','2022-04-01','B','陸上部','090-9348-9811'),
(97,97,'伊藤凛','東京都文京区春日3-9-8','2007-11-15','FEMALE','2022-04-01','C','野球部','090-8097-1413'),
(98,98,'伊藤花','東京都新宿区戸山5-9-7','2008-09-25','FEMALE','2022-04-01','B','美術部','090-5979-2156'),
(99,99,'伊藤陽菜','東京都板橋区蓮根5-13-10','2008-12-07','FEMALE','2022-04-01','C','テニス部','090-7299-8012'),
(100,100,'山口悠斗','東京都墨田区錦糸2-8-15','2008-02-23','MALE','2022-04-01','A','サッカー部','090-1374-6249');

