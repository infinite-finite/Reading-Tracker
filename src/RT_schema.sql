

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
	genre int not null references genre(id),
	pages int not null,
	status_id int not null references status(id)
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
	date_finished date
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
	('self-help');

-- creating star rating records
insert into stars (star_rating)
values
	('1 star'),
	('2 stars'),
	('3 stars'),
	('4 stars'),
	('5 stars');

-- creating status records
insert into status (status)
values
	('not read'),
	('read'),
	('currently reading'),
	('want to read'),
	('did not finish');

-- creating book format records
insert into book_format (format)
values
	('paperback'),
	('hardcover'),
	('digital'),
	('audiobook');

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
	('fname55', 'lname55');

-- create book records
insert into book (title, author_id, genre, pages, status_id)
values
	('Title 1', 17, 9, 709, 2),
    ('Title 2', 6, 5, 656, 2),
    ('Title 3', 15, 20, 747, 2),
    ('Title 4', 16, 19, 830, 4),
    ('Title 5', 53, 2, 144, 2),
    ('Title 6', 11, 16, 667, 2),
    ('Title 7', 43, 19, 559, 5),
    ('Title 8', 38, 19, 266, 4),
    ('Title 9', 31, 2, 226, 2),
    ('Title 10', 41, 18, 170, 2),
    ('Title 11', 13, 13, 834, 2),
    ('Title 12', 16, 18, 275, 2),
    ('Title 13', 54, 2, 478, 2),
    ('Title 14', 36, 5, 763, 2),
    ('Title 15', 28, 5, 298, 2),
    ('Title 16', 36, 19, 449, 2),
    ('Title 17', 3, 6, 546, 2),
    ('Title 18', 52, 1, 335, 2),
    ('Title 19', 42, 20, 455, 4),
    ('Title 20', 32, 13, 337, 3),
    ('Title 21', 53, 11, 423, 1),
    ('Title 22', 47, 6, 672, 4),
    ('Title 23', 44, 1, 145, 3),
    ('Title 24', 39, 22, 1003, 4),
    ('Title 25', 42, 16, 481, 2),
    ('Title 26', 54, 19, 471, 4),
    ('Title 27', 46, 20, 410, 4),
    ('Title 28', 51, 16, 368, 2),
    ('Title 29', 45, 2, 290, 4),
    ('Title 30', 42, 13, 343, 3),
    ('Title 31', 10, 11, 135, 2),
    ('Title 32', 12, 8, 936, 4),
    ('Title 33', 9, 8, 815, 4),
    ('Title 34', 40, 1, 670, 4),
    ('Title 35', 47, 6, 684, 2),
    ('Title 36', 51, 17, 837, 4),
    ('Title 37', 6, 10, 255, 2),
    ('Title 38', 10, 16, 998, 2),
    ('Title 39', 45, 21, 128, 4),
    ('Title 40', 32, 15, 126, 4),
    ('Title 41', 26, 21, 451, 2),
    ('Title 42', 16, 4, 251, 2),
    ('Title 43', 5, 4, 877, 2),
    ('Title 44', 23, 7, 105, 2),
    ('Title 45', 53, 22, 595, 2),
    ('Title 46', 25, 8, 891, 4),
    ('Title 47', 34, 1, 343, 2),
    ('Title 48', 29, 5, 601, 4),
    ('Title 49', 1, 21, 854, 4),
    ('Title 50', 15, 10, 778, 2),
    ('Title 51', 43, 8, 799, 2),
    ('Title 52', 12, 21, 857, 2),
    ('Title 53', 45, 21, 511, 2),
    ('Title 54', 48, 8, 189, 4),
    ('Title 55', 34, 19, 906, 2),
    ('Title 56', 38, 1, 573, 2),
    ('Title 57', 48, 15, 610, 2),
    ('Title 58', 8, 2, 99, 2),
    ('Title 59', 16, 19, 563, 2),
    ('Title 60', 28, 17, 947, 2),
    ('Title 61', 24, 10, 908, 2),
    ('Title 62', 15, 19, 292, 2),
    ('Title 63', 21, 10, 1020, 1),
    ('Title 64', 21, 14, 868, 2),
    ('Title 65', 9, 7, 215, 2),
    ('Title 66', 12, 13, 921, 2),
    ('Title 67', 52, 3, 875, 1),
    ('Title 68', 26, 7, 956, 2),
    ('Title 69', 25, 21, 733, 2),
    ('Title 70', 13, 11, 613, 2),
    ('Title 71', 19, 7, 544, 2),
    ('Title 72', 18, 21, 128, 2),
    ('Title 73', 13, 4, 147, 2),
    ('Title 74', 44, 15, 607, 2),
    ('Title 75', 33, 9, 101, 2),
    ('Title 76', 27, 9, 981, 4),
    ('Title 77', 32, 13, 899, 2),
    ('Title 78', 43, 3, 620, 2),
    ('Title 79', 15, 16, 352, 2),
    ('Title 80', 23, 19, 958, 2),
    ('Title 81', 8, 8, 99, 2),
    ('Title 82', 26, 21, 596, 2),
    ('Title 83', 19, 19, 648, 2),
    ('Title 84', 37, 15, 779, 2),
    ('Title 85', 9, 7, 661, 4),
    ('Title 86', 3, 3, 867, 2);

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
    (33, 1);

