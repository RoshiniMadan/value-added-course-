#install libraries
 library(robotstxt)
 library(rvest)
 
 #check the website that allow to scrap
 
 path=paths_allowed("https://www.kaggle.com/datasets/justin2028/total-emissions-per-country-2000-2020")
 
 
 #assign the website to the variable 
 
 url<-"https://www.kaggle.com/datasets/justin2028/total-emissions-per-country-2000-2020"
 
 
 
 #read the html part of the url
 my_html<-read_html(url)
 
 my_tables<-html_nodes(my_html,"table")
 
 country_table<-html_table(my_tables)[[]]
 
 
 View(country_table)
 
 #segregate the html nodes
 
country <- country_table[,2:3]
 
 #view table
 View(country)
 
 
 #check the datatypes
 str(country)
 
 
 #export the file to the csv file 
 write.csv(country,"test.csv")
 
 