---
title: "QMSS G5072 Homework 10"
author: Stephanie Langeland 
date: 2017-11-22
always_allow_html: yes
output: 
  html_document:
    keep_md: true
---

Practicing SQL Queries
============================

For this homework, I have prepared a MySQL database hosted on Amazon Web 
Services. Use the code below to connect to the database.


```r
library(DBI)
```

Connection code hidden for security purposes.


```
## <MySQLConnection:0,0>
```

The data comes from a project on "Scottish Witchcraft" and contains all people 
known to have been accused of witchcraft in early modern Scotland. There is 
information on where and when they were accused, how they were tried, what their 
fate was etc.

>Julian Goodare, Lauren Martin, Joyce Miller and Louise Yeoman, ‘The Survey of Scottish Witchcraft’, http://www.shca.ed.ac.uk/Research/witches/) 

#### 1. Getting to know the data

a) Show a list of the tables included in the database. 


```r
table_list <- dbListTables(witch_con)

table_list
```

```
##  [1] "accused"             "accused_family"      "appeal"             
##  [4] "calendarcustom"      "case_person"         "commission"         
##  [7] "complaint"           "confession"          "counterstrategy"    
## [10] "demonicpact"         "denunciation"        "devilappearance"    
## [13] "elf_fairyelements"   "imprisonment"        "linkedtrial"        
## [16] "malice"              "mentionedaswitch"    "movestohla"         
## [19] "musicalinstrument"   "ordeal"              "othercharges"       
## [22] "othernamedwitch"     "person"              "prevcommission"     
## [25] "propertydamage"      "ref_parish"          "reference"          
## [28] "religiousmotif"      "ritualobject"        "shapechanging"      
## [31] "source"              "torture"             "trial"              
## [34] "trial_person"        "weathermodification" "whitemagic"         
## [37] "witchesmeetingplace"
```

b) Display the column names for the table `accused`.  


```r
accused_table <- DBI::dbReadTable(witch_con, 
                                  "accused")

colnames(accused_table)
```

```
##  [1] "accusedref"       "accusedsystemid"  "accusedid"       
##  [4] "firstname"        "lastname"         "m_firstname"     
##  [7] "m_surname"        "alias"            "patronymic"      
## [10] "destitle"         "sex"              "age"             
## [13] "age_estcareer"    "age_estchild"     "res_settlement"  
## [16] "res_parish"       "res_presbytery"   "res_county"      
## [19] "res_burgh"        "res_ngr_letters"  "res_ngr_easting" 
## [22] "res_ngr_northing" "ethnic_origin"    "maritalstatus"   
## [25] "socioecstatus"    "occupation"       "notes"           
## [28] "createdby"        "createdate"       "lastupdatedby"   
## [31] "lastupdatedon"
```

c) How many people are included in the accused table?  


```r
dim(accused_table)
```

```
## [1] 3219   31
```

There are 3,219 people/observations.

d) Display the columns `firstname`, `sex`, and `age` for 5 cases in the `accused` table.  


```r
accused_table[1:5, c(
  "firstname",
  "sex",
  "age"
)]
```

```
##   firstname    sex age
## 1    Mareon Female   0
## 2      Thom   Male   0
## 3 Christian Female   0
## 4     Janet Female   0
## 5     Agnes Female   0
```

c) Looks like the `age` is missing for some observations. Count the number of 
nonmissing values for age in the data.  


```r
summary(is.na(accused_table$age))
```

```
##    Mode   FALSE 
## logical    3219
```

```r
summary(accused_table$age == 0)
```

```
##    Mode   FALSE    TRUE 
## logical     166    3053
```

Although there are no blank values for `age`, there are 3,053 cases of ages that
are equal to zero and 166 non-zero ages. 

d) Show a list of unique `occupation`s.


```r
unique(accused_table$occupation)
```

```
##  [1] ""               "Servant"        "Vagabond"       "Weaver"        
##  [5] "Midwife"        "Tailor"         "Messenger"      "Brewster"      
##  [9] "Smith"          "Minister"       "Farmer"         "Mealmaker"     
## [13] "Tasker"         "Maltman"        "Miller"         "Healer"        
## [17] "Loadman"        "Blacksmith"     "Shop-keeper"    "Stabler"       
## [21] "Nurse"          "Collier"        "School teacher" "Slaterer"      
## [25] "Workman"        "School Master"  "Merchant"       "Fisherman"     
## [29] "Henwife"        "Cook"           "Sailor"         "Creelman"
```

#### 2. Seeing the Devil

Let's look at some appearances of the devil in the `devilappearance` table.

a) List the unique `devil_type`s in the data.  


