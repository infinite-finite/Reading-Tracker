/* Reading Tracker Project
Queries
by Kelly Brown
*/

-- total books read, all time

select count(id) "All-Time Total Books Read"
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