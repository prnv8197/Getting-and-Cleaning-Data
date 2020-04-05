library(XML)

fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
down<-download.file(fileURL,destfile = "Baltimore_xml.xml")
doc <- xmlTreeParse("Baltimore_xml.xml",useInternal=TRUE)
rootNode<-xmlRoot(doc)
#finding the subcomponent
count=0
for(i in c(1:1327)){
        newroot<-rootNode[[1]][[i]]
        x<-xmlSApply(newroot,xmlValue)
        if(x[[2]][[1]]=="21231"){
                count<-count+1
        }
        
}
print(count)
xpathSApply(doc,"\\title",xmlValue)


