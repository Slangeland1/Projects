# QMSS G5072 Homework 9
Stephanie Langeland  
2017-11-14  


Web Scraping with Selectors
============================

In the exercise, we will extract one particular part of a wikipedia page - an 
info box - to get some structured information about current members of the U.S. 
senate.

Wikipedia does have an API. For the purpose of this exercise, we will pretend 
there is no API and simply read-in the HTML. 

Our example will rely on Mitch McConnell's Wikipedia page: https://en.wikipedia.org/wiki/Mitch_McConnell

#### 1. Get HTML

Get the content of the page into R.


```r
library(httr)

wiki_url <- "https://en.wikipedia.org/wiki/Mitch_McConnell"

wiki_import <- GET(wiki_url)
```

```
## Warning in strptime(x, fmt, tz = "GMT"): unknown timezone 'default/America/
## New_York'
```

```r
wiki_import
```

```
## Response [https://en.wikipedia.org/wiki/Mitch_McConnell]
##   Date: 2017-11-12 17:42
##   Status: 200
##   Content-Type: text/html; charset=UTF-8
##   Size: 408 kB
## <!DOCTYPE html>
## <html class="client-nojs" lang="en" dir="ltr">
## <head>
## <meta charset="UTF-8"/>
## <title>Mitch McConnell - Wikipedia</title>
## <script>document.documentElement.className = document.documentElement.cl...
## <script>(window.RLQ=window.RLQ||[]).push(function(){mw.config.set({"wgCa...
## mw.user.tokens.set({"editToken":"+\\","patrolToken":"+\\","watchToken":"...
## 
## });mw.loader.load(["ext.cite.a11y","site","mediawiki.page.startup","medi...
## ...
```

```r
wiki_content <- content(wiki_import)
wiki_content
```

```
## {xml_document}
## <html class="client-nojs" lang="en" dir="ltr">
## [1] <head>\n<meta http-equiv="Content-Type" content="text/html; charset= ...
## [2] <body class="mediawiki ltr sitedir-ltr mw-hide-empty-elt ns-0 ns-sub ...
```


#### 2. Get the info box

On the right side of the page is a box of structured content, called an 
info box. Wikipedia has [many types of such info boxes](https://en.wikipedia.org/wiki/Wikipedia:List_of_infoboxes#Education) 
to provide content comparably for a group of articles of the same class (e.g. 
the Members of the U.S. senate, Fortune 500 companies, Crime Syndicates etc.)

a) Find the CSS class of the infobox.    

  * Using the Agenty tool, I found that the CSS class is `.vcard`.


b) Extract the part of the HTML document that contains the infobox using 
the CSS information.  


```r
library(rvest)
```

```
## Loading required package: xml2
```

```r
wiki_page <- read_html(
  wiki_url
)

wiki_page
```

```
## {xml_document}
## <html class="client-nojs" lang="en" dir="ltr">
## [1] <head>\n<meta http-equiv="Content-Type" content="text/html; charset= ...
## [2] <body class="mediawiki ltr sitedir-ltr mw-hide-empty-elt ns-0 ns-sub ...
```

```r
vcard_nodes <- html_nodes(
  wiki_page,
  ".vcard"
)

vcard_nodes
```

```
## {xml_nodeset (1)}
## [1] <table class="infobox vcard" style="width:22em">\n<tr>\n<th colspan= ...
```

```r
vcard_text <- html_text(vcard_nodes)
vcard_text
```

