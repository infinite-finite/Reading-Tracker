

import random
import lipsum

read_books = [1, 2, 3, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 25, 28, 31, 35, 37, 38, 41, 42, 43, 44, 45, 47, 50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 64, 65, 66, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 81, 82, 83, 84, 86]

def generate_review_details():

    with open ('./files/review_details.csv', 'w') as f:
        f.write("book_id, stars_id, review,\n")
        for book in read_books:
            star_rating = random.randint(1, 5)
            include_review = random.randint(1, 2)
            review = lipsum.generate_sentences(4)
            if include_review == 1:
                f.write(f"({book}, {star_rating}, \"{review}\"),\n")
            else:
                f.write(f"({book}, {star_rating}, NULL),\n")

generate_review_details()