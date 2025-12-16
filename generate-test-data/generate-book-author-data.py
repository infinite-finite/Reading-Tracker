

import random


def generate_book_author_data():

    counter = 0
    total_books = 86
    total_authors = 55
    multiple_author_chances = [1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 2, 1, 1, 2, 1, 2, 2, 1, 1, 1, 1]


    with open('files/book_author_list.csv', 'w') as f:
        f.write('book_id,author_id\n')
        while counter < 86:
            multi_author = random.choice(multiple_author_chances)
            if multi_author == 1:
                counter = counter + 1
                author = random.randint(1, 55)
                f.write(f"({counter}, {author}),\n")
            elif multi_author == 2:
                counter = counter + 1
                author1 = random.randint(1, 55)
                f.write(f"({counter}, {author1}),\n")
                author2 = random.randint(1, 55)
                f.write(f"({counter}, {author2}),\n")
            else:
                counter = counter + 1
                author1 = random.randint(1, 55)
                f.write(f"({counter}, {author1}),\n")
                author2 = random.randint(1, 55)
                f.write(f"({counter}, {author2}),\n")
                author3 = random.randint(1, 55)
                f.write(f"({counter}, {author3}),\n")


generate_book_author_data()