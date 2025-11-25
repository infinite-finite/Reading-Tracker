# Reading-Tracker
The Reading Tracker is a project that allows the user to track, rate, and review the books they've read. The information they provide can then be used to provide a summary of their reading habits.

## Objectives

* Allow the user to track, rate, and review the books they've read and want to read
* Provide detailed information about the user's reading history and books they own

## Reading Tracker Database Structure

The Reading Tracker database was designed to be highly normalized in order to decrease redundancy and to increase efficiency storing the data.

### Database Diagram



<details>
<summary>Expand for Detailed Table Information</summary>

## Table: Book

The `book` table stores information about books the user has read or which they want to read.

### Columns

| Column Name | Data Type | Constraints                     | Description                                         |
|:------------| :--- |:--------------------------------|:----------------------------------------------------|
| id          | serial | primary key                     | unique identifier for each book record              |
| title       | varchar(500) | not null                        | the title of the book                               |
| author_id   | int | not null | foreign key referencing author(id)                  |
| genre       | int | not null | foreign key referencing genre(id)                   |
| pages       | int | not null | the number of pages in the book                     |

## Table: Author

The `author` table stores the list of authors associated with the books in the `book` table.

### Columns

| Column Name | Data Type   | Constraints                     | Description                              |
|:------------|:------------|:--------------------------------|:-----------------------------------------|
| id          | serial      | primary key                     | unique identifier for each author record |
| first_name  | varchar(50) | not null                        | the author's first name                  |
| last_name | varchar(50) | not null | the author's last name |

## Table: Genre

The `genre` table stores the list of genres associated with the books in the `book` table.

### Columns

| Column Name | Data Type   | Constraints                     | Description                             |
|:------------|:------------|:--------------------------------|:----------------------------------------|
| id          | serial      | primary key                     | unique identifier for each genre record |
| genre       | varchar(50) | not null                        | book genre                              |

## Table: Owned Books

The `owned_books` table stores information about which books in the `books` table the user owns.

### Columns

| Column Name    | Data Type | Constraints                     | Description                                  |
|:---------------|:----------|:--------------------------------|:---------------------------------------------|
| id             | serial    | primary key                     | unique identifier for each owned book record |
| book_id        | int       | not null                        | foreign key referencing book(id)             |
| book_format_id | int       | not null | foreign key referencing book_format(id)      |

## Table: Book Format

The `book_format` table stores information about the different formats of the books from the `book` table.

### Columns

| Column Name | Data Type   | Constraints                     | Description                              |
|:------------|:------------|:--------------------------------|:-----------------------------------------|
| id          | serial      | primary key                     | unique identifier for each format record |
| format      | varchar(25) | not null                        | book format                              |

## Table: Status

The `status` table contains information about the status of the books in the `book` table.

### Columns

| Column Name | Data Type   | Constraints                     | Description                              |
|:------------|:------------|:--------------------------------|:-----------------------------------------|
| id          | serial      | primary key                     | unique identifier for each status record |
| status      | varchar(50) | not null                        | book status                              |

## Table: Reading History

The `reading_history` table contains information about which books the user has read from the `book` table.

### Columns

| Column Name | Data Type | Constraints                     | Description                                                                           |
|:------------|:----------|:--------------------------------|:--------------------------------------------------------------------------------------|
| id          | serial    | primary key                     | unique identifier for each reading history record                                     |
| book_id     | int       | not null                        | foreign key referencing book(id)                                                      |
| date_started | date | not null | the date the user started reading the book |
| date_finished | date | | the date the user finished reading the book |
| status_id | int | not null | foreign key referencing status(id)                                      |

## Table: Stars

The `stars` table contains the list of star ratings the user can assign to a book in the `book` table when reviewing a book.

### Columns

| Column Name | Data Type   | Constraints                     | Description                            |
|:------------|:------------|:--------------------------------|:---------------------------------------|
| id          | serial      | primary key                     | unique identifier for each star record |
| star_rating | varchar(30) | not null                        | star rating |

## Table: Review Details

The `review_details` table contains the information from the user when reviewing a book in the `book` table.

### Columns

| Column Name | Data Type | Constraints                     | Description                              |
|:------------|:----------|:--------------------------------|:-----------------------------------------|
| id          | serial    | primary key                     | unique identifier for each review record |
| book_id     | int       | not null                        | foreign key referencing book(id)         |
| stars_id    | int       | not null | foreign key referencing stars(id)        |
| review | varchar(1000) | | optional field for the user to leave a written review about the book |

</details>