```r
devil_table <- DBI::dbReadTable(witch_con, 
                                  "devilappearance")

unique(devil_table$devil_type)
```

```
##  [1] "Male"                   "Female Fairy"          
##  [3] "Male Fairy"             "Animal Devil"          
##  [5] "Spirit"                 "Ghost"                 
##  [7] "Other Demon"            "Female"                
##  [9] ""                       "Fairy"                 
## [11] "Unspecified Devil"      "Insect Devil"          
## [13] "Baby"                   "Human Devil"           
## [15] "Child Devil"            "Inanimate Object Devil"
```

b) There is also a little description of the type of the devil sighting in the 
`devil_text` column. How many of the sightings mention the word "black" in the 
description?


```r
library(stringr)

devil_table$black <- str_extract_all(devil_table$devil_text,
                                     "black")
  
summary(devil_table$black != "character(0)")
```

```
##    Mode   FALSE    TRUE 
## logical     283     113
```

There are 113 observations that mention "black".

c) What proportion of the devils (in `devil_type`) are male? 


```r
unique(devil_table$devil_type)
```

```
##  [1] "Male"                   "Female Fairy"          
##  [3] "Male Fairy"             "Animal Devil"          
##  [5] "Spirit"                 "Ghost"                 
##  [7] "Other Demon"            "Female"                
##  [9] ""                       "Fairy"                 
## [11] "Unspecified Devil"      "Insect Devil"          
## [13] "Baby"                   "Human Devil"           
## [15] "Child Devil"            "Inanimate Object Devil"
```

```r
devil_table$male <- str_extract_all(devil_table$devil_type,
                                    "Male")

summary(devil_table$male != "character(0)")
```

```
##    Mode   FALSE    TRUE 
## logical     137     259
```

```r
 259 / ncol(devil_table) 
```

```
## [1] 21.58333
```

There are 259 male devils, therefore, the proportion of the male devils is 21.58333.

#### 3. The trial

Let's take a look at the information on the `trial`.

a) What are the average and maximum numbers of male and female accusers?


```r
trial_table <- DBI::dbReadTable(witch_con,
                                "trial")

max(trial_table$female_accusers)
```

```
## [1] 27
```

```r
mean(trial_table$female_accusers)
```

```
## [1] 0.2556836
```

```r
max(trial_table$male_accusers)
```

```
## [1] 48
```

```r
mean(trial_table$male_accusers)
```

```
## [1] 0.4179383
```

The average and maximum numbers for male accusers are 0.4179383 and 48, respectively.
The average and maximum numbers for female accusers are 0.2556836 and 27, respectively. 

b) Count the number of `sentence`s by sentence type. List them in a table (in 
descending order), excluding missing values. Rename the column headings to something 
sensible.  


```r
library(QMSS)
library(dplyr)

sentence_table <- Tab(trial_table$sentence)
sentence_table <- as.data.frame(
  sort(
    sentence_table[-1 , 1],
    decreasing = T))

sentence_table$Sentence_Type <- rownames(sentence_table)
rownames(sentence_table) <- NULL
colnames(sentence_table)[1] <- "Count"

sentence_table 
```

```
##    Count      Sentence_Type
## 1    205          Execution
## 2     52           Released
## 3     27         Banishment
## 4     11  Declared Fugitive
## 5      6     Excommunicated
## 6      2    Put to the horn
## 7      1            Branded
## 8      1               Hang
## 9      1             Prison
## 10     1 Public Humiliation
```

c) Do the number of accusers matter for the `verdict`? Compare the average number 
of accusers by the type of verdict. Again make sure the table is sorted and the 
headings make sense. 


```r
verdict_table <- trial_table[ , c("female_accusers", "male_accusers", "verdict")]

verdict_table$N_Accusers <- verdict_table$male_accusers + 
  verdict_table$female_accusers

verdict_table %>%
  group_by(verdict) %>%
  summarize( Mean_Accusers = mean(N_Accusers)) %>%
  arrange(desc(Mean_Accusers))
```

```
## # A tibble: 5 x 2
##   verdict     Mean_Accusers
##   <chr>               <dbl>
## 1 Guilty              5.79 
## 2 Not Guilty          4.40 
## 3 Not Proven          1.00 
## 4 Half Guilty         0.286
## 5 ""                  0.201
```

On average, "guilty" verdicts had 5.79 accusers while "not guilty" verdicts had
4.4 accusers.  Also, on average, there was 1 accuser for "not proven" verdicts,
0.286 accusers for "half guilty" verdicts, and 0.201 accusers for missing
verdicts.  It appears that the more accusers there are, the more likely 
a "guilty" verdict will occur. 

