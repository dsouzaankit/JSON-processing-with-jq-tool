# JSON-processing-with-jq-tool

Process JSON/JSON Lines using jq programming language.

data.json contains a few hundred lines of data in json format. 
Each line provides information about a different place of interest. 
The data includes a variety of information about each place including a universally unique identifier (“uuid”), the name, address and location information, telephone number, website, and so on.

Jq scripts to solve below 7 queries are attached.

1.	Return every unique locality (cf. city) along with how often it occurs
2.	Return all addresses that start with a number (return just the address)
3.	Return all rows with addresses that don't contain a number (return the entire row)
4.	Return the number of records that are museums
5.	Return a new object containing uuid, name, website, and email address for all rows that have values for all four of these attributes; exclude any rows that don’t have all four
6.	Return all rows, but transform the names to all lower case while changing nothing else
7.	Return all rows for businesses that open before 10:00 a.m. on Sundays
