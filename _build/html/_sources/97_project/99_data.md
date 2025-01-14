# Where To Find Public Data

Below are some resources on places to find public data that may be useful for your projects. 

This list is NOT exhaustive; it is rather meant to help generate ideas and help give you a sense of what exists. If you find that you are interested in a question that would require data that *isn't* on this list, ask me and I may be able to help find it!

## Good Starting Points

- [IPUMS](https://www.ipums.org/): Just look at that list of data sources! IPUMS is amazing, and includes (just to list a few):
  - [US American Community Survey](https://usa.ipums.org/usa/acs.shtml): the US runs regular surveys (called the American Community Surveys). Results of these are available for many years for small geographic units over a few decades. They include things like income, race and ethnicity, and both geographic identifiers (in tabular formats), and also GIS shapefiles (for GIS manipulations). Can be very useful for things like estimating consumer demographics in different areas. 
  - [International Census Data](https://international.ipums.org/international/): Similarly, census data from over 102 countries is also easily accessible. This data often isn't quite as rich as the US ACS data (censuses have to be shorter than surveys), but still often has questions on health, income, race and ethnicity, etc. Also includes a lot of [GIS data](https://international.ipums.org/international/geography_variables.shtml).
  - [Health Surveys](https://healthsurveys.ipums.org/) 
  - [NHGIS](https://www.nhgis.org/): Probably the MOST useful resources for US census and demographic data that comes with GIS information.
- [Duke SEED Data](https://sdoh.duhs.duke.edu/): Data on education access and quality, health care access and quality, neighborhood and built environment, social and community context, and economic stability all linked at the local (census block) level.
- [Wharton Research Data Services](https://library.fuqua.duke.edu/databases/wrdsinfo.htm): A huge database of business data. This data is NOT public (and is *very* expensive), but is accessible to Duke students through a Duke subscription. Note that if you use this data, you'll be able to share code and reports, but not your full project publicly, since the data can't be public. The data, as far as I can tell, is primarily a compilation of public company financial data (board memberships, M&As, company financials, etc.). Much of what it has to offer is á la carte, and Duke only has some subscriptions, so if you need something you'll have to explore to see if it's covered.
- [The Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/catalog) has some great resources for environmental questions, like [this database](https://lila.science/) of labelled images of wildlife!
- [The AWS Open Data Registry](https://registry.opendata.aws/), while poorly organized, has great data on [genomics and health data from the NIH](https://registry.opendata.aws/collab/nih/), all the environmental data noted above, [space telescope data](https://registry.opendata.aws/collab/stsci/),
- [Duke Medical Data Repository](https://datacatalog.mclibrary.duke.edu/),
- [The data.gov US Government data repository, full of just insane stuff](https://catalog.data.gov/dataset)
- [US Mortgage Loan-level data](https://www.freddiemac.com/research/datasets/sf-loanlevel-dataset)
- [Google Dataset Search](https://datasetsearch.research.google.com/)

## Other Interesting Data Sources

It's hard to overstate how much data is freely available online. 

- There are datasets on armed conflicts and terrorism ([here](https://www.prio.org/Data/Armed-Conflict/UCDP-PRIO/) and [here](https://acleddata.com/#/dashboard)), 
- [air pollution information for any location in the world](https://earthdata.nasa.gov/earth-observation-data/near-real-time/hazards-and-disasters/air-quality), 
- flooding and natural disaster data from satellites (e.g. [here](https://earthdata.nasa.gov/earth-observation-data/near-real-time/hazards-and-disasters/floods)), 
- measures of democratic institutions and freedom ([here](https://www.systemicpeace.org/polityproject.html)), 
- data on elections, 
- [AirBnB Listings](http://insideairbnb.com/get-the-data.html),
- [trade](https://www.imf.org/en/Data), 
- [shipping traffic](https://www.data.gov/maritime/), 

and oh so much more. 

## Data with a Spatial/GIS Component

Government census data is often the underpinning of spatial analyses, because it's available almost everywhere, is free, and has *tons* of information about... well, everyone!

To be clear, much of this data *includes* spatial information, but you do not necessarily have to have any special geospatial skills to work with this data. 

Many datasets — that do include sophisticated geospatial data — also come with normal tabular datasets. This will usually include information like the state or county name of each row, which may be all you want or need. 

The best resource for spatial census data is [NHGIS (for US data)](https://www.nhgis.org/) and [IHGIS (for international data)](https://ihgis.ipums.org/). These projects are run by the same folks -- [IPUMS](https://www.ipums.org/) who we've gone to in the past for individual level census data in the US or internationally. They're *amazing*. You go to their site, tell them the geographic level at which you want data, and they will provide you will a list of available data. A few notes about using these services:

- The larger the geographic area of aggregation, the more data they will be able to provide -- privacy concerns mean that when geographic areas get really small, some data may be withheld to protect respondents.
- They provide data in three files -- a shapefile with a column called `GISJOIN`, a tabular dataset with all your data and a `GISJOIN` column, and a README that tells you what all the poorly named variables in the tabular data mean. So your first step with this data will almost always be to merge the tabular data with the shapefile using `GISJOIN`, then renaming things based on the data in the README.

### Public Satellite Data

Another great spatial data resource is satellite data! We aren't covering raster data in detail in this class, but that's not because it isn't useful -- NASA has satellite data for the whole world with information on things like elevation, flood risk, air pollution, what kinds of plants are growing in different places (by looking at what wavelengths plants reflect, satellites can identify crops!), satellite imagery (used for things like studying energy infrastructure, or for "financial intelligence" firms doing things like studying factory activity to predict company earnings ahead of official announcements), and more. It's... obscene how much data they have.

While most of this comes from NASA or NOAA, in the same way most people get their census from IPUMS (not govt census bureaus), most people I know actually get their satellite data from either the [Microsoft Planetary Computer](https://planetarycomputer.microsoft.com/catalog), or [AWS Open Data Registry](https://registry.opendata.aws/)

## Other Lists of Data That Are Great

- [Free data for Data Science Projects](https://www.springboard.com/blog/data-science/free-public-data-sets-data-science-project/)
- [Awesome Public Data](https://github.com/awesomedata/awesome-public-datasets)