```
## [1] "Mitch McConnell\n\n\nSenate Majority Leader\n\nIncumbent\n\nAssumed office\nJanuary 3, 2015\nDeputy\nJohn Cornyn\nPreceded by\nHarry Reid\nUnited States Senator\nfrom Kentucky\n\nIncumbent\n\nAssumed office\nJanuary 3, 1985\nServing with Rand Paul\nPreceded by\nWalter Huddleston\nSenate Minority Leader\nIn office\nJanuary 3, 2007 – January 3, 2015\nDeputy\nTrent LottJon KylJohn Cornyn\nPreceded by\nHarry Reid\nSucceeded by\nHarry Reid\nSenate Majority Whip\nIn office\nJanuary 3, 2003 – January 3, 2007\nLeader\nBill Frist\nPreceded by\nHarry Reid\nSucceeded by\nDick Durbin\nChair of the Senate Rules Committee\nIn office\nJanuary 20, 2001 – June 6, 2001\nPreceded by\nChris Dodd\nSucceeded by\nChris Dodd\nIn office\nJanuary 3, 1999 – January 3, 2001\nPreceded by\nJohn Warner\nSucceeded by\nChris Dodd\nJudge-Executive of Jefferson County\nIn office\n1977–1984\nPreceded by\nTodd Hollenbach III\nSucceeded by\nBremer Ehrler\nUnited States Assistant Attorney General for the Office of Legislative Affairs\nIn office\n1975Acting\nPresident\nGerald Ford\nPreceded by\nVincent Rakestraw\nSucceeded by\nMichael Uhlmann\n\nPersonal details\nBorn\nAddison Mitchell McConnell Jr.(1942-02-20) February 20, 1942 (age 75)Sheffield, Alabama, U.S.\nPolitical party\nRepublican\nSpouse(s)\nSherrill Redmon (m. 1968;  div. 1980)Elaine Chao (m. 1993)\nChildren\n3\nEducation\nUniversity of Louisville (BA)University of Kentucky (JD)\nNet worth\n$22.5 million (estimate)[1]\nSignature\n\nWebsite\nSenate website\nMilitary service\nAllegiance\n United States\nService/branch\n United States Army\nYears of service\n1967\nUnit\nUnited States Army Reserve\n"
```

#### 3. Make a data frame

a) Parse the infobox table HTML you obtained above into a data frame.  


```r
infobox_table <- html_node(x = wiki_page, 
                           xpath = '//*[@id="mw-content-text"]/div/table[1]')

infobox_table
```

```
## {xml_node}
## <table class="infobox vcard" style="width:22em">
##  [1] <tr>\n<th colspan="2" style="text-align:center;font-size:125%;font- ...
##  [2] <tr>\n<td colspan="2" style="text-align:center"><a href="/wiki/File ...
##  [3] <tr>\n<td colspan="2" style="text-align:center"></td>\n</tr>\n
##  [4] <tr>\n<th colspan="2" style="text-align:center;background:lavender" ...
##  [5] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
##  [6] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
##  [7] <tr>\n<th scope="row" style="text-align:left">Deputy</th>\n<td><a h ...
##  [8] <tr>\n<th scope="row" style="text-align:left"><span class="nowrap"> ...
##  [9] <tr>\n<th colspan="2" style="text-align:center;background:lavender" ...
## [10] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
## [11] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
## [12] <tr>\n<th scope="row" style="text-align:left"><span class="nowrap"> ...
## [13] <tr>\n<th colspan="2" style="text-align:center;background:lavender" ...
## [14] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
## [15] <tr>\n<th scope="row" style="text-align:left">Deputy</th>\n<td>\n<a ...
## [16] <tr>\n<th scope="row" style="text-align:left"><span class="nowrap"> ...
## [17] <tr>\n<th scope="row" style="text-align:left"><span class="nowrap"> ...
## [18] <tr>\n<th colspan="2" style="text-align:center;background:lavender" ...
## [19] <tr>\n<td colspan="2" style="text-align:center;border-bottom:none"> ...
## [20] <tr>\n<th scope="row" style="text-align:left">Leader</th>\n<td><a h ...
## ...
```

```r
infobox_table_df <- html_table(infobox_table)
#View(infobox_table_df)
```

