

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
	;

-- creating star rating records
insert into stars (star_rating)
values
	('1 star'),
	('2 stars'),
	('3 stars'),
	('4 stars'),
	('5 stars')
	;

-- creating status records
insert into status (status)
values
	('not read'),
	('read'),
	('currently reading'),
	('want to read'),
	('did not finish')
	;

-- creating book format records
insert into book_format (format)
values
	('paperback'),
	('hardcover'),
	('digital'),
	('audiobook')
	;

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
	;

-- create book records
insert into book (title, author_id, genre, pages)
values
	('Title 1', 25, 19, 841),
    ('Title 2', 16, 2, 519),
    ('Title 3', 2, 4, 727),
    ('Title 4', 46, 5, 240),
    ('Title 5', 37, 21, 738),
    ('Title 6', 33, 8, 95),
    ('Title 7', 55, 2, 832),
    ('Title 8', 3, 13, 455),
    ('Title 9', 28, 9, 364),
    ('Title 10', 48, 10, 719),
    ('Title 11', 35, 9, 834),
    ('Title 12', 38, 14, 473),
    ('Title 13', 49, 1, 748),
    ('Title 14', 9, 1, 294),
    ('Title 15', 6, 15, 649),
    ('Title 16', 4, 1, 747),
    ('Title 17', 18, 16, 612),
    ('Title 18', 16, 20, 109),
    ('Title 19', 34, 6, 556),
    ('Title 20', 50, 13, 576),
    ('Title 21', 3, 21, 912),
    ('Title 22', 35, 19, 369),
    ('Title 23', 19, 6, 862),
    ('Title 24', 41, 22, 736),
    ('Title 25', 28, 3, 648),
    ('Title 26', 11, 21, 337),
    ('Title 27', 28, 20, 540),
    ('Title 28', 7, 15, 798),
    ('Title 29', 51, 11, 281),
    ('Title 30', 47, 4, 238),
    ('Title 31', 8, 8, 495),
    ('Title 32', 7, 16, 312),
    ('Title 33', 17, 2, 770),
    ('Title 34', 37, 22, 161),
    ('Title 35', 55, 21, 1002),
    ('Title 36', 9, 19, 624),
    ('Title 37', 44, 16, 946),
    ('Title 38', 2, 1, 501),
    ('Title 39', 2, 21, 813),
    ('Title 40', 11, 9, 220),
    ('Title 41', 42, 4, 105),
    ('Title 42', 19, 5, 527),
    ('Title 43', 44, 14, 709),
    ('Title 44', 37, 21, 202),
    ('Title 45', 9, 2, 934),
    ('Title 46', 23, 2, 523),
    ('Title 47', 21, 18, 313),
    ('Title 48', 53, 13, 720),
    ('Title 49', 39, 4, 444),
    ('Title 50', 2, 21, 260),
    ('Title 51', 23, 18, 703),
    ('Title 52', 50, 16, 111),
    ('Title 53', 12, 13, 945),
    ('Title 54', 16, 21, 552),
    ('Title 55', 45, 21, 535),
    ('Title 56', 12, 16, 985),
    ('Title 57', 28, 1, 654),
    ('Title 58', 23, 17, 935),
    ('Title 59', 24, 7, 500),
    ('Title 60', 13, 22, 804),
    ('Title 61', 16, 16, 760),
    ('Title 62', 35, 16, 586),
    ('Title 63', 19, 12, 827),
    ('Title 64', 18, 18, 759),
    ('Title 65', 3, 7, 900),
    ('Title 66', 16, 13, 237),
    ('Title 67', 1, 14, 367),
    ('Title 68', 55, 18, 637),
    ('Title 69', 17, 6, 379),
    ('Title 70', 11, 21, 549),
    ('Title 71', 37, 21, 373),
    ('Title 72', 31, 17, 1018),
    ('Title 73', 51, 1, 708),
    ('Title 74', 48, 7, 1010),
    ('Title 75', 23, 11, 902),
    ('Title 76', 22, 8, 90),
    ('Title 77', 25, 13, 883),
    ('Title 78', 32, 18, 719),
    ('Title 79', 13, 8, 430),
    ('Title 80', 29, 11, 408),
    ('Title 81', 45, 4, 263),
    ('Title 82', 3, 1, 356),
    ('Title 83', 16, 16, 414),
    ('Title 84', 48, 16, 292),
    ('Title 85', 1, 20, 893),
    ('Title 86', 18, 5, 427)
   ;

-- create owned books records
insert into owned_books (book_id, book_format_id)
values
    (43, 3),
    (78, 2),
    (9, 2),
    (45, 3),
    (37, 3),
    (23, 4),
    (49, 3),
    (29, 2),
    (61, 2),
    (39, 2),
    (26, 3),
    (30, 2),
    (74, 2),
    (84, 3),
    (21, 2),
    (72, 4),
    (86, 2),
    (82, 3),
    (4, 3),
    (34, 1),
    (63, 2),
    (12, 1),
    (6, 4),
    (71, 2),
    (5, 1),
    (24, 1),
    (10, 1),
    (8, 3),
    (73, 4),
    (2, 1),
    (85, 3),
    (52, 2),
    (13, 1),
    (27, 3),
    (81, 2),
    (58, 1),
    (50, 3),
    (11, 1),
    (77, 1),
    (68, 4),
    (22, 2),
    (66, 4),
    (15, 2),
    (59, 3),
    (17, 2),
    (42, 2),
    (53, 1),
    (20, 3),
    (55, 2),
    (75, 1),
    (79, 2),
    (41, 1),
    (35, 2),
    (7, 2),
    (31, 4),
    (36, 3),
    (64, 2),
    (18, 1),
    (80, 4),
    (67, 4),
    (28, 2),
    (40, 2),
    (70, 3),
    (16, 3),
    (83, 1),
    (25, 3),
    (3, 2),
    (76, 2),
    (54, 4),
    (47, 2),
    (57, 4),
    (19, 3),
    (48, 2),
    (62, 4),
    (33, 1)
    ;
