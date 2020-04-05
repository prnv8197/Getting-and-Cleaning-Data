#install.packages("jsonlite")
library(jsonlite)
#install.packages("httpuv")
library(httpuv)
#install.packages("httr")
library(httr)

# Can be github, linkedin etc depending on application
oauth_endpoints("github")

# Input the OAuth details 
myapp <- oauth_app(appname = "R_API",
                   key = "f4d02b5b926fe6621dda",
                   secret = "ec1df5f09c0983b795c679133993cc5284a87f92")

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/prnv8197/repos", gtoken)

# Take action on http error
stop_for_status(req)

# Extract content from a request
json1 = content(req)

# Convert to a data.frame
gitDF = jsonlite::fromJSON(jsonlite::toJSON(json1))

# Subset data.frame, gets the full name of the given
gitDF[gitDF$full_name == "prnv8197/datasharing", "full_name"] 