library(XML)

fileURL<-"https://www.w3schools.com/xml/simple.xml"
down<-download.file(fileURL,destfile = "simple.xml")
doc <- xmlTreeParse("simple.xml",useInternal=TRUE)
rootNode<-xmlRoot(doc)
#finding the subcomponent
subcomp<-rootNode[[3]][[1]]
xmlSApply(rootNode,xmlValue) #Gets all the text present in the document

## [1] "XMLInternalDocument" "XMLAbstractDocument"