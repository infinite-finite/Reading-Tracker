import random

from datetime import date, timedelta

start = date(2023, 1, 1)

def generate_random_date():

    randomizer = random.randint(1, 700)
    random_number_of_days = timedelta(days=randomizer)
    random_date = start + random_number_of_days

    return random_date


def generate_reading_history():

    currently_reading = [20, 23, 30]
    read_books = [1, 2, 3, 5, 6, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 25, 28, 31, 35, 37, 38, 41, 42, 43, 44, 45, 47, 50, 51, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 64, 65, 66, 68, 69, 70, 71, 72, 73, 74, 75, 77, 78, 79, 80, 81, 82, 83, 84, 86]
    reading_history_list = currently_reading + read_books

    with open('populate-db/reading_history.csv', 'w') as f:
        f.write("book_id,date_started,date_finished,\n")
        for book in reading_history_list:
            reading_start_date = generate_random_date()
            random_read_time = random.randint(3, 24)
            if book in currently_reading:
                f.write(f"({book}, '{reading_start_date}', NULL),\n")
            else:
                read_time = timedelta(days=random_read_time)
                end_date = reading_start_date + read_time
                f.write(f"({book}, '{reading_start_date}', '{end_date}'),\n")
        f.write("(7,'2023-11-19',NULL)")


generate_reading_history()