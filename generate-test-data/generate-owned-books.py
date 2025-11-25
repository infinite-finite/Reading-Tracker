

import random

def generate_owned_books():

    total_owned_books = 75
    counter = 0
    owned_book_list = []

    with open('./files/owned_book_list.csv', 'w') as f:
        f.write("book_id,book_format_id,\n")
        while counter < total_owned_books:
            book = random.randint(1, 86)
            if book not in owned_book_list:
                owned_book_list.append(book)
                counter = counter + 1
        for i in owned_book_list:
            book_format = random.randint(1, 4)
            f.write(f"({i}, {book_format}),\n")


generate_owned_books()