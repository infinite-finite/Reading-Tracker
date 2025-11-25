import random

from datetime import date, timedelta

start = date(2023, 1, 1)
end = date(2025, 12, 31)

def generate_random_date():

    randomizer = random.randint(1, 700)
    random_number_of_days = timedelta(days=randomizer)
    random_date = start + random_number_of_days

    return random_date


def generate_reading_history():

    total_books = 75
    counter = 0
    reading_history_list = []
    currently_reading = [20, 23, 30]

    with open('./files/reading_history.csv', 'w') as f:
        f.write("book_id,date_started,date_finished,did_not_finish,\n")
        while counter < total_books:
            book = random.randint(1, 86)
            if book not in reading_history_list:
                reading_history_list.append(book)
                counter = counter + 1
        for i in reading_history_list:
            reading_start_date = generate_random_date()
            random_read_time = random.randint(3, 24)
            if book in currently_reading:
                f.write(f"({i}, '{reading_start_date}', NULL, NULL),\n")
            else:
                read_time = timedelta(days=random_read_time)
                end_date = reading_start_date + read_time
                f.write(f"({i}, '{reading_start_date}', '{end_date}', NULL),\n")
        f.write("(7,'2023-11-19',NULL,TRUE)")


generate_reading_history()