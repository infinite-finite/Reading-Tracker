/* Reading Tracker Project
Queries
by Kelly Brown
*/

-- total books read, all time

select count(id) "Total Books Read"
from book
where status_id = 2

-- did not finish

select b.title, a.first_name, a.last_name
from book b
join author a
on b.author_id = a.id
where b.status_id = 5

-- total pages read, all time

select sum(pages) "All-Time Total Pages Read"
from book
where status_id = 2

-- want to read list

select b.title, a.first_name, a.last_name
from book b
join author a
on b.author_id = a.id
where b.status_id = 4

-- currently reading list

select b.title, a.first_name, a.last_name
from book b
join author a
on b.author_id = a.id
where status_id = 3

-- average reading time, all time

select avg(date_finished - date_started)
from reading_history rh

-- average reading time, 2024

select avg(date_finished - date_started)
from reading_history rh
where date_finished > '2023-12-31' and date_finished < '2025-01-01'

-- total books read, 2024

select count(b.id)
from book b
join reading_history rh
on b.id = rh.book_id
where (b.status_id = 2) and (rh.date_finished > '2023-12-31' and rh.date_finished < '2025-01-01'))

-- list of books read, 2024
select b.title, a.first_name, a.last_name
from book b
join author a
on b.author_id = a.id
where (b.status_id = 2) and (rh.date_finished > '2023-12-31'and rh.date_finished < '2025-01-01'))

-- total pages read, 2024

select sum(b.pages) "Total Pages Read 2024"
from book b
join reading_history rh
on rh.book_id = b.id
where (b.status_id = 2) and (rh.date_finished > '2023-12-31'and rh.date_finished < '2025-01-01'))

-- average star rating, 2024

select avg(rd.stars_id)
from review_details rd
join reading_history rh
on rh.book_id = rd.book_id
where rh.date_finished > '2023-12-31' and rh.date_finished < '2025-01-01'

-- average star rating, all time

select avg(stars_id)
from review_details rd

-- top read genre, all time

select genre
from genre g
where id =
(select mode()
within group (order by genre)
from book
where status_id = 2)

-- top read genre, 2024

select genre
from genre g
where id =
(select mode()
within group (order by b.genre)
from book b
join reading_history rh
on b.id = rh.book_id
where b.status_id = 2 and (rh.date_finished > '2023-12-31' and rh.date_finished < '2025-01-01'))

-- book collection organized by book format then author

select b.title, a.first_name, a.last_name, bf.format
from owned_books ob
join book b
on b.id = ob.book_id
join author a
on a.id = b.author_id
join book_format bf
on bf.id = ob.book_format_id
order by ob.book_format_id desc, a.last_name, a.first_name

-- top book format, all time

select bf.format
from book_format bf
join book b
on b.book_format_id = bf.id
where b.status = 2

-- top book format, 2024

select bf.format
from book_format bf
join book b
on b.book_format_id = bf.id
join reading_history rh
on rh.book_id = b.id
where rh.date_finished > '2023-12-31' and rh.date_finished < '2025-01-01'