-- create reading history records
insert into reading_history (book_id, date_started, date_finished)
values
	(20, '2023-06-28', NULL),
	(23, '2024-10-15', NULL),
	(30, '2024-10-03', NULL),
	(1, '2024-05-16', '2024-06-07'),
	(2, '2023-07-19', '2023-08-06'),
	(3, '2023-12-19', '2024-01-03'),
	(5, '2023-10-15', '2023-11-05'),
	(6, '2023-09-17', '2023-09-20'),
	(9, '2024-05-01', '2024-05-21'),
	(10, '2024-04-07', '2024-04-16'),
	(11, '2023-12-17', '2024-01-06'),
	(12, '2023-04-02', '2023-04-05'),
	(13, '2023-07-29', '2023-08-11'),
	(14, '2023-12-25', '2024-01-18'),
	(15, '2024-03-29', '2024-04-16'),
	(16, '2024-02-03', '2024-02-12'),
	(17, '2023-07-16', '2023-07-30'),
	(18, '2024-08-26', '2024-09-03'),
	(25, '2024-04-05', '2024-04-24'),
	(28, '2023-06-07', '2023-06-29'),
	(31, '2023-09-29', '2023-10-11'),
	(35, '2023-10-05', '2023-10-20'),
	(37, '2023-04-19', '2023-04-24'),
	(38, '2023-04-28', '2023-05-21'),
	(41, '2023-06-11', '2023-06-14'),
	(42, '2024-06-24', '2024-07-14'),
	(43, '2023-08-03', '2023-08-08'),
	(44, '2024-10-05', '2024-10-13'),
	(45, '2023-05-08', '2023-05-13'),
	(47, '2024-10-23', '2024-11-06'),
	(50, '2024-02-17', '2024-03-07'),
	(51, '2024-01-11', '2024-01-23'),
	(52, '2023-12-02', '2023-12-07'),
	(53, '2023-10-07', '2023-10-27'),
	(55, '2023-07-10', '2023-07-29'),
	(56, '2023-01-16', '2023-02-07'),
	(57, '2024-05-25', '2024-06-05'),
	(58, '2023-07-20', '2023-08-12'),
	(59, '2023-06-18', '2023-07-11'),
	(60, '2023-05-07', '2023-05-27'),
	(61, '2023-07-15', '2023-07-31'),
	(62, '2024-03-01', '2024-03-19'),
	(64, '2024-10-18', '2024-11-05'),
	(65, '2023-11-25', '2023-12-15'),
	(66, '2024-05-02', '2024-05-05'),
	(68, '2024-02-28', '2024-03-13'),
	(69, '2024-05-27', '2024-06-14'),
	(70, '2024-10-31', '2024-11-13'),
	(71, '2024-01-25', '2024-02-12'),
	(72, '2023-06-24', '2023-07-14'),
	(73, '2024-11-13', '2024-11-25'),
	(74, '2024-08-07', '2024-08-18'),
	(75, '2023-05-15', '2023-05-25'),
	(77, '2023-01-14', '2023-01-23'),
	(78, '2023-02-13', '2023-03-07'),
	(79, '2023-04-15', '2023-05-09'),
	(80, '2024-09-10', '2024-09-14'),
	(81, '2023-03-20', '2023-04-06'),
	(82, '2024-09-23', '2024-10-03'),
	(83, '2023-01-19', '2023-02-03'),
	(84, '2023-01-03', '2023-01-27'),
	(86, '2023-03-31', '2023-04-14'),
	(7,'2023-11-19',NULL);

