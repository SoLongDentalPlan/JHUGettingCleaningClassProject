README for my class project for JHU's "Getting and cleaning data" course
====

3/13/2016

File descriptions
====
"run_analysis.R": An R script that fetches data from the UCI Machine Learning Repository's "Human Activity Recognition Using Smartphones Data Set", reshapes and summarizes that data, and writes the results into a text file
"Data_set_summarized.txt": The output file written by "run_analysis.R"
"CodeBook.md": A code book containing information about the data, and the transformations that were applied to it, and descriptions of all the columns in "Data_set_summarized.txt"

How to use
====
Just execute the entire script "run_analysis.R". It will download (into your working directory) the data from the WWW, unzip it, load it into R, summarize it, and write a file "Data_set_summarized.txt" (also in your working directory). Running the script may take several minutes, mainly due to slow performance of "read.fwf". Various techniques (easily found by Googling) could potentially be applied to optimize the performance of the read operation.

Dependencies
====
Requires the "data.table" package. "run_analysis.R" automatically downloads and uses this package