#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Load a dataset of Trump tweets from 
setwd("/users/nick/github/computational_methods_boot_camp/source/data")

# These are saved in a format called JSON, 
# so we need to import than with a json package 
# and then convert them to a dataframe:

library(rjson)
json_data <- fromJSON(file="trump_tweets.json")
tweet_data <- do.call("rbind", lapply(json_data, as.data.frame))

# Columns for subsetting
names(tweet_data)


# In[38]:


# Pull out first rows of actual tweets
head(tweet_data[, c("date", "text")])


# In[39]:


# Now, just a sample of tweets
sample(tweet_data$text, 10)

