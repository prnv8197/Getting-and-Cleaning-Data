#Reading from the web'
con<-url("https://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en")
htmlCode<-readLines(url)
htmlparse<-htmlTreeParse(htmlCode)
close(con)
htmlparse[Title]