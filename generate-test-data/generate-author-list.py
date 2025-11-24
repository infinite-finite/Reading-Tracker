# generate author list

author_list = []

def generate_author_list():

    counter = 0
    total_authors = 55
    author_combined_list = []
    while counter < total_authors:
        counter = counter + 1
        author_combined_name = f"(\"fname{counter}\"), (\"lname{counter}\"),"
        author_combined_list.append(author_combined_name)
        author_list.append(author_combined_name)
    with open('./files/author_list.csv', 'w') as f:
        for i in author_combined_list:
            f.write(f"{i}\n")



generate_author_list()