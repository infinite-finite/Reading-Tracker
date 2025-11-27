# generate book list

import random



def generate_book_list():

        counter = 0
        total_books = 86
        book_list = []
        with open('files/book_list.csv', 'w') as f:
            f.write("title,author_id,genre,pages,\n")
            while total_books > counter:
                counter = counter + 1
                book_title = f"Title {counter}"
                book_list.append(book_title)
            for i in book_list:
                author = random.randint(1, 55)
                genre = random.randint(1, 22)
                pages = random.randint(81, 1034)
                status_choices = [1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 2, 4, 4, 4, 2, 2, 2, 4, 4, 2, 5, 2, 4, 4, 4]
                status = random.choice(status_choices)
                f.write(f"('{i}', {author}, {genre}, {pages}, {status}),\n")



generate_book_list()