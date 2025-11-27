## Generating Test Data

This subdirectory contains the python scripts to generate data used for some of the INSERT statements for populating the database. The output generated from each of the scripts can be found in the files folder after the script is run. 

When interacting with the Python scripts, please note the following:

* most of these scripts generate randomized test data each time the script is run 
* the .csv files that generate are formatted to easily copy and paste into the `VALUES` clause in the corresponding `INSERT` SQL statements

### Test Data Generated Using a Script

* author list
* book list
* owned book list
* reading history
* review details