b) Name the columns of the table you obtain _`key`_ and _`value`_. So, in the 
example for Mitch McConnell, "Deputy" would be the _key_, and the content 
information (i.e. the _value_)  is "John Cornyn".  


```r
colnames(infobox_table_df)[1] <- "key"
colnames(infobox_table_df)[2] <- "value"
```

c) Filter the data frame (and rename variables if necessary) to the "Full 
name", "Political Party", and "Children". Use this selection of variables for 
all subsequent questions.


```r
infobox_table_df[1, 1] <- "Full name"
infobox_table_df[1, 2] <- "Mitch McConnell"

library(dplyr)
```

```
## Warning: package 'dplyr' was built under R version 3.4.2
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
sub_infobox_table_df <- infobox_table_df %>%
  filter(key == "Full name" |
           key == "Political party" |
           key == "Children") 

sub_infobox_table_df
```

```
##               key           value
## 1       Full name Mitch McConnell
## 2 Political party      Republican
## 3        Children               3
```

You should now have the following data frame to work with:

#### 4. Make a function

a) Use the code above to make a function called `get_wiki_info` that uses a single 
input `url` (a Wikipedia URL) and outputs the data frame of the format above. There 
is no need to account for exceptions (e.g. no info box on the page; page does not 
exist etc.) - we will only use members of the U.S. Senate for this exercise.


```r
get_wiki_info <- function(x) {
  
  base_url <- "https://en.wikipedia.org/wiki/"
  
  senate_member <- x
  
  full_url <- paste0(
    base_url,
    senate_member
    )

  wiki_page1 <- read_html(
    full_url
    )
  
  vcard_nodes1 <- html_nodes(
    wiki_page1,
    ".vcard"
    )

  vcard_text1 <- html_text(vcard_nodes1)
  infobox_table1 <- html_node(x = wiki_page1, 
                              xpath = '//*[@id="mw-content-text"]/div/table[1]')
  
  infobox_table_df1 <- html_table(infobox_table1)
  
  infobox_table_df1[1, 1] <- "Full name"
  
  infobox_table_df1[1, 2] <- senate_member
  
  colnames(infobox_table_df1)[1] <- "key"
  
  colnames(infobox_table_df1)[2] <- "value"

  sub_infobox_table_df1 <- infobox_table_df1 %>%
    filter(key == "Full name" |
           key == "Political party" |
           key == "Children")
  
    
  if (nrow(sub_infobox_table_df1) == 2) {
    sub_infobox_table_df1[3, 1] <- "Children"
    sub_infobox_table_df1[3, 2] <- NA
  } else {
    sub_infobox_table_df1
  }

  sub_infobox_table_df1
}
```

b) Show how your function works on the following two URLs:  
  - https://en.wikipedia.org/wiki/Jeff_Flake  
  - https://en.wikipedia.org/wiki/Susan_Collins  
Depending on your previous function, you may receive an error message because 
Susan Collins has no entry for `Children`. Fix your function so that `NA` is 
recorded in such instances.


```r
get_wiki_info("Jeff_Flake")
```

```
##               key      value
## 1       Full name Jeff_Flake
## 2 Political party Republican
## 3        Children          5
```

```r
get_wiki_info("Susan_Collins")
```

```
##               key         value
## 1       Full name Susan_Collins
## 2 Political party    Republican
## 3        Children          <NA>
```

####  5. Get all senators' pages
**_(Optional, for bonus points)_**

a) On this page (https://en.wikipedia.org/wiki/Current_members_of_the_United_States_Senate) 
you find a list of all current senators of the U.S. congress.  
Import the site and obtain a vector with the URLs for the Wikipedia sites of 
all 100 members of congress (hint: the function `xml_attr` is one option). 
Note, this should only include the URLs and remove all other content.  

b) Create a loop that uses your `get_wiki_info` function to import the information on political party and number of children for all members of the senate.  

c) Clean up your data to provide some summary statistics. How many children does the average senator have? What about by party affiliation? 

