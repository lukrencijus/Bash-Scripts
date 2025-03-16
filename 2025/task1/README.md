 1. Write a script e1.run that, given a comma-separated file (CSV), evaluates each column, guesses the probable type (a string of a certain length, numeric, logical), outputs header and  computes statistics of such file as follows:
- Number of columns separated by space and the number of records in the table separated by the new line. If the quotes are used to brace a few keywords in data, then you should handle it in as one column.
- Handle missing values and possible comma mistakes,  f.x., a mistake could be a different number of columns in several lines. Handle gracefully.
- computes and outputs unique keywords or words in the column and counts the frequency of them,
- You are welcome to have additional parameters to exclude and output debug information on which line is wrong.
 2. Given any text file (English or Lithuania) as input, write a script e2.run that splits text by sentences first, then calculates statistics for each unique word's average distances to any other word within the sentence (Sentences usually are finished with the. ? ! symbol). The output of your program shall produce all unique sentences that are in the text in the order of appearance and print the count of Nouns that appear in the sentence. You can use database of nouns a file that is also part of your program.
- Be aware of abbreviations in the text, such as F. Name. Make sure your calculations are case-insensitive and handle local LT symbols.
3. Given any JSON file of arbitrary length and tree structure depth, write a script e3.run that given CLI parameters keys and/or data prints key and/or data from .json, respectively.
- If the key is provided, it shall respect the hierarchy of the JSON file. Use "." dot to separate hierarchical attributes. F.x., person.name would print out all JSON file entries in the hierarchy person and subhierarchy attribute name.
4. Write a script e4.run that works similarly to the command "tree" implementing necessary parameters like:
 -a            All files are listed. if not specified, hidden files and catalogues are not listed
  -d            List directories only.
  -l            Follow symbolic links like directories.
  -f            Print the full path prefix for each file.
  -L level      Descend only level directories deep.
  -R            Rerun the tree when the max dir level is reached.
  -P pattern    List only those files that match the pattern given.
  -I pattern    Do not list files that match the given pattern.
  -h             help
 <directory>  (mandatory) Catalog path from where to start to.
Add more parameters as you wish.
5. Write e5.run Given from CLI numeric N and /var/log file (logs are updated, and your program shall respect that ), calculates the latest N statistics by splitting to columns, and each column must show the frequency of the unique values within the sliding window.