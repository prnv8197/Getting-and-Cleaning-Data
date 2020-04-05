#Creating a connection with mySql
readdb<-dbConnect(MySQL(),user="pranav2", host="localhost", port=3306, password='root', db='mydb')
#List all the databases present 
result<-dbGetQuery(readdb,"show databases");
#Listing all tables present in db mydb
alltables<-dbListTables(readdb)
#insert query for db connection readdb
dbGetQuery(readdb,"insert into first values('rstudio',9999)")
res1<-dbGetQuery(readdb," select * from first order by id limit 1")
#res1 is of type data frame
dim(res1)
#Clear query in connection
dbClearResult(res1)
#Close connection
dbDisconnect(readdb)


