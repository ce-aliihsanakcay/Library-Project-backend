CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(50),
    gender VARCHAR(10), 
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(50) NOT NULL,
    author VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    score INTEGER DEFAULT -1,  
    published_at INTEGER, -- YEAR
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE borrowed_books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    borrowed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    returned_at DATETIME,
    user_score INTEGER CHECK (user_score BETWEEN 1 AND 10),
    is_returned BOOLEAN DEFAULT false,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);



insert into users (id, name, email, phone, address, gender, created_at) values (1, 'Maris Barff', 'mbarff0@howstuffworks.com', '(510) 5347217', '7th Floor', 'Female', '2015-04-11 18:48:49');
insert into users (id, name, email, phone, address, gender, created_at) values (2, 'Gasparo Gowling', 'ggowling1@psu.edu', '(379) 4872393', 'PO Box 78264', 'Male', '2011-04-25 08:37:25');
insert into users (id, name, email, phone, address, gender, created_at) values (3, 'Bent Laidlow', 'blaidlow2@vistaprint.com', '(236) 2701622', 'Suite 56', 'Male', '2008-06-28 13:44:35');
insert into users (id, name, email, phone, address, gender, created_at) values (4, 'Kathryne Lampett', 'klampett3@arstechnica.com', '(488) 9545376', null, 'Polygender', '2008-01-11 09:21:09');
insert into users (id, name, email, phone, address, gender, created_at) values (5, 'Monty Vinnick', 'mvinnick4@skyrock.com', '(977) 3145312', 'Room 806', 'Male', '2008-12-15 11:41:44');
insert into users (id, name, email, phone, address, gender, created_at) values (6, 'Yale Levane', 'ylevane5@wikipedia.org', '(745) 3568610', 'Room 1173', 'Agender', '2004-01-12 13:35:13');
insert into users (id, name, email, phone, address, gender, created_at) values (7, 'Nobie Sorey', 'nsorey6@dropbox.com', '(667) 3574137', '4th Floor', 'Male', '2024-03-28 07:54:19');
insert into users (id, name, email, phone, address, gender, created_at) values (8, 'Bart Gullane', 'bgullane7@163.com', '(989) 7683129', 'Apt 1944', 'Male', '2014-11-05 07:44:11');
insert into users (id, name, email, phone, address, gender, created_at) values (9, 'Isidoro Robuchon', 'irobuchon8@reddit.com', '(263) 4271083', 'Apt 880', 'Male', '2021-01-20 12:38:27');
insert into users (id, name, email, phone, address, gender, created_at) values (10, 'Kippie Grammer', 'kgrammer9@techcrunch.com', '(950) 9546125', 'Room 1410', 'Male', '2022-02-23 11:08:05');
insert into users (id, name, email, phone, address, gender, created_at) values (11, 'Keith Pendre', 'kpendrea@sakura.ne.jp', '(724) 7644649', '17th Floor', 'Male', '2008-01-01 09:37:44');
insert into users (id, name, email, phone, address, gender, created_at) values (12, 'Thacher Ruddock', 'truddockb@comcast.net', '(740) 6483279', 'PO Box 63802', 'Male', '2003-12-16 08:18:16');
insert into users (id, name, email, phone, address, gender, created_at) values (13, 'Zollie Maylor', 'zmaylorc@dailymotion.com', '(962) 7276047', 'Suite 40', 'Male', '2021-11-16 09:41:30');
insert into users (id, name, email, phone, address, gender, created_at) values (14, 'Jaclyn Dunklee', 'jdunkleed@nationalgeographic.com', '(428) 1575462', 'Apt 540', 'Female', '2007-12-13 22:25:49');
insert into users (id, name, email, phone, address, gender, created_at) values (15, 'Ronnica Lacy', 'rlacye@theguardian.com', '(406) 5172275', 'Room 1969', 'Agender', '2006-09-20 03:09:09');
insert into users (id, name, email, phone, address, gender, created_at) values (16, 'Vivian Dodgshun', 'vdodgshunf@prweb.com', '(617) 7279922', '7th Floor', 'Polygender', '2010-05-24 20:07:37');
insert into users (id, name, email, phone, address, gender, created_at) values (17, 'Marcelline Langham', 'mlanghamg@google.fr', '(313) 1552685', 'Apt 298', 'Female', '2007-06-09 02:21:15');
insert into users (id, name, email, phone, address, gender, created_at) values (18, 'Bary Lascell', 'blascellh@imgur.com', '(292) 1630848', '20th Floor', 'Male', '2011-01-14 11:24:49');
insert into users (id, name, email, phone, address, gender, created_at) values (19, 'Jud Hillatt', 'jhillatti@slideshare.net', '(963) 2983775', 'PO Box 64989', 'Male', '2019-08-24 03:13:45');
insert into users (id, name, email, phone, address, gender, created_at) values (20, 'Krista Dixsee', 'kdixseej@apple.com', '(830) 2219091', '4th Floor', 'Female', '2019-03-20 05:41:33');






