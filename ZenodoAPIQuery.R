
## OAI Zenodo query
#install.packages("oai")
library(knitr)
library(tidyverse)
library(httr)
library(oai)
library(xml2)
opts_chunk$set(echo=T)

# Query Leibniz IOER Community data
record_list<- list_records("https://zenodo.org/oai2d",metadataPrefix="oai_datacite",set="user-ioer_dresden")

kable(record_list %>% select(identifier.3,title))
df<-record_list %>% select(identifier.3,title)

