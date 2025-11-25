# generate book list

import random



def generate_book_list():

        counter = 0
        total_books = 86
        book_list = []
        with open('./files/book_list.csv', 'w') as f:
            f.write("title,author_id,genre,pages,\n")
            while total_books > counter:
                counter = counter + 1
                book_title = f"Title {counter}"
                book_list.append(book_title)
            for i in book_list:
                author = random.randint(1, 55)
                genre = random.randint(1, 22)
                pages = random.randint(81, 1034)
                f.write(f"('{i}', {author}, {genre}, {pages}),\n")



generate_book_list()