-- create review records
insert into review_details (book_id, stars_id, review)
values
	(1, 5, NULL),
	(2, 3, NULL),
	(3, 5, 'In reiciendis animi quia asperiores ipsa quibusdam sequi dolorem incidunt pariatur ut quas veniam at itaque aliquam repellat qui vero alias nesciunt fugiat adipisci eum illo corrupti vel voluptate assumenda explicabo incidunt doloremque fugiat nihil esse dicta error eos eaque voluptatem nostrum eum.'),
	(5, 2, NULL),
	(6, 3, NULL),
	(9, 2, 'Officiis explicabo dolore impedit fugiat ex sapiente quibusdam dolorem sint maxime obcaecati neque magnam consectetur nulla exercitationem sit dignissimos omnis natus eveniet commodi eaque odit aut provident corrupti dicta labore nulla distinctio iste perferendis nobis doloremque.'),
	(10, 4, 'Vel veritatis dolores omnis deserunt consequatur deserunt illo molestias recusandae aperiam laborum earum a doloribus rerum debitis culpa quasi beatae enim nihil recusandae.'),
	(11, 3, 'Aliquam incidunt corrupti vel excepturi et necessitatibus qui laudantium a natus molestiae aspernatur vero incidunt debitis aliquam doloribus odit consequuntur tempora enim optio.'),
	(12, 4, NULL),
	(13, 5, NULL),
	(14, 2, NULL),
	(15, 2, 'Officiis atque quia accusantium totam ullam voluptatibus harum quibusdam soluta delectus eveniet natus tempora?'),
	(16, 4, 'Sit tempore nulla ut illo quasi dolorem alias itaque tempora culpa aperiam id incidunt veritatis omnis dolorem pariatur tenetur modi iste voluptatem illo consequuntur ab porro aliquam aspernatur cum unde quam pariatur illum natus.'),
	(17, 5, 'Tenetur rem officiis repellendus aliquid sed architecto amet unde deserunt non aperiam inventore ab saepe a dolor sint neque repudiandae earum impedit dignissimos.'),
	(18, 5, 'Dolor eaque reprehenderit modi quae hic sed sit animi aperiam ipsa nesciunt assumenda non culpa eaque consequatur quos ad maiores voluptas impedit dolorem rem deleniti voluptate quasi nesciunt odio tempora earum eum vel architecto eligendi perferendis tempore.'),
	(25, 1, 'Aperiam tempora maiores obcaecati at consequatur veniam nihil quibusdam explicabo fugiat eum excepturi quos voluptate sed.'),
	(28, 2, 'Mollitia perspiciatis saepe nisi dolor culpa ducimus accusamus odit eum deleniti dolorem exercitationem illum expedita sunt possimus eos maxime nulla praesentium quidem iure quidem incidunt debitis eos eum inventore animi enim tempore ratione maxime.'),
	(31, 1, 'Rerum libero sapiente dignissimos vel amet eum et voluptate expedita deleniti possimus minima aspernatur iure.'),
	(35, 3, NULL),
	(37, 4, 'Reprehenderit ab eius aliquam aliquid nisi molestias pariatur enim voluptatum distinctio corrupti quod nobis sequi exercitationem maxime?'),
	(38, 3, 'Aliquam totam veniam tenetur ea quam nihil veritatis quod eligendi vero corrupti fugit ex numquam nobis odio dignissimos cumque expedita?'),
	(41, 1, NULL),
	(42, 4, 'Itaque quam earum doloremque dignissimos odit iure odio sapiente debitis et ipsa accusantium nostrum excepturi temporibus vel praesentium laboriosam optio natus beatae esse dolor dolore.'),
	(43, 1, NULL),
	(44, 4, 'Voluptatibus blanditiis cumque temporibus obcaecati iste ex deleniti quos eos quidem rem libero aspernatur quidem iusto voluptatum perspiciatis totam sed numquam quis autem similique pariatur eius pariatur optio dolor dicta amet sunt recusandae laboriosam vel praesentium consectetur dolor id enim voluptate?'),
	(45, 3, NULL),
	(47, 4, 'Ex asperiores pariatur officiis tenetur fugiat deserunt voluptas ipsum odio enim ducimus recusandae dolore doloremque omnis ea soluta optio aspernatur odio esse.'),
	(50, 3, 'Doloribus quam exercitationem in recusandae dignissimos dolores temporibus atque debitis incidunt ullam?'),
	(51, 1, NULL),
	(52, 2, 'Veritatis quis suscipit quaerat recusandae provident dignissimos dolor enim id voluptatibus aperiam est culpa incidunt veniam possimus ex.'),
	(53, 3, NULL),
	(55, 2, NULL),
	(56, 5, 'Rem pariatur perspiciatis laboriosam sint temporibus hic voluptas debitis sequi assumenda deleniti praesentium architecto fugit aut debitis delectus quia sit dolor molestias numquam vitae quidem aliquam possimus aperiam voluptate excepturi eos nulla ad debitis laboriosam sint assumenda quas eaque illo accusantium ex?'),
	(57, 4, 'Autem accusamus blanditiis quos expedita animi numquam omnis ut ratione praesentium eveniet voluptates vero ratione aspernatur harum dolorum ut reiciendis ab delectus sequi consectetur qui impedit explicabo sit tenetur velit minus ducimus pariatur hic.'),
	(58, 5, 'Quas explicabo iste error quisquam doloribus quaerat obcaecati pariatur similique aliquam laborum quia.'),
	(59, 5, 'Distinctio odio amet excepturi ducimus praesentium laboriosam atque corrupti aperiam quibusdam est saepe doloribus deserunt quidem ratione eaque provident error.'),
	(60, 1, 'Fuga totam officiis beatae ipsam commodi sed aliquid accusamus voluptate dolore odit deserunt earum dolorum illo odio laborum ullam velit dolores quia nam aspernatur vel quasi quae.'),
	(61, 1, 'Excepturi pariatur magnam inventore tempore ab repudiandae adipisci repudiandae quia quam quibusdam quis odit sequi consequatur aliquam voluptate ratione minima dolor nam tempora saepe facere?'),
	(62, 2, NULL),
	(64, 4, NULL),
	(65, 3, NULL),
	(66, 5, NULL),
	(68, 2, NULL),
	(69, 4, NULL),
	(70, 1, 'Laboriosam cum hic itaque molestiae earum sint deserunt atque quos laudantium nulla porro quasi corporis dolor inventore provident dicta libero possimus ratione voluptas quae dicta minus ullam nobis eveniet.'),
	(71, 4, NULL),
	(72, 2, 'Sit laborum consequatur in facere nemo consequuntur veritatis voluptatum pariatur alias ad?'),
	(73, 4, 'Porro fugiat in molestias doloribus vitae neque aspernatur laudantium repellat quae exercitationem molestiae commodi mollitia quos perferendis illo officia sunt earum voluptate assumenda quasi impedit quas odio provident voluptate vitae ipsam officia eum omnis ut iure?'),
	(74, 3, 'Doloribus eaque necessitatibus natus error nisi beatae aliquid illo dicta doloremque officiis placeat consectetur debitis minima earum sequi velit facilis enim totam temporibus unde deleniti.'),
	(75, 1, 'Velit aspernatur perferendis quas ipsam enim nesciunt in aliquam delectus repellendus sequi doloribus ex libero ullam tempora distinctio quidem sint recusandae error reprehenderit repellat veniam quas.'),
	(77, 1, 'Quae ut sit nostrum nulla tempora perferendis dicta in tempora eius expedita soluta enim non necessitatibus officiis totam.'),
	(78, 2, 'Excepturi dicta nostrum molestias porro recusandae accusamus dignissimos adipisci tempore vero ea laudantium incidunt mollitia facere odit a dolores impedit.'),
	(79, 2, 'Consequatur dolor animi hic eveniet iure eum doloribus ipsa dolores molestias magnam suscipit magni quo minima quidem nostrum consequuntur quo voluptas at fugiat?'),
	(80, 3, 'Tenetur vero aperiam porro officia suscipit deleniti vitae corporis expedita dolorem possimus soluta temporibus aliquid itaque corrupti.'),
	(81, 2, 'Itaque quidem maxime cupiditate impedit sit quibusdam optio porro consequuntur totam atque molestiae suscipit sapiente neque ad in vero fugiat magnam voluptatum quae reprehenderit blanditiis consequatur sapiente voluptas facilis nam quod porro quae quasi laborum suscipit aliquam repudiandae hic adipisci maiores harum voluptas perspiciatis laboriosam nesciunt.'),
	(82, 3, NULL),
	(83, 2, NULL),
	(84, 5, NULL),
	(86, 1, NULL);