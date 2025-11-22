

/* Reading Tracker Project
Schema & Table Data
by Kelly Brown
*/


/*================ TABLES ===================
 * Please note that these statements may need to be run sequentially due to foreign key constraints
 */

create table author(
	id serial primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null
	);

create table genre(
	id serial primary key,
	genre varchar(50) not null
	);

create table stars(
	id serial primary key,
	star_rating varchar(30) not null
	);

create table status(
	id serial primary key,
	status varchar(50) not null
	);

create table book(
	id serial primary key,
	title varchar(500) not null,
	author_id int not null references author(id),
	genre_1 int not null references genre(id),
	genre_2 int references genre(id),
	pages int not null
	);

create table review_details(
	id serial primary key,
	book_id int not null references book(id),
	stars_id int not null references stars(id),
	review varchar(1000)
	);

create table reading_history(
	id serial primary key,
	book_id int not null references book(id),
	date_started date not null,
	date_finished date,
	did_not_finish bool
	);

create table book_format(
    id serial primary key,
    format varchar(25) not null
    );

create table owned_books(
    id serial primary key,
    book_id int not null references book(id),
    book_format_id int references book_format(id)
    );



/* ============= INSERTING DATA ================= */

-- creating genre records
insert into genre (genre)
values
	('fiction'),
	('non-fiction'),
	('fantasy'),
	('science fiction'),
	('horror'),
	('mystery'),
	('historical fiction'),
	('romance'),
	('history'),
	('science'),
	('mathematics'),
	('biography'),
	('autobiography'),
	('classic literature'),
	('children''s literature'),
	('adventure'),
	('western'),
	('dystopian'),
	('fairy tale'),
	('poetry'),
	('recipe'),
	('self-help')

-- creating star rating records
insert into stars (star_rating)
values
	('1 star'),
	('2 stars'),
	('3 stars'),
	('4 stars'),
	('5 stars')

-- creating status records
insert into status (status)
values
	('read'),
	('currently reading'),
	('want to read'),
	('did not finish')

-- creating book format records
insert into book_format (format)
values
	('paperback'),
	('hardcover'),
	('digitial')

-- creating author records
insert into author (first_name, last_name)
values
	('fname1', 'lname1'),
	('fname2', 'lname2'),
	('fname3', 'lname3'),
	('fname4', 'lname4'),
	('fname5', 'lname5'),
	('fname6', 'lname6'),
	('fname7', 'lname7'),
	('fname8', 'lname8'),
	('fname9', 'lname9'),
	('fname10', 'lname10'),
	('fname11', 'lname11'),
	('fname12', 'lname12'),
	('fname13', 'lname13'),
	('fname14', 'lname14'),
	('fname15', 'lname15'),
	('fname16', 'lname16'),
	('fname17', 'lname17'),
	('fname18', 'lname18'),
	('fname19', 'lname19'),
	('fname20', 'lname20'),
	('fname21', 'lname21'),
	('fname22', 'lname22'),
	('fname23', 'lname23'),
	('fname24', 'lname24'),
	('fname25', 'lname25'),
	('fname26', 'lname26'),
	('fname27', 'lname27'),
	('fname28', 'lname28'),
	('fname29', 'lname29'),
	('fname30', 'lname30'),
	('fname31', 'lname31'),
	('fname32', 'lname32'),
	('fname33', 'lname33'),
	('fname34', 'lname34'),
	('fname35', 'lname35'),
	('fname36', 'lname36'),
	('fname37', 'lname37'),
	('fname38', 'lname38'),
	('fname39', 'lname39'),
	('fname40', 'lname40'),
	('fname41', 'lname41'),
	('fname42', 'lname42'),
	('fname43', 'lname43'),
	('fname44', 'lname44'),
	('fname45', 'lname45'),
	('fname46', 'lname46'),
	('fname47', 'lname47'),
	('fname48', 'lname48'),
	('fname49', 'lname49'),
	('fname50', 'lname50'),
	('fname51', 'lname51'),
	('fname52', 'lname52'),
	('fname53', 'lname53'),
	('fname54', 'lname54'),
	('fname55', 'lname55')