insert into books (id, title, author, category, score, published_at, created_at) values (1, 'Echoes of the Rainbow (Sui yuet san tau)', 'Fredericka Enrigo', 'Comedy|Drama|Romance', 0, 1997, '2003-07-02 18:33:29');
insert into books (id, title, author, category, score, published_at, created_at) values (2, 'Cold Mountain', 'Poul Tolchard', 'Drama|Romance|War', 5, 2002, '2021-05-02 07:59:54');
insert into books (id, title, author, category, score, published_at, created_at) values (3, 'Inbetweeners Movie, The', 'Milo Cristofaro', 'Adventure|Comedy', 0, 1986, '2018-01-12 20:48:52');
insert into books (id, title, author, category, score, published_at, created_at) values (4, 'Marriage of Maria Braun, The (Ehe der Maria Braun, Die)', 'Jen Iglesias', 'Drama', 8, 2000, '2007-12-14 10:27:30');
insert into books (id, title, author, category, score, published_at, created_at) values (5, 'Chasing Sleep', 'Cassey Klamp', 'Horror|Thriller', 9, 2012, '2013-01-17 13:43:40');
insert into books (id, title, author, category, score, published_at, created_at) values (6, 'Gambit', 'Elinor Gruczka', 'Comedy|Crime', 8, 1998, '2014-06-03 10:48:30');
insert into books (id, title, author, category, score, published_at, created_at) values (7, 'House Hunting', 'Thea Allcock', 'Mystery|Thriller', 0, 1999, '2021-12-14 02:27:42');
insert into books (id, title, author, category, score, published_at, created_at) values (8, 'Right Kind of Wrong, The', 'Mellisent McIvor', 'Comedy|Romance', -1, 2002, '2023-12-04 11:06:53');
insert into books (id, title, author, category, score, published_at, created_at) values (9, 'American Werewolf in Paris, An', 'Panchito Byrde', 'Comedy|Horror|Romance|Thriller', 7, 1990, '2017-10-09 06:16:20');
insert into books (id, title, author, category, score, published_at, created_at) values (10, 'Fanny', 'Konstantine Shillabeer', 'Drama|Romance', 0, 1993, '2008-04-04 11:03:52');
insert into books (id, title, author, category, score, published_at, created_at) values (11, 'Smokin'' Aces 2: Assassins'' Ball', 'Ulick Tulloch', 'Action', 9, 2010, '2011-07-25 16:07:34');
insert into books (id, title, author, category, score, published_at, created_at) values (12, 'Dara Ó Briain Talks Funny: Live in London', 'Min Honig', 'Comedy', 3, 1997, '2011-09-13 05:57:38');
insert into books (id, title, author, category, score, published_at, created_at) values (13, 'Adventures of Tarzan', 'Alfie Densham', 'Action|Adventure', 2, 2011, '2010-07-16 23:17:22');
insert into books (id, title, author, category, score, published_at, created_at) values (14, 'Thunderheart', 'Gladys Kigelman', 'Crime|Mystery|Thriller', 7, 1970, '2024-01-21 07:56:48');
insert into books (id, title, author, category, score, published_at, created_at) values (15, 'Young and the Damned, The (Olvidados, Los)', 'Brianna Woodier', 'Crime|Drama', 6, 2012, '2010-03-03 20:52:24');
insert into books (id, title, author, category, score, published_at, created_at) values (16, 'Trance', 'Thomasina Liddel', 'Horror', -1, 2001, '2007-05-17 08:41:24');
insert into books (id, title, author, category, score, published_at, created_at) values (17, 'The Butterfly Effect 2', 'Corbet Selway', 'Adventure|Drama|Romance|Sci-Fi|Thriller', 5, 2006, '2018-03-13 17:30:29');
insert into books (id, title, author, category, score, published_at, created_at) values (18, 'Rouva presidentti', 'Jedediah Setter', 'Documentary', 10, 2008, '2005-12-03 19:49:33');
insert into books (id, title, author, category, score, published_at, created_at) values (19, 'Dinosaur Project, The', 'Sergeant Milhench', 'Adventure', 3, 2002, '2004-09-21 12:46:12');
insert into books (id, title, author, category, score, published_at, created_at) values (20, 'Tom, Tom, the Piper''s Son', 'Jakob McKennan', 'Drama', 10, 2013, '2006-08-22 05:56:12');
insert into books (id, title, author, category, score, published_at, created_at) values (21, 'Battle Hymn', 'Sigmund Aven', 'Drama', 7, 1984, '2018-09-08 04:47:36');
insert into books (id, title, author, category, score, published_at, created_at) values (22, 'Ruby', 'Brandy Cecchetelli', 'Crime|Drama', 7, 2007, '2019-05-31 05:12:38');
insert into books (id, title, author, category, score, published_at, created_at) values (23, 'I Know What You Did Last Summer', 'Tuesday Gwioneth', 'Horror|Mystery|Thriller', 8, 1999, '2021-05-21 18:55:26');
insert into books (id, title, author, category, score, published_at, created_at) values (24, 'Modulations', 'Renell Habden', 'Documentary', 5, 2009, '2011-01-10 23:10:58');
insert into books (id, title, author, category, score, published_at, created_at) values (25, 'Mrs. Doubtfire', 'Charmion Govey', 'Comedy|Drama', 9, 1992, '2004-09-08 09:40:01');
insert into books (id, title, author, category, score, published_at, created_at) values (26, 'Pusher III: I''m the Angel of Death', 'Mace Durnan', 'Action|Comedy|Drama|Horror|Thriller', 2, 2004, '2005-02-05 10:01:50');
insert into books (id, title, author, category, score, published_at, created_at) values (27, 'Seitsemän veljestä', 'Queenie Salan', 'Drama', 5, 2007, '2019-11-04 04:04:25');
insert into books (id, title, author, category, score, published_at, created_at) values (28, 'The Merry Widow', 'Bren Gossop', 'Comedy|Drama', 3, 2012, '2016-04-06 17:53:26');
insert into books (id, title, author, category, score, published_at, created_at) values (29, 'Night the Lights Went Out in Georgia, The', 'Jeddy Piner', 'Drama', 7, 1997, '2013-12-19 22:34:23');
insert into books (id, title, author, category, score, published_at, created_at) values (30, 'Because of Winn-Dixie', 'Page Slorach', 'Children|Comedy|Drama', 2, 2005, '2019-04-14 12:36:23');
insert into books (id, title, author, category, score, published_at, created_at) values (31, 'Daydreams', 'Vinnie Dowdney', 'Comedy', 6, 1996, '2007-04-22 02:07:31');
insert into books (id, title, author, category, score, published_at, created_at) values (32, 'Sixth Sense, The', 'Raven Brilleman', 'Drama|Horror|Mystery', 9, 1993, '2008-08-27 22:05:18');
insert into books (id, title, author, category, score, published_at, created_at) values (33, 'Thank You a Lot', 'Janeva Mogg', 'Drama', 9, 1993, '2021-09-14 11:58:02');
insert into books (id, title, author, category, score, published_at, created_at) values (34, 'Illusionist, The', 'Lefty Driussi', 'Drama|Fantasy|Mystery|Romance', 3, 1998, '2021-09-14 12:19:28');
insert into books (id, title, author, category, score, published_at, created_at) values (35, 'Ultramarines: A Warhammer 40,000 Movie', 'Madalena Quincey', 'Animation|Sci-Fi', 3, 2008, '2013-03-19 14:35:47');
insert into books (id, title, author, category, score, published_at, created_at) values (36, 'Criminals', 'Maye Proger', 'Documentary', 1, 2005, '2007-09-21 16:07:20');
insert into books (id, title, author, category, score, published_at, created_at) values (37, 'Candles on Bay Street ', 'Josiah Lorenzin', 'Drama', 2, 1996, '2013-02-12 19:10:42');
insert into books (id, title, author, category, score, published_at, created_at) values (38, 'Antwone Fisher', 'Jillian Kalaher', 'Drama', 0, 2003, '2019-08-13 11:57:09');
insert into books (id, title, author, category, score, published_at, created_at) values (39, 'Naked Violence', 'Mattias Keppe', 'Crime|Drama', 4, 1994, '2009-04-12 02:13:07');
insert into books (id, title, author, category, score, published_at, created_at) values (40, 'W.W. and the Dixie Dancekings', 'Kara-lynn Keijser', 'Comedy', 3, 2006, '2011-03-20 16:54:24');
insert into books (id, title, author, category, score, published_at, created_at) values (41, 'The Eagle and the Hawk', 'Jobye Carrabott', 'Action|Drama|War', 8, 2009, '2011-03-17 18:31:35');
insert into books (id, title, author, category, score, published_at, created_at) values (42, 'Kiss Me Again', 'Jenny Ferrarotti', 'Drama|Romance', 2, 2007, '2022-03-23 11:30:32');
insert into books (id, title, author, category, score, published_at, created_at) values (43, 'Real Women Have Curves', 'Braden O''Dulchonta', 'Comedy|Drama', 2, 2007, '2013-12-05 11:44:17');
insert into books (id, title, author, category, score, published_at, created_at) values (44, 'Couch Trip, The', 'Fedora Merington', 'Comedy', 0, 1985, '2015-09-26 17:28:08');
insert into books (id, title, author, category, score, published_at, created_at) values (45, 'Love Torn in Dream (Combat d''amour en songe)', 'Aguste Trusty', 'Drama|Fantasy', 3, 2010, '2004-11-06 11:43:34');
insert into books (id, title, author, category, score, published_at, created_at) values (46, 'Wendell Baker Story, The', 'Callida Trousdell', 'Comedy|Drama|Romance', 6, 2006, '2018-02-21 16:11:43');
insert into books (id, title, author, category, score, published_at, created_at) values (47, 'Jungleground', 'Diarmid Madgwick', 'Action|Sci-Fi|Thriller', 8, 1995, '2011-08-04 17:48:58');
insert into books (id, title, author, category, score, published_at, created_at) values (48, 'Serena', 'Kalil McFade', 'Drama', 3, 1994, '2012-09-29 10:45:59');
insert into books (id, title, author, category, score, published_at, created_at) values (49, 'Dead Again', 'Craggy Denson', 'Mystery|Romance|Thriller', 10, 2007, '2013-03-19 13:30:12');
insert into books (id, title, author, category, score, published_at, created_at) values (50, 'Love and Honor', 'Jaime Hamelyn', 'Drama|Romance|War', 1, 2005, '2008-10-14 00:39:33');
insert into books (id, title, author, category, score, published_at, created_at) values (51, 'Chico & Rita', 'Sammie O''Luby', 'Animation|Musical|Romance', 9, 1992, '2018-04-03 12:01:28');
insert into books (id, title, author, category, score, published_at, created_at) values (52, 'Return of Frank Cannon, The', 'Aluino Wathell', 'Action|Crime|Drama|Mystery|Thriller', 10, 2001, '2021-05-13 23:27:45');
insert into books (id, title, author, category, score, published_at, created_at) values (53, 'American Pimp', 'Alicia Seals', 'Documentary', 5, 1993, '2023-12-01 05:01:34');
insert into books (id, title, author, category, score, published_at, created_at) values (54, 'Any Given Sunday', 'Florella Omrod', 'Drama', 6, 2003, '2016-05-30 10:23:28');
insert into books (id, title, author, category, score, published_at, created_at) values (55, 'Eat', 'Carlie Weippert', 'Documentary', 3, 1992, '2024-12-18 15:30:24');
insert into books (id, title, author, category, score, published_at, created_at) values (56, 'Human Lanterns (Ren pi deng long)', 'Lexi Lecky', 'Action|Horror', 4, 1994, '2008-03-19 10:39:05');
insert into books (id, title, author, category, score, published_at, created_at) values (57, 'Silver Chalice, The', 'Margalo Edser', 'Drama|Romance', 6, 2004, '2018-11-25 02:32:32');
insert into books (id, title, author, category, score, published_at, created_at) values (58, 'Watermelon Man', 'Beckie Bradberry', 'Comedy|Drama', 9, 2008, '2021-08-05 02:10:02');
insert into books (id, title, author, category, score, published_at, created_at) values (59, '5 Broken Cameras', 'Dolores Cruse', 'Documentary', 3, 1999, '2005-04-18 01:28:27');
insert into books (id, title, author, category, score, published_at, created_at) values (60, 'Silent Partner, The', 'Eva Chiplin', 'Crime|Drama|Thriller', 0, 2009, '2003-06-01 22:04:17');
insert into books (id, title, author, category, score, published_at, created_at) values (61, 'The Dark Valley', 'Elladine Parysiak', 'Western', 8, 2012, '2005-05-10 08:48:20');
insert into books (id, title, author, category, score, published_at, created_at) values (62, 'Bodyguards and Assassins', 'Colly McFaul', 'Action|Drama', 4, 2009, '2004-05-11 23:24:21');
insert into books (id, title, author, category, score, published_at, created_at) values (63, 'Natural Born Killers', 'Cloe Clipston', 'Action|Crime|Thriller', 5, 2008, '2023-07-09 05:50:00');
insert into books (id, title, author, category, score, published_at, created_at) values (64, 'Where Were You When the Lights Went Out?', 'Kiley Bakeup', 'Comedy', 2, 1993, '2012-07-29 19:37:15');
insert into books (id, title, author, category, score, published_at, created_at) values (65, 'The Princess Comes Across', 'Gaston Pre', 'Comedy|Mystery|Romance|Thriller', 10, 2000, '2007-10-19 05:02:47');
insert into books (id, title, author, category, score, published_at, created_at) values (66, 'Souper, Le (Supper, The)', 'Sascha Brewster', 'Drama', 7, 2008, '2021-12-29 12:42:16');
insert into books (id, title, author, category, score, published_at, created_at) values (67, 'Myth of the American Sleepover, The', 'Angie Bebbington', 'Comedy|Drama|Romance', 6, 2003, '2003-05-08 19:18:37');
insert into books (id, title, author, category, score, published_at, created_at) values (68, 'Happy Together (a.k.a. Buenos Aires Affair) (Chun gwong cha sit)', 'Dur Priver', 'Drama|Romance', 0, 1989, '2023-07-16 23:59:51');
insert into books (id, title, author, category, score, published_at, created_at) values (69, 'Red Desert (Deserto rosso, Il)', 'Torie McVittie', 'Drama', 4, 2001, '2016-09-20 04:25:54');
insert into books (id, title, author, category, score, published_at, created_at) values (70, 'The Inner Circle', 'Maude Giacomello', 'Drama', 6, 2007, '2006-06-01 01:00:20');
insert into books (id, title, author, category, score, published_at, created_at) values (71, 'Garden of Words, The (Koto no ha no niwa)', 'Brigit Ridgway', 'Animation|Romance', -1, 1993, '2006-04-12 12:47:38');
insert into books (id, title, author, category, score, published_at, created_at) values (72, 'Knock on Any Door', 'Johnna Wathall', 'Crime|Drama|Film-Noir', 6, 1992, '2015-01-17 13:22:52');
insert into books (id, title, author, category, score, published_at, created_at) values (73, 'Sharpe''s Battle', 'Archambault Huggan', 'Action|Adventure|War', 9, 1992, '2007-08-07 11:42:50');
insert into books (id, title, author, category, score, published_at, created_at) values (74, 'Son of the Mask', 'Gray Dallison', 'Adventure|Children|Comedy|Fantasy', -1, 2005, '2006-02-27 04:12:39');
insert into books (id, title, author, category, score, published_at, created_at) values (75, 'Simple Twist of Fate, A', 'Fancie Chape', 'Drama', 4, 2004, '2011-12-04 05:05:31');
insert into books (id, title, author, category, score, published_at, created_at) values (76, 'Pushover', 'Gillan Davson', 'Crime|Drama|Film-Noir', 7, 1994, '2023-09-07 13:44:12');
insert into books (id, title, author, category, score, published_at, created_at) values (77, 'Chocolat', 'Chadwick Castagnone', 'Drama', 1, 2007, '2013-05-26 14:19:09');
insert into books (id, title, author, category, score, published_at, created_at) values (78, 'Concursante', 'Karna Cluff', 'Comedy|Drama', 6, 2009, '2013-04-29 03:27:18');
insert into books (id, title, author, category, score, published_at, created_at) values (79, 'Bagdad Cafe (Out of Rosenheim)', 'Elysia Hovel', 'Comedy|Drama', 7, 1997, '2003-01-06 08:51:01');
insert into books (id, title, author, category, score, published_at, created_at) values (80, 'Angélique, marquise des anges', 'Teriann Matusov', 'Adventure|Romance', 7, 2010, '2014-03-21 10:11:48');
insert into books (id, title, author, category, score, published_at, created_at) values (81, 'Last Tango in Paris (Ultimo tango a Parigi)', 'Sari Plunkett', 'Drama|Romance', 10, 1984, '2003-04-18 22:14:34');
insert into books (id, title, author, category, score, published_at, created_at) values (82, 'Wuthering Heights', 'Gabriele Gorry', 'Drama|Romance', 4, 2010, '2015-05-19 00:00:22');
insert into books (id, title, author, category, score, published_at, created_at) values (83, 'Hot Pepper', 'Shane Noad', 'Documentary|Musical', -1, 2008, '2024-04-07 17:01:46');
insert into books (id, title, author, category, score, published_at, created_at) values (84, 'White Shadow, The', 'Clo Bunkle', 'Drama', 6, 1998, '2015-10-23 15:36:42');
insert into books (id, title, author, category, score, published_at, created_at) values (85, 'Sexual Life', 'Elena Brobyn', 'Romance', 1, 1995, '2020-06-29 11:52:07');
insert into books (id, title, author, category, score, published_at, created_at) values (86, 'Scout, The', 'Hillie Foster-Smith', 'Comedy|Drama', 5, 2005, '2017-01-08 05:47:55');
insert into books (id, title, author, category, score, published_at, created_at) values (87, 'After Last Season', 'Robinet McAllister', 'Drama|Thriller', 3, 2006, '2022-03-24 14:51:36');
insert into books (id, title, author, category, score, published_at, created_at) values (88, 'Decasia: The State of Decay', 'Maurene Kohnemann', 'Documentary', 4, 2001, '2018-07-23 15:11:09');
insert into books (id, title, author, category, score, published_at, created_at) values (89, 'Paper Man', 'Sherlocke McNeice', 'Comedy|Drama', 4, 1997, '2007-05-11 23:40:52');
insert into books (id, title, author, category, score, published_at, created_at) values (90, 'Love and Bullets', 'Jessamine Krojn', 'Crime|Drama', 7, 1989, '2011-05-17 05:24:18');
insert into books (id, title, author, category, score, published_at, created_at) values (91, 'Detention', 'Natassia Ygoe', 'Action|Drama|Thriller', 1, 1998, '2012-07-31 04:39:07');
insert into books (id, title, author, category, score, published_at, created_at) values (92, 'Variety Lights', 'Fletcher Prendergrass', 'Drama', 8, 1998, '2018-09-15 17:20:03');
insert into books (id, title, author, category, score, published_at, created_at) values (93, 'Merchant of Venice, The', 'Quentin Bly', 'Comedy|Drama', 0, 2000, '2020-03-09 05:25:32');
insert into books (id, title, author, category, score, published_at, created_at) values (94, 'Tarantula', 'Alvis Eckery', 'Horror|Sci-Fi', 4, 1987, '2011-01-09 06:52:41');
insert into books (id, title, author, category, score, published_at, created_at) values (95, 'Underworld: Evolution', 'Zaccaria Janecek', 'Action|Fantasy|Horror', 0, 2011, '2015-10-08 21:19:47');
insert into books (id, title, author, category, score, published_at, created_at) values (96, 'All the Brothers Were Valiant', 'Terra Smellie', 'Adventure|Drama|Romance', 2, 2004, '2016-11-06 07:38:06');
insert into books (id, title, author, category, score, published_at, created_at) values (97, 'Boondock Saints, The', 'Alma Kelleway', 'Action|Crime|Drama|Thriller', 2, 2003, '2004-06-01 09:24:02');
insert into books (id, title, author, category, score, published_at, created_at) values (98, 'Art of Dying, The (El Arte de Morir)', 'Martguerita Petroff', 'Horror|Mystery|Thriller', 1, 1999, '2018-05-05 08:45:51');
insert into books (id, title, author, category, score, published_at, created_at) values (99, 'She Wouldn''t Say Yes', 'Kendricks Jacomb', 'Comedy|Romance', 9, 2011, '2009-12-09 02:58:52');
insert into books (id, title, author, category, score, published_at, created_at) values (100, 'Long Absence, The (Une aussi longue absence)', 'Caryn Rawson', 'Drama', 10, 1998, '2017-03-24 00:47:50');







insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (1, 1, 1, '2012-07-30 21:43:30', '2012-03-23 00:38:46', 2, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (2, 2, 2, '2015-11-15 07:08:52', '2013-11-30 22:15:13', 3, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (3, 3, 3, '2015-03-17 17:34:53', '2021-11-09 00:45:02', 5, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (4, 4, 4, '2016-07-09 22:31:53', '2006-01-09 10:09:49', 7, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (5, 5, 5, '2004-08-24 03:19:54', null, null, false);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (6, 6, 6, '2008-09-25 01:55:39', '2008-02-26 20:40:47', 4, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (7, 7, 7, '2013-01-05 04:22:01', '2008-05-28 12:32:59', 7, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (8, 8, 8, '2001-11-28 13:01:04', '2024-01-30 13:19:03', 8, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (9, 9, 9, '2020-11-07 10:34:08', '2021-11-12 04:46:07', 3, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (10, 10, 10, '2022-05-24 01:30:11', null, null, false);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (11, 11, 11, '2017-09-28 16:41:30', '2015-01-07 10:23:26', 1, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (12, 12, 12, '2004-10-21 10:07:20', null, null, false);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (13, 13, 13, '2009-04-08 02:12:00', '2014-05-03 09:41:49', 5, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (14, 14, 14, '2016-05-29 02:44:14', '2014-09-28 00:51:57', 3, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (15, 15, 15, '2014-05-12 23:30:21', '2008-09-12 10:49:02', 4, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (16, 16, 16, '2024-09-16 17:15:00', '2018-03-18 15:53:54', 7, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (17, 17, 17, '2006-03-25 13:08:36', '2023-08-29 20:57:22', 7, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (18, 18, 18, '2013-05-20 07:59:19', '2007-02-25 18:01:08', 8, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (19, 19, 19, '2013-09-26 02:45:12', '2016-12-18 02:32:21', 6, true);
insert into borrowed_books (id, user_id, book_id, borrowed_at, returned_at, user_score, is_returned) values (20, 20, 20, '2001-05-16 05:40:12', '2014-12-17 03:28:00', 8, true);



