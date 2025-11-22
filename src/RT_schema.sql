

/* Reading Tracker Project
Schema & Tables
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
	status_id int not null references status(id),
	stars_id int references stars(id),
	genre_1 int not null references genre(id),
	genre_2 int references genre(id),
	pages int not null,
	owned bool
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
	date_started date,
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