-- create book records
insert into book (title, author_id, genre_1, genre_2, pages)
values
	('Title 1', 1, 1, NULL, 562),
	('Title 2', 2, 2, NULL, 206),
	('Title 3', 3, 3, NULL, 129),
	('Title 4', 4, 4, NULL, 521),
	('Title 5', 5, 5, 18, 374),
	('Title 6', 6, 6, NULL, 366),
	('Title 7', 7, 7, NULL, 421),
	('Title 8', 8, 8, 3, 365),
	('Title 9', 9, 9, NULL, 674),
	('Title 10', 10, 10, NULL, 411),
	('Title 11', 4, 1, NULL, 489),
	('Title 12', 12, 12, NULL, 298),
	('Title 13', 13, 13, NULL, 433),
	('Title 14', 14, 14, 16, 336),
	('Title 15', 5, 5, NULL, 392),
	('Title 16', 16, 16, 17, 265),
	('Title 17', 17, 17, NULL, 509),
	('Title 18', 18, 18, NULL, 617),
	('Title 19', 19, 19, NULL, 774),
	('Title 20', 20, 1, NULL, 219),
	('Title 21', 14, 21, NULL, 88),
	('Title 22', 22, 22, NULL, 175),
	('Title 23', 23, 2, NULL, 537),
	('Title 24', 24, 5, NULL, 296),
	('Title 25', 25, 8, NULL, 249),
	('Title 26', 26, 3, NULL, 280),
	('Title 27', 27, 1, NULL, 307),
	('Title 28', 28, 22, NULL, 408),
	('Title 29', 29, 11, NULL, 183),
	('Title 30', 30, 15, NULL, 156),
	('Title 31', 31, 19, NULL, 290),
	('Title 32', 32, 20, NULL, 1247),
	('Title 33', 33, 1, NULL, 628),
	('Title 34', 34, 1, NULL, 481),
	('Title 35', 35, 2, NULL, 319),
	('Title 36', 36, 1, NULL, 352),
	('Title 37', 37, 4, 5, 905),
	('Title 38', 5, 5, NULL, 671),
	('Title 39', 39, 1, NULL, 493),
	('Title 40', 40, 2, NULL, 355),
	('Title 41', 41, 1, NULL, 408),
	('Title 42', 42, 1, NULL, 492),
	('Title 43', 43, 1, NULL, 386),
	('Title 44', 44, 1, NULL, 751),
	('Title 45', 45, 12, NULL, 689),
	('Title 46', 46, 16, NULL, 256),
	('Title 47', 47, 17, NULL, 394),
	('Title 48', 48, 18, NULL, 648),
	('Title 49', 49, 19, NULL, 506),
	('Title 50', 5, 5, NULL, 624),
	('Title 51', 51, 18, NULL, 361),
	('Title 52', 52, 22, NULL, 400),
	('Title 53', 53, 1, NULL, 432),
	('Title 54', 54, 17, NULL, 941),
	('Title 55', 55, 18, NULL, 1009),
	('Title 56', 50, 7, NULL, 504),
	('Title 57', 5, 5, 18, 721),
	('Title 58', 21, 6, NULL, 369),
	('Title 59', 4, 4, 5, 451),
	('Title 60', 13, 14, NULL, 374),
	('Title 61', 38, 10, NULL, 168),
	('Title 62', 21, 6, NULL, 193),
	('Title 63', 26, 8, 3, 270),
	('Title 64', 3, 4, 5, 376),
	('Title 65', 2, 10, NULL, 290),
	('Title 66', 2, 11, NULL, 264),
	('Title 67', 4, 4, 18, 298),
	('Title 68', 3, 3, NULL, 523),
	('Title 69', 51, 4, NULL, 496),
	('Title 70', 43, 14, NULL, 383),
	('Title 71', 47, 16, NULL, 457),
	('Title 72', 50, 20, NULL, 613),
	('Title 73', 14, 19, 16, 522),
	('Title 74', 10, 2, NULL, 233),
	('Title 75', 20, 20, NULL, 204),
	('Title 76', 11, 2, NULL, 142),
	('Title 77', 8, 8, 3, 307),
	('Title 78', 3, 3, NULL, 286),
	('Title 79', 3, 3, NULL, 299),
	('Title 80', 9, 2, NULL, 319),
	('Title 81', 4, 4, 18,402),
	('Title 82', 10, 2, NULL, 385),
	('Title 83', 3, 3, NULL, 244),
	('Title 84', 3, 2, NULL, 187)

-- create owned books records
insert into owned_books (book_id, book_format_id)
values
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 3),
    (6, 3),
    (7, 3),
    (12, 3),
    (13, 3),
    (14, 1),
    (15, 1),
    (16, 1),
    (17, 3),
    (19, 1),
    (20, 3),
    (25, 1),
    (26, 3),
    (27, 3),
    (28, 3),
    (29, 3),
    (30, 3),
    (32, 3),
    (33, 1),
    (34, 3),
    (35, 1),
    (36, 1),
    (37, 1),
    (43, 1),
    (44, 3),
    (45, 1),
    (46, 2),
    (47, 1),
    (48, 2),
    (49, 1),
    (53, 1),
    (54, 1),
    (55, 3),
    (56, 3),
    (57, 3),
    (58, 3),
    (61, 3),
    (62, 3),
    (63, 3),
    (64, 3),
    (75, 1),
    (76, 3),
    (77, 2),
    (78, 1),
    (79, 3),
    (81, 1),
    (82, 1),
    (84, 1)
