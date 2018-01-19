---
title: "QMSS G5072 Homework 6"
author: Stephanie Langeland
date: 2017-10-24
always_allow_html: yes
output: 
  html_document:
    keep_md: true
---



Working with Strings
============================

### 1. Words in Ulysses

For our first exercise, we will analyze a major work by James Joyce entitled 
"Ulysses". Follow the code below to download the book from project Gutenberg 
and transform the lines of the book into a words dataframe.



#### a) Words with `z`

Select all words that contain at least one `z`.


```r
library(stringr)
z_words <- str_subset(words$word,
                          "z")

head(z_words)
```

```
## [1] "razor"      "razorblade" "razor"      "razorblade" "gazing"    
## [6] "gazed"
```

Among the z-words, tabulate how many `z`'s the words contain (i.e. how many words 
contain one `z`, two `z`'s etc.). 


```r
z_words_tbl <- str_count(z_words,
                         "z")

table(z_words_tbl)
```

```
## z_words_tbl
##   1   2   3 
## 909  81   1
```

Find the z-word(s) with z's that are as far apart as possible (i.e. we are 
interested in the distance between two z's in the word. That means the word 
could contain more than two z's.).
 

```r
zz_words <- z_words[z_words_tbl == 2]
zz_words
```

```
##  [1] "puzzled"       "nuzzling"      "zmellz"        "gizzards"     
##  [5] "puzzle"        "sizzling"      "sizzling"      "mazzoth"      
##  [9] "buzz"          "embezzling"    "muzzle"        "puzzling"     
## [13] "quizzing"      "zigzagging"    "blizzard"      "lizzie"       
## [17] "lizzie"        "puzzle"        "fizz"          "buzzed"       
## [21] "buzzed"        "buzz"          "buzz"          "puzzled"      
## [25] "mezzo"         "lizzie"        "quizzer"       "grizzled"     
## [29] "buzzing"       "whizzed"       "gizzards"      "buzz"         
## [33] "intermezzo"    "razzle"        "puzzle"        "dazzling"     
## [37] "muzzling"      "fizz"          "puzzle"        "buzz"         
## [41] "pizzle"        "drizzling"     "huzzah"        "piazzetta"    
## [45] "guzzling"      "winefizzling"  "ginsizzling"   "booseguzzling"
## [49] "muzzle"        "nozzle"        "nozzle"        "quizzing"     
## [53] "quizzing"      "mazzoth"       "buzz"          "azazel"       
## [57] "buzz"          "gizzard"       "buzz"          "buzz"         
## [61] "nozzle"        "zigzag"        "drizzle"       "fizzing"      
## [65] "buzzard"       "drizzle"       "zigzags"       "zigzag"       
## [69] "fizz"          "dizzily"       "mezzo"         "mezzo"        
## [73] "puzzled"       "nozzle"        "grizzled"      "puzzling"     
## [77] "gizzard"       "piazzi"        "mezzanine"     "gizzard"      
## [81] "embezzlement"
```

```r
zz_distance <- str_locate_all(zz_words,
                              "z")

zz_distance2 <- as.data.frame(zz_distance)

zz_distance2[ , 1:4]
```

```
##   start end start.1 end.1
## 1     3   3       3     3
## 2     4   4       4     4
```

```r
zz_words3 <- z_words[z_words_tbl == 3]
zz_words3
```

```
## [1] "százharminczbrojúgulyás"
```

```r
zz_distance3 <- str_locate_all(zz_words3,
                               "z")

zz_distance3 
```

```
## [[1]]
##      start end
## [1,]     2   2
## [2,]     4   4
## [3,]    12  12
```

```r
zz_distance4 <- as.data.frame(zz_distance3)

zz_distance2[1, 163] <- 2
zz_distance2[2, 163] <- 4

colnames(zz_distance2)[163] <- "start.81"

zz_distance2[1, 164] <- 4
zz_distance2[2, 164] <- 12
colnames(zz_distance2)[164] <- "end.81"

zz_distance2[3, ] <- zz_distance2[2, ] - zz_distance2[1, ]

zz_lengths <- sort(
  unique(
    zz_distance2[3, ]
    ),
  decreasing = TRUE
  )

#zz_lengths

col_num <- which(zz_lengths > 1)

zz_lengths[ , col_num]
```

```
##   end.81 start.2 end.2 start.13 end.13 start.61 end.61 start.66 end.66
## 3      8       5     5        3      3        3      3        3      3
##   start.67 end.67 start.55 end.55 start.81
## 3        3      3        2      2        2
```

Words with more than 1 space between the `z`'s in descending order:


```r
zz_words3 ## `end.81` is actaully `zz_words3` because it was added later on
```

```
## [1] "százharminczbrojúgulyás"
```

```r
zz_words[3] 
```

```
## [1] "zmellz"
```

```r
zz_words[14] 
```

```
## [1] "zigzagging"
```

```r
zz_words[62] 
```

```
## [1] "zigzag"
```

```r
zz_words[67] 
```

```
## [1] "zigzags"
```

```r
zz_words[68] 
```

```
## [1] "zigzag"
```

```r
zz_words[56] 
```

```
## [1] "azazel"
```

```r
zz_words3 ## `start.81` is actaully `zz_words3` because it was added later on
```

```
## [1] "százharminczbrojúgulyás"
```

All other "z" words have one space between the `z`'s.

#### b) Vowels

How many words start and end with a vowel? 


```r
vowels_st_end <- str_subset(words$word,
                   pattern = "^[aeiouAEIOU]+.[aeiouAEIOU]$")

length(vowels_st_end)
```

```
## [1] 1698
```

Are there words that start with two or more vowels? 


```r
vowels_2_st <- str_subset(words$word,
                          pattern = "^[aeiouAEiou]{2,}")

head(vowels_2_st)
```

```
## [1] "air"  "out"  "air"  "oak"  "ouns" "aunt"
```

```r
length(vowels_2_st)
```

```
## [1] 2581
```

Find and display the word(s) with the most consecutive vowels. 

  * Top 6 words with the most consecutive vowels:


```r
str_subset(words$word,
             pattern = "[aeiouAEIOU]{10,}")
```

```
## [1] "steeeeeeeeeeeephen"           "iiiiiiiiiaaaaaaach"          
## [3] "dooooooooooog"                "goooooooooood"               
## [5] "frseeeeeeeeeeeeeeeeeeeefrong" "sooooooooooong"
```

#### c) English spelling

Empirically verify the rule [“i before e except after c”](https://en.wikipedia.org/wiki/I_before_E_except_after_C).


```r
new_string <- tolower(words$word)
```

Words that comply with the rule:


```r
comply <- str_view(new_string, 
         "(cei|[^c]ie)", ## "cei" or "ie" not preceded by "c"
         match = TRUE)

comply_list <- as.list(comply)

head(comply_list)
```

```
## $x
## $x$html
## <ul>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>love<span class='match'>lie</span>st</li>
##   <li>par<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li>impa<span class='match'>tie</span>ntly</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>an<span class='match'>xie</span>ty</li>
##   <li><span class='match'>die</span></li>
##   <li>s<span class='match'>hie</span>lding</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>ndship</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>emp<span class='match'>tie</span>d</li>
##   <li><span class='match'>tie</span></li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>be<span class='match'>lie</span>ver</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>be<span class='match'>lie</span>ver</li>
##   <li>be<span class='match'>lie</span>ver</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>here<span class='match'>sie</span>s</li>
##   <li>s<span class='match'>hie</span>lds</li>
##   <li><span class='match'>die</span>u</li>
##   <li><span class='match'>tie</span></li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li><span class='match'>pie</span>r</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>st’s</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li><span class='match'>pie</span>r</li>
##   <li><span class='match'>pie</span>r</li>
##   <li><span class='match'>pie</span>r</li>
##   <li><span class='match'>pie</span>r</li>
##   <li><span class='match'>pie</span>r</li>
##   <li><span class='match'>pie</span>rce</li>
##   <li>possibili<span class='match'>tie</span>s</li>
##   <li>gene<span class='match'>vie</span>ve</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>lie</span>s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li><span class='match'>fie</span>ry</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>mie</span>n</li>
##   <li>co<span class='match'>pie</span>d</li>
##   <li>d<span class='match'>rie</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>play<span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>cow<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>tie</span>s</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>crop<span class='match'>pie</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>boo<span class='match'>kie</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>hur<span class='match'>rie</span>d</li>
##   <li>play<span class='match'>fie</span>ld</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bloo<span class='match'>die</span>d</li>
##   <li>indust<span class='match'>rie</span>s</li>
##   <li>supp<span class='match'>lie</span>s</li>
##   <li>difficul<span class='match'>tie</span>s</li>
##   <li>be<span class='match'>lie</span>d</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>play<span class='match'>fie</span>ld</li>
##   <li>hap<span class='match'>pie</span>r</li>
##   <li>co<span class='match'>pie</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>play<span class='match'>fie</span>ld</li>
##   <li>bullockbef<span class='match'>rie</span>nding</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>domi<span class='match'>nie</span></li>
##   <li>liber<span class='match'>tie</span>s</li>
##   <li>o<span class='match'>rie</span>nt</li>
##   <li>cro<span class='match'>zie</span>r</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>gondo<span class='match'>lie</span>rs</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>m<span class='match'>oie</span>ty</li>
##   <li>req<span class='match'>uie</span>scat</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>cris<span class='match'>sie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>jackp<span class='match'>rie</span>sts</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>a<span class='match'>pie</span>ce</li>
##   <li>epipha<span class='match'>nie</span>s</li>
##   <li>co<span class='match'>pie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>libra<span class='match'>rie</span>s</li>
##   <li><span class='match'>sie</span>ved</li>
##   <li>cruci<span class='match'>fie</span>d</li>
##   <li><span class='match'>vie</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>die</span>u</li>
##   <li><span class='match'>tie</span></li>
##   <li><span class='match'>fie</span>ry</li>
##   <li><span class='match'>pie</span>r</li>
##   <li>kerc<span class='match'>hie</span>fed</li>
##   <li>beau<span class='match'>tie</span>s</li>
##   <li>sé<span class='match'>tie</span>r</li>
##   <li><span class='match'>vie</span>ille</li>
##   <li>pat<span class='match'>rie</span></li>
##   <li><span class='match'>die</span>d</li>
##   <li>mes<span class='match'>sie</span>urs</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>gau<span class='match'>tie</span>r’s</li>
##   <li>ma<span class='match'>rie</span>s</li>
##   <li>cour<span class='match'>tie</span>rs</li>
##   <li>me<span class='match'>die</span>val</li>
##   <li>abstrusiosi<span class='match'>tie</span>s</li>
##   <li>skir<span class='match'>tie</span>s</li>
##   <li>sh<span class='match'>rie</span>ked</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>d<span class='match'>rie</span>r</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>she<span class='match'>fie</span>nd’s</li>
##   <li>ve<span class='match'>nie</span>t</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>flu<span class='match'>tie</span>st</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>flu<span class='match'>tie</span>r</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>ste<span class='match'>vie</span></li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>tie</span>ns</li>
##   <li><span class='match'>pie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>die</span>bus</li>
##   <li>pa<span class='match'>tie</span>ns</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>head<span class='match'>pie</span>ce</li>
##   <li>emp<span class='match'>tie</span>s</li>
##   <li>s<span class='match'>lie</span>ve</li>
##   <li>polo<span class='match'>nie</span>s</li>
##   <li>multip<span class='match'>lie</span>d</li>
##   <li>pa<span class='match'>tie</span>ntly</li>
##   <li>melon<span class='match'>fie</span>lds</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>nav<span class='match'>vie</span>s</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li><span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>master<span class='match'>pie</span>ce</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>hur<span class='match'>rie</span>d</li>
##   <li>flur<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>ba<span class='match'>bie</span>s</li>
##   <li><span class='match'>die</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>pie</span>r</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>yie</span>lding</li>
##   <li><span class='match'>yie</span>lding</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>pa<span class='match'>tie</span>ntly</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>en<span class='match'>vie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>ponc<span class='match'>hie</span>lli’s</li>
##   <li>lor<span class='match'>rie</span>s</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>re<span class='match'>lie</span>ved</li>
##   <li><span class='match'>nie</span>nte</li>
##   <li>waterli<span class='match'>lie</span>s</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>re<span class='match'>vie</span>wing</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>grena<span class='match'>die</span>r</li>
##   <li>fusi<span class='match'>lie</span>rs</li>
##   <li>ea<span class='match'>sie</span>r</li>
##   <li><span class='match'>tie</span></li>
##   <li><span class='match'>yie</span>ld</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>die</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>f<span class='match'>rie</span>ndliness</li>
##   <li><span class='match'>vie</span>nna</li>
##   <li><span class='match'>die</span></li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>cab<span class='match'>bie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>stupe<span class='match'>fie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>monaste<span class='match'>rie</span>s</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>die</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>cris<span class='match'>sie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>cros<span class='match'>bie</span></li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>jar<span class='match'>vie</span>s</li>
##   <li>han<span class='match'>die</span>r</li>
##   <li>an<span class='match'>tie</span>nt</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>re<span class='match'>vie</span>wed</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>chum<span class='match'>mie</span>s</li>
##   <li>unmar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>pie</span>bald</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>tanne<span class='match'>rie</span>s</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>re<span class='match'>lie</span>ved</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>req<span class='match'>uie</span>m</li>
##   <li>hea<span class='match'>vie</span>r</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>bie</span>r</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>bie</span>r</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>req<span class='match'>uie</span>m</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>dai<span class='match'>sie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li>con<span class='match'>cei</span>ve</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>cemete<span class='match'>rie</span>s</li>
##   <li>pop<span class='match'>pie</span>s</li>
##   <li>d<span class='match'>rie</span>d</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>bu<span class='match'>rie</span>s</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>bu<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>bie</span>r</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>mum<span class='match'>mie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>pie</span>rce</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li><span class='match'>die</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>hie</span>f’s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>chai<span class='match'>nie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>putre<span class='match'>fie</span>d</li>
##   <li>morti<span class='match'>fie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>cou<span class='match'>rie</span>r</li>
##   <li>live<span class='match'>rie</span>d</li>
##   <li>cro<span class='match'>zie</span>r</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>machine<span class='match'>rie</span>s</li>
##   <li>que<span class='match'>rie</span>s</li>
##   <li>cas<span class='match'>hie</span>r</li>
##   <li>hur<span class='match'>rie</span>d</li>
##   <li>pa<span class='match'>tie</span>ntly</li>
##   <li>obe<span class='match'>die</span>nt</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>ser<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>gab<span class='match'>rie</span>l</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>ser<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>impa<span class='match'>tie</span>ntly</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>cei</span>ving</li>
##   <li><span class='match'>cei</span>ling</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>noto<span class='match'>rie</span>ty</li>
##   <li>bullockbef<span class='match'>rie</span>nding</li>
##   <li>bloo<span class='match'>die</span>st</li>
##   <li><span class='match'>vie</span>nna</li>
##   <li><span class='match'>fie</span>ldmarshal</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>ky<span class='match'>rie</span></li>
##   <li>ky<span class='match'>rie</span></li>
##   <li>ky<span class='match'>rie</span></li>
##   <li><span class='match'>lie</span>ge</li>
##   <li>ret<span class='match'>rie</span>ve</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li><span class='match'>tie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>dad<span class='match'>die</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>die</span>d</li>
##   <li>ear<span class='match'>lie</span>r</li>
##   <li>inter<span class='match'>vie</span>wer</li>
##   <li>stea<span class='match'>die</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>b<span class='match'>rie</span>fly</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>highp<span class='match'>rie</span>st</li>
##   <li>highp<span class='match'>rie</span>st</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li>p<span class='match'>rie</span>sthood</li>
##   <li>babema<span class='match'>rie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>die</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>prop<span class='match'>rie</span>tress</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>inter<span class='match'>vie</span>w</li>
##   <li>co<span class='match'>pie</span>d</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>wa<span class='match'>xie</span>s</li>
##   <li>tric<span class='match'>kie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>tum<span class='match'>mie</span>s</li>
##   <li>do<span class='match'>wie</span></li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li>butte<span class='match'>rie</span>s</li>
##   <li>col<span class='match'>lie</span></li>
##   <li>bridge<span class='match'>pie</span>rs</li>
##   <li>ser<span class='match'>rie</span>d</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>pie</span></li>
##   <li>obitua<span class='match'>rie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>rabbit<span class='match'>pie</span></li>
##   <li>hap<span class='match'>pie</span>r</li>
##   <li>ate<span class='match'>lie</span>r</li>
##   <li>p<span class='match'>rie</span>stylooking</li>
##   <li>con<span class='match'>cei</span>ted</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li><span class='match'>die</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>die</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>skull<span class='match'>pie</span>ce</li>
##   <li>skull<span class='match'>pie</span>ce</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>liz<span class='match'>zie</span></li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>bel<span class='match'>lie</span>s</li>
##   <li>ba<span class='match'>bie</span>s</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>hor<span class='match'>nie</span>s</li>
##   <li>bil<span class='match'>lie</span>s</li>
##   <li>socie<span class='match'>tie</span>s</li>
##   <li>loo<span class='match'>nie</span>s</li>
##   <li><span class='match'>die</span>s</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li>liz<span class='match'>zie</span></li>
##   <li>healt<span class='match'>hie</span>r</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li><span class='match'>fie</span>ldglasses</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>fair<span class='match'>vie</span>w</li>
##   <li>slow<span class='match'>lie</span>r</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>chum<span class='match'>mie</span>s</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>hap<span class='match'>pie</span>r</li>
##   <li><span class='match'>yie</span>lded</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li><span class='match'>yie</span>lded</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li><span class='match'>fie</span>ldmarshals</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>hy<span class='match'>gie</span>ne</li>
##   <li>ea<span class='match'>sie</span>r</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li>ber<span class='match'>rie</span>s</li>
##   <li>mago<span class='match'>rie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li><span class='match'>yie</span>lding</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li><span class='match'>pie</span>rs</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>cro<span class='match'>nie</span>s</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>fol<span class='match'>lie</span>s</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>inter<span class='match'>vie</span>wer</li>
##   <li><span class='match'>hie</span>sos</li>
##   <li><span class='match'>fie</span></li>
##   <li>t<span class='match'>hie</span>f</li>
##   <li>rare<span class='match'>fie</span>d</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>wie</span>lding</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>stu<span class='match'>die</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>impa<span class='match'>tie</span>ntly</li>
##   <li>vil<span class='match'>lie</span>rs</li>
##   <li>pan<span class='match'>die</span>s</li>
##   <li>centu<span class='match'>rie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>ug<span class='match'>lie</span>st</li>
##   <li><span class='match'>lie</span></li>
##   <li>corn<span class='match'>fie</span>ld</li>
##   <li>rye<span class='match'>fie</span>ld</li>
##   <li><span class='match'>lie</span></li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>caul<span class='match'>fie</span>ld</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>creec<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>lone<span class='match'>lie</span>st</li>
##   <li>bullockbef<span class='match'>rie</span>nding</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>possibili<span class='match'>tie</span>s</li>
##   <li>libra<span class='match'>rie</span>s</li>
##   <li>highp<span class='match'>rie</span>st</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>unq<span class='match'>uie</span>t</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>re<span class='match'>vie</span>w</li>
##   <li>ju<span class='match'>lie</span>t</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li>corn<span class='match'>fie</span>ld</li>
##   <li>rye<span class='match'>fie</span>ld</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>lie</span>s</li>
##   <li><span class='match'>die</span>nen</li>
##   <li><span class='match'>fie</span>nds</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>wil<span class='match'>lie</span></li>
##   <li>wil<span class='match'>lie</span></li>
##   <li>hug<span class='match'>hie</span></li>
##   <li>wil<span class='match'>lie</span></li>
##   <li>grati<span class='match'>fie</span>d</li>
##   <li>wheatbel<span class='match'>lie</span>d</li>
##   <li>p<span class='match'>rie</span>stified</li>
##   <li>a<span class='match'>pie</span>ce</li>
##   <li>pampoo<span class='match'>tie</span>s</li>
##   <li><span class='match'>cei</span>ling</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>herring<span class='match'>pie</span>s</li>
##   <li>gooseber<span class='match'>rie</span>d</li>
##   <li>ringocan<span class='match'>die</span>s</li>
##   <li><span class='match'>vie</span></li>
##   <li>dal<span class='match'>lie</span>d</li>
##   <li>birds<span class='match'>nie</span>s</li>
##   <li>cochonne<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>cro<span class='match'>nie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>high<span class='match'>fie</span>ld</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>histo<span class='match'>rie</span>s</li>
##   <li>fullbel<span class='match'>lie</span>d</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>stu<span class='match'>die</span>s</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>gorbel<span class='match'>lie</span>d</li>
##   <li><span class='match'>vie</span>nnese</li>
##   <li><span class='match'>die</span></li>
##   <li>req<span class='match'>uie</span>scat</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>be<span class='match'>lie</span>vers</li>
##   <li>ene<span class='match'>mie</span>s</li>
##   <li>cod<span class='match'>pie</span>ce</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>bestiali<span class='match'>tie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>cava<span class='match'>lie</span>rs</li>
##   <li>toa<span class='match'>die</span>d</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>s<span class='match'>kie</span>s</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>die</span>ppe</li>
##   <li>eagerq<span class='match'>uie</span>tly</li>
##   <li>mar<span class='match'>rie</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>apotheca<span class='match'>rie</span>s</li>
##   <li>uns<span class='match'>hie</span>lded</li>
##   <li>bu<span class='match'>rie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>petri<span class='match'>fie</span>d</li>
##   <li>va<span class='match'>rie</span>ty</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li><span class='match'>die</span>s</li>
##   <li>liz<span class='match'>zie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>glori<span class='match'>fie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>hap<span class='match'>pie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>unmar<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>unbe<span class='match'>lie</span>f</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>unbe<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>unbe<span class='match'>lie</span>ve</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li>inter<span class='match'>vie</span>w</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>rosa<span class='match'>lie</span></li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>p<span class='match'>rie</span>steen</li>
##   <li>pur<span class='match'>lie</span>u</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>con<span class='match'>cei</span>ved</li>
##   <li>watercar<span class='match'>rie</span>r</li>
##   <li>rosa<span class='match'>lie</span></li>
##   <li><span class='match'>lie</span>s</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li><span class='match'>hie</span>rophantic</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>tie</span></li>
##   <li><span class='match'>mie</span>n</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li><span class='match'>die</span></li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li><span class='match'>lie</span></li>
##   <li>xa<span class='match'>vie</span>r’s</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>wor<span class='match'>rie</span>s</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>t<span class='match'>hie</span>f</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>mu<span class='match'>lie</span>ris</li>
##   <li><span class='match'>cei</span>led</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>dai<span class='match'>sie</span>s</li>
##   <li>sent<span class='match'>rie</span>d</li>
##   <li><span class='match'>vie</span>wed</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>bridge<span class='match'>pie</span>rs</li>
##   <li>tan<span class='match'>gie</span>r</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li><span class='match'>tie</span></li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>gra<span class='match'>zie</span></li>
##   <li>gil<span class='match'>lie</span>s</li>
##   <li>ma<span class='match'>rie</span></li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>pie</span>bald</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>ma<span class='match'>rie</span></li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li><span class='match'>pie</span>s</li>
##   <li>sal<span class='match'>lie</span>d</li>
##   <li>master<span class='match'>pie</span>ce</li>
##   <li>cost<span class='match'>lie</span>st</li>
##   <li>fril<span class='match'>lie</span>s</li>
##   <li><span class='match'>yie</span>lded</li>
##   <li><span class='match'>vie</span>wed</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li><span class='match'>die</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>casual<span class='match'>tie</span>s</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li><span class='match'>lie</span>utenant’s</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li><span class='match'>sie</span>ge</li>
##   <li>hur<span class='match'>rie</span>d</li>
##   <li>ru<span class='match'>bie</span>s</li>
##   <li>o<span class='match'>rie</span>nt</li>
##   <li>be<span class='match'>lie</span>vers</li>
##   <li><span class='match'>lie</span>abed</li>
##   <li>recti<span class='match'>fie</span>rs</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nd’s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>liber<span class='match'>tie</span>s</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li>unf<span class='match'>rie</span>ndly</li>
##   <li><span class='match'>lie</span>utenantgeneral</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li><span class='match'>vie</span>nna</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>ma<span class='match'>rie</span></li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li><span class='match'>lie</span>utenantcolonel</li>
##   <li>smith<span class='match'>fie</span>ld</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>unper<span class='match'>cei</span>ved</li>
##   <li>depu<span class='match'>tie</span>s</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li><span class='match'>lie</span>utenantgeneral</li>
##   <li>der<span class='match'>nie</span>r</li>
##   <li>ma<span class='match'>rie</span></li>
##   <li><span class='match'>lie</span>utenantcolonel</li>
##   <li><span class='match'>tie</span></li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>lad<span class='match'>die</span>s</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>rhapso<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>hur<span class='match'>rie</span>d</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>a<span class='match'>die</span>u</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>an<span class='match'>tie</span>nt</li>
##   <li>sh<span class='match'>rie</span>k</li>
##   <li>sh<span class='match'>rie</span>king</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>pie</span>rcing</li>
##   <li><span class='match'>die</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>soft<span class='match'>lie</span>r</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>hie</span></li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>sun<span class='match'>nie</span>r</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li><span class='match'>pie</span></li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li><span class='match'>pie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li><span class='match'>lie</span>uten</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>obe<span class='match'>die</span>nt</li>
##   <li>obe<span class='match'>die</span>nt</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li><span class='match'>pie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span>’s</li>
##   <li>rhapso<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>unwea<span class='match'>rie</span>d</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li><span class='match'>die</span>d</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>multip<span class='match'>lie</span>d</li>
##   <li>blumen<span class='match'>lie</span>d</li>
##   <li>s<span class='match'>hie</span>ld</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>ric<span class='match'>hie</span>’s</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>rhapso<span class='match'>die</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st’s</li>
##   <li>p<span class='match'>rie</span>st’s</li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>die</span></li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>sie</span>ge</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li><span class='match'>die</span></li>
##   <li>emp<span class='match'>tie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>emp<span class='match'>tie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>fril<span class='match'>lie</span>s</li>
##   <li>sh<span class='match'>rie</span>k</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>bie</span>r</li>
##   <li>townc<span class='match'>rie</span>r</li>
##   <li><span class='match'>vie</span>wed</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li><span class='match'>vie</span>wed</li>
##   <li>t<span class='match'>hie</span>f</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>a<span class='match'>lie</span>nated</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>s<span class='match'>lie</span>vemargy</li>
##   <li>c<span class='match'>hie</span>ftain</li>
##   <li>c<span class='match'>hie</span>ftains</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>tal<span class='match'>lie</span>s</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li><span class='match'>sie</span>ves</li>
##   <li>gooseber<span class='match'>rie</span>s</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li>raspber<span class='match'>rie</span>s</li>
##   <li>va<span class='match'>rie</span>ties</li>
##   <li>declivi<span class='match'>tie</span>s</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li><span class='match'>fie</span>ldlark</li>
##   <li>lof<span class='match'>tie</span>r</li>
##   <li>extremi<span class='match'>tie</span>s</li>
##   <li>sars<span class='match'>fie</span>ld</li>
##   <li>alig<span class='match'>hie</span>ri</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>barn<span class='match'>fie</span>ld</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>ber<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>cost<span class='match'>lie</span>st</li>
##   <li>orange<span class='match'>fie</span>ry</li>
##   <li>enti<span class='match'>tie</span>s</li>
##   <li>possibili<span class='match'>tie</span>s</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>misc<span class='match'>hie</span>f</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>jes<span class='match'>sie</span></li>
##   <li>je<span class='match'>wie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>belf<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li>testi<span class='match'>fie</span>d</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li><span class='match'>pie</span>rrepaul</li>
##   <li>k<span class='match'>rie</span>gfried</li>
##   <li>cou<span class='match'>rie</span>r</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>rcingly</li>
##   <li><span class='match'>rie</span>nzi</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>shef<span class='match'>fie</span>ld</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>authori<span class='match'>tie</span>s</li>
##   <li>ser<span class='match'>rie</span>d</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li><span class='match'>lie</span>utenantcolonel</li>
##   <li><span class='match'>die</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li><span class='match'>die</span>tary</li>
##   <li>ac<span class='match'>hie</span>vements</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>kie</span>rnan</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>pie</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>count<span class='match'>rie</span>s</li>
##   <li>gra<span class='match'>zie</span>r</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li>re<span class='match'>cei</span>vergeneral</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>bul<span class='match'>kie</span>r</li>
##   <li>courte<span class='match'>sie</span>s</li>
##   <li>fren<span class='match'>zie</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li>imp<span class='match'>lie</span>s</li>
##   <li>mar<span class='match'>rie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li>skiv<span class='match'>vie</span>s</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>s<span class='match'>kie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>obe<span class='match'>die</span>nt</li>
##   <li>colo<span class='match'>nie</span>s</li>
##   <li>tongue<span class='match'>tie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>potte<span class='match'>rie</span>s</li>
##   <li>tanne<span class='match'>rie</span>s</li>
##   <li>pelt<span class='match'>rie</span>s</li>
##   <li>hob<span class='match'>bie</span>s</li>
##   <li>du<span class='match'>tie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>c<span class='match'>hie</span>ftain</li>
##   <li>cheva<span class='match'>lie</span>r</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>lie</span>ved</li>
##   <li>hollyber<span class='match'>rie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>tie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>con<span class='match'>cei</span>ved</li>
##   <li>scari<span class='match'>fie</span>d</li>
##   <li>cur<span class='match'>rie</span>d</li>
##   <li>s<span class='match'>hie</span>lings</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>sars<span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ldmarshal</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>corner<span class='match'>pie</span>ces</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>ju<span class='match'>lie</span>t</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>facili<span class='match'>tie</span>s</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>ju<span class='match'>rie</span>s</li>
##   <li>indust<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>mie</span>n</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>s<span class='match'>hie</span>ld</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>die</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>corde<span class='match'>lie</span>rs</li>
##   <li><span class='match'>kie</span>ran</li>
##   <li>li<span class='match'>lie</span>s</li>
##   <li>ve<span class='match'>nie</span>nt</li>
##   <li><span class='match'>kie</span>rnan</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>reci<span class='match'>pie</span>nt</li>
##   <li>s<span class='match'>lie</span>ve</li>
##   <li>s<span class='match'>lie</span>ve</li>
##   <li>s<span class='match'>lie</span>ve</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>ordina<span class='match'>rie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>beau<span class='match'>tie</span>s</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li><span class='match'>pie</span>rcing</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>un<span class='match'>die</span>s</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>nigh<span class='match'>tie</span>s</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>un<span class='match'>tie</span>d</li>
##   <li>re<span class='match'>lie</span>ve</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li>wy<span class='match'>lie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>wy<span class='match'>lie</span>’s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>pin<span class='match'>nie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>die</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>stu<span class='match'>die</span>d</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>con<span class='match'>cei</span>ved</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>formali<span class='match'>tie</span>s</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li>gir<span class='match'>lie</span></li>
##   <li>trans<span class='match'>pie</span>rced</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>gab<span class='match'>rie</span>l</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>pret<span class='match'>tie</span>r</li>
##   <li>dain<span class='match'>tie</span>r</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>misc<span class='match'>hie</span>f</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>ti<span class='match'>die</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>de<span class='match'>cei</span>ver</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li><span class='match'>pie</span></li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>i<span class='match'>vie</span>d</li>
##   <li>ea<span class='match'>sie</span>r</li>
##   <li>wy<span class='match'>lie</span></li>
##   <li>co<span class='match'>pie</span>d</li>
##   <li>tran<span class='match'>sie</span>nt</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>ros<span class='match'>sie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>unsul<span class='match'>lie</span>d</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>month<span class='match'>lie</span>s</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>linge<span class='match'>rie</span></li>
##   <li><span class='match'>tie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>rosa<span class='match'>rie</span>s</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li><span class='match'>tie</span></li>
##   <li>drim<span class='match'>mie</span>’s</li>
##   <li>neck<span class='match'>tie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>kid<span class='match'>die</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>ba<span class='match'>bie</span>s</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>car<span class='match'>rie</span>s</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>hub<span class='match'>bie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>chande<span class='match'>lie</span>rs</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>p<span class='match'>rie</span>st’s</li>
##   <li>gab<span class='match'>rie</span>l</li>
##   <li><span class='match'>cei</span>ling</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>pork<span class='match'>pie</span></li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>fril<span class='match'>lie</span>s</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>p<span class='match'>rie</span>st’s</li>
##   <li>f<span class='match'>rie</span>d</li>
##   <li>sa<span class='match'>pie</span>nce</li>
##   <li>stu<span class='match'>die</span>d</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li>o’s<span class='match'>hie</span>ls</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>partu<span class='match'>rie</span>nt</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>lie</span></li>
##   <li>wa<span class='match'>rie</span>st</li>
##   <li>hea<span class='match'>vie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>massp<span class='match'>rie</span>st</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>die</span>d</li>
##   <li>misbe<span class='match'>lie</span>ving</li>
##   <li><span class='match'>nie</span></li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>lie</span>ge</li>
##   <li><span class='match'>hie</span>d</li>
##   <li>good<span class='match'>lie</span>st</li>
##   <li><span class='match'>mie</span>n</li>
##   <li>f<span class='match'>rie</span>ndship</li>
##   <li><span class='match'>die</span></li>
##   <li>potheca<span class='match'>rie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li>g<span class='match'>rie</span>ved</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>die</span></li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>sh<span class='match'>rie</span>king</li>
##   <li><span class='match'>die</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li>f<span class='match'>rie</span>nd’s</li>
##   <li>g<span class='match'>rie</span>ved</li>
##   <li>p<span class='match'>lie</span>d</li>
##   <li>ve<span class='match'>nie</span>t</li>
##   <li>avent<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span>u</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>obe<span class='match'>die</span>nce</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>ky<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>lie</span></li>
##   <li>o<span class='match'>rie</span>nt</li>
##   <li>atroci<span class='match'>tie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>e<span class='match'>tie</span>nne</li>
##   <li>apple<span class='match'>pie</span></li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>die</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>flatte<span class='match'>rie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>con<span class='match'>cei</span>ve</li>
##   <li>good<span class='match'>lie</span>st</li>
##   <li>s<span class='match'>hie</span>ld</li>
##   <li>s<span class='match'>hie</span>ld</li>
##   <li>de<span class='match'>cei</span>ved</li>
##   <li>g<span class='match'>rie</span>vous</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li>d<span class='match'>rie</span>r</li>
##   <li><span class='match'>die</span>d</li>
##   <li>queeri<span class='match'>tie</span>s</li>
##   <li>boo<span class='match'>kie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>con<span class='match'>cei</span>ve</li>
##   <li>port<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>cour<span class='match'>tie</span>rs</li>
##   <li>co<span class='match'>pie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>proclivi<span class='match'>tie</span>s</li>
##   <li>g<span class='match'>rie</span>ved</li>
##   <li>inconve<span class='match'>nie</span>nt</li>
##   <li><span class='match'>die</span>t</li>
##   <li>chil<span class='match'>lie</span>s</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li>s<span class='match'>hie</span>lded</li>
##   <li><span class='match'>pie</span>bald</li>
##   <li>eulo<span class='match'>gie</span>s</li>
##   <li>analo<span class='match'>gie</span>s</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li>ral<span class='match'>lie</span>d</li>
##   <li>con<span class='match'>cei</span>t</li>
##   <li>live<span class='match'>lie</span>st</li>
##   <li>sa<span class='match'>lie</span>nt</li>
##   <li>ac<span class='match'>hie</span>ved</li>
##   <li><span class='match'>bie</span>n</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>tyran<span class='match'>nie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>butterf<span class='match'>lie</span>s</li>
##   <li>prop<span class='match'>rie</span>ties</li>
##   <li>sal<span class='match'>lie</span>s</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>en<span class='match'>cei</span>nte</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>prop<span class='match'>rie</span>ties</li>
##   <li>p<span class='match'>lie</span>rs</li>
##   <li>rea<span class='match'>die</span>st</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>testi<span class='match'>fie</span>d</li>
##   <li>dundrea<span class='match'>rie</span>s</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>semina<span class='match'>rie</span>s</li>
##   <li>vota<span class='match'>rie</span>s</li>
##   <li>re<span class='match'>lie</span>ve</li>
##   <li>a<span class='match'>lie</span>n</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>be<span class='match'>lie</span></li>
##   <li>de<span class='match'>nie</span>d</li>
##   <li><span class='match'>pie</span>ty</li>
##   <li><span class='match'>tie</span>s</li>
##   <li>seed<span class='match'>fie</span>ld</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>o<span class='match'>rie</span>nt</li>
##   <li>ea<span class='match'>sie</span>r</li>
##   <li>exempli<span class='match'>fie</span>d</li>
##   <li>con<span class='match'>cei</span>ved</li>
##   <li>classi<span class='match'>fie</span>d</li>
##   <li>master<span class='match'>pie</span>ce</li>
##   <li>be<span class='match'>lie</span>fs</li>
##   <li>abnormali<span class='match'>tie</span>s</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>obe<span class='match'>die</span>nce</li>
##   <li>b<span class='match'>rie</span>fly</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>bando<span class='match'>lie</span>rwise</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>stu<span class='match'>die</span>d</li>
##   <li>bri<span class='match'>die</span></li>
##   <li>bri<span class='match'>die</span></li>
##   <li>pasture<span class='match'>fie</span>lds</li>
##   <li>magni<span class='match'>fie</span>d</li>
##   <li>s<span class='match'>kie</span>s</li>
##   <li>bullockbef<span class='match'>rie</span>nding</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>rie</span>d</li>
##   <li>misc<span class='match'>hie</span>vously</li>
##   <li>po<span class='match'>sie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>bre<span class='match'>vie</span>r</li>
##   <li>car<span class='match'>rie</span>s</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>myste<span class='match'>rie</span>s</li>
##   <li>orange<span class='match'>fie</span>ry</li>
##   <li>reci<span class='match'>pie</span>nt</li>
##   <li>lof<span class='match'>tie</span>st</li>
##   <li>va<span class='match'>rie</span>d</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>die</span></li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>unfructi<span class='match'>fie</span>d</li>
##   <li>prophe<span class='match'>sie</span>d</li>
##   <li>ba<span class='match'>bie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>delive<span class='match'>rie</span>s</li>
##   <li>ear<span class='match'>lie</span>r</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>signi<span class='match'>fie</span>s</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>stu<span class='match'>die</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>cher<span class='match'>rie</span>s</li>
##   <li>q<span class='match'>uie</span>tude</li>
##   <li>ser<span class='match'>rie</span>d</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>die</span>t</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>circumam<span class='match'>bie</span>nt</li>
##   <li>fructi<span class='match'>fie</span>d</li>
##   <li>dad<span class='match'>die</span>s</li>
##   <li>jere<span class='match'>mie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>brol<span class='match'>lie</span>s</li>
##   <li>toot<span class='match'>sie</span>s</li>
##   <li>prai<span class='match'>rie</span></li>
##   <li>time<span class='match'>pie</span>ce</li>
##   <li>mince<span class='match'>pie</span>s</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>jesi<span class='match'>fie</span>d</li>
##   <li><span class='match'>hie</span>lentman’s</li>
##   <li>sh<span class='match'>rie</span>ks</li>
##   <li>compag<span class='match'>nie</span></li>
##   <li>pox<span class='match'>fie</span>nd</li>
##   <li>put<span class='match'>tie</span>st</li>
##   <li>coo<span class='match'>kie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>hor<span class='match'>nie</span>s</li>
##   <li>piccanin<span class='match'>nie</span>s</li>
##   <li>dar<span class='match'>kie</span>s</li>
##   <li><span class='match'>tie</span>ns</li>
##   <li><span class='match'>tie</span>ns</li>
##   <li>gra<span class='match'>die</span>nt</li>
##   <li>jap<span class='match'>pie</span>s</li>
##   <li>do<span class='match'>wie</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>pal<span class='match'>sie</span>d</li>
##   <li>egre<span class='match'>die</span>ntem</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>spa<span class='match'>nie</span>l</li>
##   <li>hur<span class='match'>rie</span>s</li>
##   <li>t<span class='match'>hie</span>ves</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>har<span class='match'>rie</span>rs</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li><span class='match'>fie</span>rcely</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li>bri<span class='match'>die</span></li>
##   <li>bri<span class='match'>die</span></li>
##   <li>bloo<span class='match'>die</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>ze</li>
##   <li>hur<span class='match'>rie</span>dly</li>
##   <li>chris<span class='match'>tie</span>s</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>pret<span class='match'>tie</span>st</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>one<span class='match'>pie</span>ce</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>polo<span class='match'>nie</span>s</li>
##   <li>had<span class='match'>die</span>s</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li>scarf<span class='match'>tie</span></li>
##   <li><span class='match'>fie</span>ldglasses</li>
##   <li>bando<span class='match'>lie</span>r</li>
##   <li>re<span class='match'>lie</span>ving</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>spa<span class='match'>nie</span>l</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>pluc<span class='match'>kie</span>st</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>sto<span class='match'>rie</span>s</li>
##   <li>re<span class='match'>cei</span>ver</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>car<span class='match'>rie</span>s</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li><span class='match'>lie</span></li>
##   <li>c<span class='match'>rie</span>r</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>ret<span class='match'>rie</span>ve</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>c<span class='match'>lie</span>nt</li>
##   <li>familiari<span class='match'>tie</span>s</li>
##   <li>c<span class='match'>lie</span>nt’s</li>
##   <li>c<span class='match'>lie</span>nt’s</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>c<span class='match'>lie</span>nt</li>
##   <li>c<span class='match'>lie</span>nt</li>
##   <li>app<span class='match'>lie</span>s</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>mon<span class='match'>sie</span>ur</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>t<span class='match'>hie</span>f</li>
##   <li>dar<span class='match'>bie</span>s</li>
##   <li>extremi<span class='match'>tie</span>s</li>
##   <li>ear<span class='match'>lie</span>st</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>mie</span>n</li>
##   <li>time<span class='match'>pie</span>ce</li>
##   <li>time<span class='match'>pie</span>ce</li>
##   <li>c<span class='match'>rie</span>r</li>
##   <li>hypertrop<span class='match'>hie</span>d</li>
##   <li><span class='match'>tie</span>d</li>
##   <li>toadbel<span class='match'>lie</span>d</li>
##   <li>pop<span class='match'>pie</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>hea<span class='match'>vie</span>r</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>o<span class='match'>rie</span>nt</li>
##   <li><span class='match'>lie</span>s</li>
##   <li><span class='match'>hie</span>rushaloim</li>
##   <li><span class='match'>tie</span></li>
##   <li><span class='match'>lie</span>s</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li><span class='match'>tie</span></li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>fusi<span class='match'>lie</span>rs</li>
##   <li>fusi<span class='match'>lie</span>rs</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>far<span class='match'>rie</span>rs</li>
##   <li>lapida<span class='match'>rie</span>s</li>
##   <li>ho<span class='match'>sie</span>rs</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>balco<span class='match'>nie</span>s</li>
##   <li>territo<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span>ge</li>
##   <li>vi<span class='match'>zie</span>r</li>
##   <li>embo<span class='match'>die</span>d</li>
##   <li><span class='match'>yie</span>ld</li>
##   <li>coun<span class='match'>tie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>pop<span class='match'>pie</span>s</li>
##   <li>ene<span class='match'>mie</span>s</li>
##   <li>gra<span class='match'>zie</span>rs</li>
##   <li><span class='match'>tie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>pal<span class='match'>sie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li><span class='match'>die</span></li>
##   <li>pan<span class='match'>sie</span>s</li>
##   <li>hy<span class='match'>gie</span>ne</li>
##   <li>de<span class='match'>cei</span>ver</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>fun<span class='match'>nie</span>st</li>
##   <li>las<span class='match'>sie</span></li>
##   <li><span class='match'>die</span>s</li>
##   <li>do<span class='match'>wie</span></li>
##   <li><span class='match'>fie</span>ndish</li>
##   <li>ear<span class='match'>lie</span>st</li>
##   <li>ci<span class='match'>tie</span>s</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>pa<span class='match'>tie</span>nt’s</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>d<span class='match'>rie</span>d</li>
##   <li>count<span class='match'>rie</span>s</li>
##   <li>compa<span class='match'>nie</span>s</li>
##   <li>beacons<span class='match'>fie</span>ld</li>
##   <li>vingtetu<span class='match'>nie</span>me</li>
##   <li>vingtetu<span class='match'>nie</span>me</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>flat<span class='match'>tie</span>s</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>fril<span class='match'>lie</span>s</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>lie</span></li>
##   <li>g<span class='match'>rie</span>ve</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>preoccu<span class='match'>pie</span>d</li>
##   <li>spa<span class='match'>nie</span>l</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>tapest<span class='match'>rie</span>d</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li><span class='match'>tie</span></li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li><span class='match'>vie</span>nt</li>
##   <li><span class='match'>sie</span>urs</li>
##   <li><span class='match'>rie</span>n</li>
##   <li>occu<span class='match'>pie</span>s</li>
##   <li>gil<span class='match'>lie</span>’s</li>
##   <li><span class='match'>pie</span></li>
##   <li>snap<span class='match'>pie</span>st</li>
##   <li>do<span class='match'>wie</span></li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>tie</span>d</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>ni<span class='match'>xie</span>’s</li>
##   <li>back<span class='match'>vie</span>w</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>linge<span class='match'>rie</span></li>
##   <li>pan<span class='match'>nie</span>r</li>
##   <li>de<span class='match'>cei</span>ve</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>extendi<span class='match'>fie</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>car<span class='match'>rie</span>s</li>
##   <li>inter<span class='match'>vie</span>w</li>
##   <li>impa<span class='match'>tie</span>ntly</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>pie</span>ces</li>
##   <li><span class='match'>fie</span>rcely</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li>wor<span class='match'>rie</span>s</li>
##   <li>pret<span class='match'>tie</span>r</li>
##   <li>dain<span class='match'>tie</span>r</li>
##   <li>genito<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>ra<span class='match'>pie</span>r</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>lie</span>s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>rcing</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>min<span class='match'>nie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>per<span class='match'>cei</span>ves</li>
##   <li>expe<span class='match'>rie</span>nced</li>
##   <li>man<span class='match'>fie</span>ld’s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>pie</span>rcing</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>p<span class='match'>lie</span>rs</li>
##   <li>linge<span class='match'>rie</span></li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>naugh<span class='match'>tie</span>s</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>d’o<span class='match'>lie</span>r</li>
##   <li>conve<span class='match'>nie</span>nces</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>tie</span>d</li>
##   <li><span class='match'>pie</span>rcer</li>
##   <li>fowling<span class='match'>pie</span>ce</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>menf<span class='match'>rie</span>nds</li>
##   <li>groce<span class='match'>rie</span>s</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>bo<span class='match'>wie</span>knife</li>
##   <li><span class='match'>lie</span></li>
##   <li><span class='match'>die</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>min<span class='match'>nie</span></li>
##   <li>sto<span class='match'>rie</span>s</li>
##   <li>prop<span class='match'>rie</span>tary</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>facul<span class='match'>tie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>ho<span class='match'>sie</span>ry</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>birdc<span class='match'>hie</span>f</li>
##   <li>watercar<span class='match'>rie</span>r</li>
##   <li>mucosi<span class='match'>tie</span>s</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>ri<span class='match'>vie</span>ra</li>
##   <li>swee<span class='match'>tie</span>s</li>
##   <li>apolo<span class='match'>gie</span>s</li>
##   <li>car<span class='match'>rie</span>s</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>re<span class='match'>cei</span>pt</li>
##   <li>strawber<span class='match'>rie</span>s</li>
##   <li>digni<span class='match'>fie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>hur<span class='match'>rie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>clowne<span class='match'>rie</span>s</li>
##   <li>nudi<span class='match'>tie</span>s</li>
##   <li>contra<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>boo<span class='match'>kie</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>impa<span class='match'>tie</span>ntly</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>kerc<span class='match'>hie</span>f</li>
##   <li>abili<span class='match'>tie</span>s</li>
##   <li>cava<span class='match'>lie</span>rs</li>
##   <li>cava<span class='match'>lie</span>rs</li>
##   <li>cava<span class='match'>lie</span>rs</li>
##   <li>sh<span class='match'>rie</span>ks</li>
##   <li>tric<span class='match'>kie</span>s</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>lie</span>s</li>
##   <li>hur<span class='match'>rie</span>s</li>
##   <li>per<span class='match'>cei</span>ves</li>
##   <li>rep<span class='match'>lie</span>s</li>
##   <li>hur<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>handsomemar<span class='match'>rie</span>dwomanrubbedagainstwidebehindinclonskea</li>
##   <li>drim<span class='match'>mie</span>’s</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>vie</span>ille</li>
##   <li>me<span class='match'>die</span>val</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>ret<span class='match'>rie</span>ved</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>t<span class='match'>rie</span>s</li>
##   <li>terri<span class='match'>fie</span>d</li>
##   <li>trop<span class='match'>hie</span>s</li>
##   <li><span class='match'>fie</span>rce</li>
##   <li>fusi<span class='match'>lie</span>rs</li>
##   <li>halber<span class='match'>die</span>rs</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>sh<span class='match'>rie</span>ks</li>
##   <li>t<span class='match'>hie</span>ves</li>
##   <li>ey<span class='match'>rie</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li><span class='match'>fie</span>ldaltar</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>hten<span class='match'>gie</span>r</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>sol<span class='match'>die</span>r</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>ret<span class='match'>rie</span>ver</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>inju<span class='match'>rie</span>s</li>
##   <li>g<span class='match'>rie</span>f</li>
##   <li>t<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>bob<span class='match'>bie</span>s</li>
##   <li><span class='match'>pie</span>rce</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>expe<span class='match'>die</span>nt</li>
##   <li>prop<span class='match'>rie</span>ty</li>
##   <li>prelimina<span class='match'>rie</span>s</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>far<span class='match'>rie</span>r’s</li>
##   <li>a<span class='match'>mie</span>ns</li>
##   <li>a<span class='match'>mie</span>ns</li>
##   <li>commodi<span class='match'>tie</span>s</li>
##   <li>facul<span class='match'>tie</span>s</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>ape<span class='match'>rie</span>nt</li>
##   <li>be<span class='match'>lie</span>ver</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>bra<span class='match'>zie</span>r</li>
##   <li>bra<span class='match'>zie</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>an<span class='match'>xie</span>ty</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>proclivi<span class='match'>tie</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>m’conac<span class='match'>hie</span></li>
##   <li><span class='match'>lie</span>u</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>pen<span class='match'>nie</span>s</li>
##   <li>bra<span class='match'>zie</span>r</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>a<span class='match'>pie</span>ce</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>veri<span class='match'>fie</span>d</li>
##   <li>sker<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>ndliness</li>
##   <li>abili<span class='match'>tie</span>s</li>
##   <li>expe<span class='match'>rie</span>nced</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>diversi<span class='match'>fie</span>d</li>
##   <li>commodi<span class='match'>tie</span>s</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>jar<span class='match'>vie</span>s</li>
##   <li>dissatis<span class='match'>fie</span>d</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>murp<span class='match'>hie</span>s</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>s<span class='match'>hie</span>ling</li>
##   <li>sto<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>be<span class='match'>lie</span>ves</li>
##   <li>jar<span class='match'>vie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>shan<span class='match'>tie</span>s</li>
##   <li>o<span class='match'>sie</span>r</li>
##   <li>did<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ver</li>
##   <li>f<span class='match'>rie</span>nd’s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>opportuni<span class='match'>tie</span>s</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li>t<span class='match'>rie</span>ste</li>
##   <li>de<span class='match'>fie</span>d</li>
##   <li>va<span class='match'>rie</span>ty</li>
##   <li>eigh<span class='match'>tie</span>s</li>
##   <li>comp<span class='match'>lie</span>d</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>expe<span class='match'>rie</span>nced</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>fluster<span class='match'>fie</span>d</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li><span class='match'>vie</span>wing</li>
##   <li>authori<span class='match'>tie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>acq<span class='match'>uie</span>sced</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>app<span class='match'>lie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>expe<span class='match'>rie</span>nced</li>
##   <li>unbe<span class='match'>lie</span>f</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li>forge<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>quali<span class='match'>fie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>d<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nd’s</li>
##   <li>sto<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li>jar<span class='match'>vie</span>s</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>identi<span class='match'>fie</span>d</li>
##   <li>f<span class='match'>rie</span>rs</li>
##   <li>va<span class='match'>rie</span>ty</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>q<span class='match'>uie</span>tus</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>petri<span class='match'>fie</span>d</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li><span class='match'>pie</span>rs</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>bra<span class='match'>zie</span>r</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>g<span class='match'>rie</span>vances</li>
##   <li>quanti<span class='match'>tie</span>s</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>count<span class='match'>rie</span>s</li>
##   <li>chum<span class='match'>mie</span>s</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li>propensi<span class='match'>tie</span>s</li>
##   <li>inju<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>die</span>d</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li><span class='match'>die</span></li>
##   <li>f<span class='match'>rie</span>ndlier</li>
##   <li>rea<span class='match'>die</span>st</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>vaga<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>b<span class='match'>rie</span>fly</li>
##   <li>seven<span class='match'>tie</span>s</li>
##   <li>noto<span class='match'>rie</span>ties</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>improp<span class='match'>rie</span>ty</li>
##   <li>un<span class='match'>tie</span>d</li>
##   <li>expe<span class='match'>rie</span>nces</li>
##   <li><span class='match'>lie</span></li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>obseq<span class='match'>uie</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>fil<span class='match'>lie</span>s</li>
##   <li>hea<span class='match'>vie</span>r</li>
##   <li>fusi<span class='match'>lie</span>r</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li><span class='match'>lie</span></li>
##   <li>prop<span class='match'>rie</span>tor</li>
##   <li>week<span class='match'>lie</span>s</li>
##   <li><span class='match'>tie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>p<span class='match'>rie</span>sts</li>
##   <li>a<span class='match'>die</span>u</li>
##   <li>pre<span class='match'>mie</span>r</li>
##   <li>t<span class='match'>hie</span>very</li>
##   <li><span class='match'>vie</span>wing</li>
##   <li>apolo<span class='match'>gie</span>s</li>
##   <li>makebe<span class='match'>lie</span>ve</li>
##   <li>t<span class='match'>rie</span>s</li>
##   <li>o’b<span class='match'>rie</span>nite</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li>ear<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>agg<span class='match'>rie</span>ved</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>du<span class='match'>tie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>pi<span class='match'>tie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>casual<span class='match'>tie</span>s</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>eventuali<span class='match'>tie</span>s</li>
##   <li>wor<span class='match'>rie</span>d</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li>beau<span class='match'>tie</span>s</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>c<span class='match'>hie</span>f</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>que<span class='match'>rie</span>d</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li><span class='match'>nie</span>nte</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>bra<span class='match'>zie</span>r</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li><span class='match'>yie</span>lded</li>
##   <li>con<span class='match'>cei</span>ts</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>indust<span class='match'>rie</span>s</li>
##   <li><span class='match'>pie</span>ter</li>
##   <li><span class='match'>die</span></li>
##   <li>nice<span class='match'>tie</span>s</li>
##   <li>festivi<span class='match'>tie</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>pa<span class='match'>tie</span>nt</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>ene<span class='match'>mie</span>s</li>
##   <li>f<span class='match'>rie</span>ndship</li>
##   <li><span class='match'>die</span>t</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>disbe<span class='match'>lie</span>f</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li><span class='match'>die</span>tary</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li><span class='match'>vie</span>ws</li>
##   <li>bloom<span class='match'>fie</span>ld</li>
##   <li>bloom<span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>certi<span class='match'>fie</span>d</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>q<span class='match'>uie</span>scent</li>
##   <li>per<span class='match'>cei</span>ve</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>d’o<span class='match'>lie</span>r</li>
##   <li>ric<span class='match'>hie</span></li>
##   <li>xa<span class='match'>vie</span>r</li>
##   <li>stu<span class='match'>die</span>s</li>
##   <li><span class='match'>pie</span>r</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>extremi<span class='match'>tie</span>s</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>lie</span>ving</li>
##   <li>gra<span class='match'>die</span>nt</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>watercar<span class='match'>rie</span>r</li>
##   <li>q<span class='match'>uie</span>scence</li>
##   <li>promonto<span class='match'>rie</span>s</li>
##   <li>tributa<span class='match'>rie</span>s</li>
##   <li>ed<span class='match'>die</span>s</li>
##   <li>exempli<span class='match'>fie</span>d</li>
##   <li>gul<span class='match'>lie</span>s</li>
##   <li>proper<span class='match'>tie</span>s</li>
##   <li>va<span class='match'>rie</span>ty</li>
##   <li>estua<span class='match'>rie</span>s</li>
##   <li>tanne<span class='match'>rie</span>s</li>
##   <li>aquaci<span class='match'>tie</span>s</li>
##   <li>hy<span class='match'>gie</span>ne</li>
##   <li><span class='match'>die</span>tary</li>
##   <li>quali<span class='match'>tie</span>s</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>justi<span class='match'>fie</span>d</li>
##   <li>semisolidi<span class='match'>fie</span>d</li>
##   <li>prove<span class='match'>nie</span>nces</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>difficul<span class='match'>tie</span>s</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>ingre<span class='match'>die</span>nts</li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>whit<span class='match'>tie</span>r</li>
##   <li>jes<span class='match'>sie</span></li>
##   <li>difficul<span class='match'>tie</span>s</li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li>con<span class='match'>cei</span>ving</li>
##   <li>smith<span class='match'>fie</span>ld</li>
##   <li><span class='match'>fie</span>ldglasses</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li>ter<span class='match'>rie</span>r</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li>ac<span class='match'>hie</span>ve</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li>ear<span class='match'>lie</span>r</li>
##   <li><span class='match'>vie</span>nna</li>
##   <li>g<span class='match'>rie</span>r</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>a<span class='match'>rie</span>s</li>
##   <li>orre<span class='match'>rie</span>s</li>
##   <li>ac<span class='match'>hie</span>ved</li>
##   <li>possibili<span class='match'>tie</span>s</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li>anniversa<span class='match'>rie</span>s</li>
##   <li>hur<span class='match'>rie</span>s</li>
##   <li><span class='match'>die</span>d</li>
##   <li>re<span class='match'>lie</span>ved</li>
##   <li>t<span class='match'>hie</span>f</li>
##   <li>possibili<span class='match'>tie</span>s</li>
##   <li>stu<span class='match'>die</span>s</li>
##   <li>certi<span class='match'>fie</span>d</li>
##   <li>ac<span class='match'>hie</span>vement</li>
##   <li>va<span class='match'>rie</span>ty</li>
##   <li>prop<span class='match'>rie</span>tress</li>
##   <li>disoccu<span class='match'>pie</span>d</li>
##   <li><span class='match'>hie</span>roglyphics</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>imp<span class='match'>lie</span>d</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>modi<span class='match'>fie</span>d</li>
##   <li><span class='match'>hie</span>roglyphs</li>
##   <li>identi<span class='match'>tie</span>s</li>
##   <li>do<span class='match'>wie</span></li>
##   <li>al<span class='match'>lie</span>d</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>re<span class='match'>cei</span>ve</li>
##   <li><span class='match'>hie</span>rarchy</li>
##   <li>rep<span class='match'>lie</span>d</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>memo<span class='match'>rie</span>s</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>augu<span class='match'>rie</span>s</li>
##   <li>abnormali<span class='match'>tie</span>s</li>
##   <li>exempli<span class='match'>fie</span>d</li>
##   <li>necessi<span class='match'>tie</span>s</li>
##   <li>m<span class='match'>oie</span>ty</li>
##   <li>modi<span class='match'>fie</span>d</li>
##   <li>rati<span class='match'>fie</span>d</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>prop<span class='match'>rie</span>tors</li>
##   <li>au<span class='match'>die</span>nce</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>ago<span class='match'>nie</span>s</li>
##   <li>facto<span class='match'>rie</span>s</li>
##   <li>mala<span class='match'>die</span>s</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li>cavi<span class='match'>tie</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>ea<span class='match'>sie</span>r</li>
##   <li>ina<span class='match'>lie</span>nably</li>
##   <li>vani<span class='match'>tie</span>s</li>
##   <li>vani<span class='match'>tie</span>s</li>
##   <li>vani<span class='match'>tie</span>s</li>
##   <li>discove<span class='match'>rie</span>s</li>
##   <li>ver<span class='match'>rie</span>r</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>bo<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>f</li>
##   <li>affini<span class='match'>tie</span>s</li>
##   <li>supp<span class='match'>lie</span>d</li>
##   <li>aun<span class='match'>gie</span>r</li>
##   <li>trajecto<span class='match'>rie</span>s</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>per<span class='match'>cei</span>ving</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>app<span class='match'>lie</span>d</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>mantel<span class='match'>pie</span>ce</li>
##   <li>time<span class='match'>pie</span>ce</li>
##   <li><span class='match'>pie</span>rglass</li>
##   <li>beau<span class='match'>tie</span>s</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>victo<span class='match'>rie</span>s</li>
##   <li>ho<span class='match'>zie</span>r’s</li>
##   <li>bloom<span class='match'>fie</span>ld</li>
##   <li>bre<span class='match'>vie</span>r</li>
##   <li>par<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>ho<span class='match'>zie</span>r’s</li>
##   <li>neck<span class='match'>tie</span></li>
##   <li>sa<span class='match'>lie</span>nt</li>
##   <li>pa<span class='match'>tie</span>ntly</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>unoccu<span class='match'>pie</span>d</li>
##   <li>locali<span class='match'>tie</span>s</li>
##   <li>me<span class='match'>die</span>val</li>
##   <li>o<span class='match'>rie</span>ntal</li>
##   <li>re<span class='match'>cei</span>ver</li>
##   <li>chande<span class='match'>lie</span>r</li>
##   <li>f<span class='match'>rie</span>ze</li>
##   <li><span class='match'>tie</span>rod</li>
##   <li>hy<span class='match'>gie</span>nic</li>
##   <li>necessa<span class='match'>rie</span>s</li>
##   <li><span class='match'>bie</span>nnial</li>
##   <li>invento<span class='match'>rie</span>d</li>
##   <li>facili<span class='match'>tie</span>s</li>
##   <li>ac<span class='match'>hie</span>ving</li>
##   <li><span class='match'>fie</span>ldwork</li>
##   <li>master<span class='match'>pie</span>ces</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li><span class='match'>hie</span>rarchical</li>
##   <li>animosi<span class='match'>tie</span>s</li>
##   <li>ear<span class='match'>lie</span>st</li>
##   <li>disbe<span class='match'>lie</span>f</li>
##   <li><span class='match'>vie</span>w</li>
##   <li>da<span class='match'>nie</span>l</li>
##   <li>f<span class='match'>rie</span>ndship</li>
##   <li>theo<span class='match'>rie</span>s</li>
##   <li>o’b<span class='match'>rie</span>n</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li>securi<span class='match'>tie</span>s</li>
##   <li>occu<span class='match'>pie</span>r</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>reposito<span class='match'>rie</span>s</li>
##   <li>melon<span class='match'>fie</span>lds</li>
##   <li>proper<span class='match'>tie</span>s</li>
##   <li><span class='match'>vie</span>w</li>
##   <li><span class='match'>die</span>t</li>
##   <li>multip<span class='match'>lie</span>d</li>
##   <li>galle<span class='match'>rie</span>s</li>
##   <li>gra<span class='match'>zie</span>rs</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>c<span class='match'>hie</span>fly</li>
##   <li>lique<span class='match'>fie</span>d</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>cemete<span class='match'>rie</span>s</li>
##   <li>ate<span class='match'>lie</span>r</li>
##   <li>prop<span class='match'>rie</span>tor</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li>expe<span class='match'>rie</span>nce</li>
##   <li>impa<span class='match'>tie</span>nce</li>
##   <li>be<span class='match'>lie</span>fs</li>
##   <li>be<span class='match'>lie</span>fs</li>
##   <li>be<span class='match'>lie</span>fs</li>
##   <li><span class='match'>vie</span>nna</li>
##   <li>accompa<span class='match'>nie</span>d</li>
##   <li>expe<span class='match'>rie</span>nces</li>
##   <li>indigni<span class='match'>tie</span>s</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>multip<span class='match'>lie</span>d</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>par<span class='match'>tie</span>s</li>
##   <li>locali<span class='match'>tie</span>s</li>
##   <li>petri<span class='match'>fie</span>d</li>
##   <li>divini<span class='match'>tie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>occu<span class='match'>pie</span>d</li>
##   <li>unoccu<span class='match'>pie</span>d</li>
##   <li>ho<span class='match'>lie</span>s</li>
##   <li><span class='match'>kie</span>rnan’s</li>
##   <li>b<span class='match'>rie</span>f</li>
##   <li>insen<span class='match'>tie</span>nt</li>
##   <li>divini<span class='match'>tie</span>s</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>fusi<span class='match'>lie</span>rs</li>
##   <li>a<span class='match'>mie</span>ns</li>
##   <li>a<span class='match'>mie</span>ns</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li>va<span class='match'>rie</span>d</li>
##   <li>re<span class='match'>cei</span>ved</li>
##   <li><span class='match'>fie</span>ld</li>
##   <li>ene<span class='match'>mie</span>s</li>
##   <li>inju<span class='match'>rie</span>s</li>
##   <li>a<span class='match'>lie</span>nation</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li>contra<span class='match'>rie</span>ties</li>
##   <li>inci<span class='match'>pie</span>nt</li>
##   <li><span class='match'>kie</span>rnan</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>sa<span class='match'>lie</span>nt</li>
##   <li>per<span class='match'>cei</span>ved</li>
##   <li>se<span class='match'>rie</span>s</li>
##   <li><span class='match'>lie</span></li>
##   <li>car<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li><span class='match'>die</span>d</li>
##   <li>c<span class='match'>rie</span>s</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>john<span class='match'>nie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>de<span class='match'>cei</span>ver</li>
##   <li>pop<span class='match'>pie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>mis<span class='match'>sie</span>s</li>
##   <li>co<span class='match'>pie</span>d</li>
##   <li><span class='match'>lie</span>ut</li>
##   <li>re<span class='match'>vie</span>w</li>
##   <li>firef<span class='match'>lie</span>s</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li><span class='match'>lie</span></li>
##   <li>q<span class='match'>uie</span>t</li>
##   <li><span class='match'>tie</span></li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li><span class='match'>die</span></li>
##   <li>handkerc<span class='match'>hie</span>fs</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>li<span class='match'>lie</span>s</li>
##   <li>misc<span class='match'>hie</span>f</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>tit<span class='match'>tie</span>s</li>
##   <li>re<span class='match'>lie</span>ved</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li>sent<span class='match'>rie</span>s</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>wil<span class='match'>kie</span></li>
##   <li>centu<span class='match'>rie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li><span class='match'>die</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>gilles<span class='match'>pie</span></li>
##   <li><span class='match'>die</span>d</li>
##   <li>f<span class='match'>rie</span>nd</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>be<span class='match'>lie</span>ved</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>galle<span class='match'>rie</span>s</li>
##   <li><span class='match'>die</span></li>
##   <li><span class='match'>lie</span></li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li><span class='match'>lie</span>utenant</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>tan<span class='match'>gie</span>r</li>
##   <li>handkerc<span class='match'>hie</span>f</li>
##   <li>ma<span class='match'>rie</span></li>
##   <li>ma<span class='match'>rie</span></li>
##   <li>beau<span class='match'>tie</span>s</li>
##   <li>sol<span class='match'>die</span>rs</li>
##   <li><span class='match'>die</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>q<span class='match'>uie</span>tly</li>
##   <li>re<span class='match'>lie</span>f</li>
##   <li><span class='match'>sie</span>rra</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>la<span class='match'>die</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>ry</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>g<span class='match'>aie</span>ty</li>
##   <li>drim<span class='match'>mie</span>s</li>
##   <li><span class='match'>tie</span>d</li>
##   <li>pa<span class='match'>tie</span>nce</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>na<span class='match'>pie</span>r</li>
##   <li>drim<span class='match'>mie</span>s</li>
##   <li>de<span class='match'>cei</span>tful</li>
##   <li><span class='match'>lie</span>s</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>ba<span class='match'>bie</span>s</li>
##   <li>master<span class='match'>pie</span>ce</li>
##   <li><span class='match'>die</span>s</li>
##   <li>jo<span class='match'>sie</span></li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>ndship</li>
##   <li>fami<span class='match'>lie</span>s</li>
##   <li><span class='match'>pie</span>ce</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>mar<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li>gip<span class='match'>sie</span>s</li>
##   <li>bloom<span class='match'>fie</span>ld</li>
##   <li>stu<span class='match'>die</span>s</li>
##   <li>satis<span class='match'>fie</span>d</li>
##   <li>bu<span class='match'>rie</span>d</li>
##   <li>f<span class='match'>rie</span>nds</li>
##   <li><span class='match'>sie</span>te</li>
##   <li><span class='match'>bie</span>n</li>
##   <li>t<span class='match'>rie</span>d</li>
##   <li>stu<span class='match'>die</span>s</li>
##   <li><span class='match'>pie</span>ta</li>
##   <li>be<span class='match'>lie</span>ve</li>
##   <li>f<span class='match'>rie</span>ndly</li>
##   <li><span class='match'>cei</span>ling</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li>cher<span class='match'>rie</span>s</li>
##   <li><span class='match'>fie</span>lds</li>
##   <li>p<span class='match'>rie</span>st</li>
##   <li><span class='match'>pie</span>r</li>
##   <li>t<span class='match'>rie</span>ste</li>
## </ul>
## 
## 
## $width
## NULL
## 
## $height
## NULL
## 
## $sizingPolicy
## $sizingPolicy$defaultWidth
## NULL
## 
## $sizingPolicy$defaultHeight
## [1] "auto"
## 
## $sizingPolicy$padding
## NULL
## 
## $sizingPolicy$viewer
## $sizingPolicy$viewer$defaultWidth
## NULL
## 
## $sizingPolicy$viewer$defaultHeight
## NULL
## 
## $sizingPolicy$viewer$padding
## NULL
## 
## $sizingPolicy$viewer$fill
## [1] TRUE
## 
## $sizingPolicy$viewer$suppress
## [1] FALSE
## 
## $sizingPolicy$viewer$paneHeight
## NULL
## 
## 
## $sizingPolicy$browser
## $sizingPolicy$browser$defaultWidth
## NULL
## 
## $sizingPolicy$browser$defaultHeight
## NULL
## 
## $sizingPolicy$browser$padding
## NULL
## 
## $sizingPolicy$browser$fill
## [1] FALSE
## 
## 
## $sizingPolicy$knitr
## $sizingPolicy$knitr$defaultWidth
## NULL
## 
## $sizingPolicy$knitr$defaultHeight
## NULL
## 
## $sizingPolicy$knitr$figure
## [1] FALSE
## 
## 
## 
## $dependencies
## NULL
## 
## $elementId
## NULL
```

Words that do not comply with the rule:


```r
str_view(new_string, 
         "(cie|[^c]ei)", ## "cie" or "ei" not preceded by "c" 
         match = TRUE)
```

<!--html_preserve--><div id="htmlwidget-2e96b2274d98fdbb7687" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-2e96b2274d98fdbb7687">{"x":{"html":"<ul>\n  <li><span class='match'>dei<\/span><\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ling<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>rd<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fl<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>nac<span class='match'>hei<\/span>nander<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>prophe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>made<span class='match'>lei<\/span>ne<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>conspira<span class='match'>cie<\/span>s<\/li>\n  <li>v<span class='match'>iei<\/span>lle<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>rss<span class='match'>eei<\/span>ss<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fars<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>trim<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>gh<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>spr<span class='match'>eei<\/span>sh<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>gei<\/span>sha<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>xlip<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>penny<span class='match'>wei<\/span>ght<\/li>\n  <li>penny<span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>un<span class='match'>fei<\/span>gned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>paper<span class='match'>wei<\/span>ght<\/li>\n  <li>e<span class='match'>lei<\/span>son<\/li>\n  <li>e<span class='match'>lei<\/span>son<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>vice<span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>wei<\/span>ghtcarrying<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ties<\/li>\n  <li>in<span class='match'>vei<\/span>gling<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ling<\/li>\n  <li><span class='match'>vei<\/span>ning<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sur<span class='match'>fei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>mei<\/span>ster<\/li>\n  <li>al<span class='match'>bei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ls<\/li>\n  <li>brillian<span class='match'>cie<\/span>s<\/li>\n  <li>fourhundredan<span class='match'>dei<\/span>ghth<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sur<span class='match'>fei<\/span>t<\/li>\n  <li>ra<span class='match'>lei<\/span>gh<\/li>\n  <li><span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>mei<\/span>nherr<\/li>\n  <li>so<span class='match'>cie<\/span>tate<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>unfan<span class='match'>cie<\/span>d<\/li>\n  <li>b<span class='match'>lei<\/span>btreu<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ngless<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>heavy<span class='match'>wei<\/span>ghts<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>kei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbours<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>didd<span class='match'>lei<\/span>ddle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>he<span class='match'>rei<\/span>nafter<\/li>\n  <li>he<span class='match'>rei<\/span>nafter<\/li>\n  <li>he<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>fers<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>ntist<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>ninet<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>excellen<span class='match'>cie<\/span>s<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>ueberallge<span class='match'>mei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>hei<\/span>la<\/li>\n  <li>decen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>bac<span class='match'>lei<\/span>s<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>welter<span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>wetts<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>rai<span class='match'>mei<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>rei<\/span>llys<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>mei<\/span>la<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>ja<span class='match'>nei<\/span>ro<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>effica<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>bel<span class='match'>lei<\/span>sle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>eyebrow<span class='match'>lei<\/span>ne<\/li>\n  <li>s<span class='match'>cie<\/span>ntifically<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gner<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>nforced<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>eyebrow<span class='match'>lei<\/span>ne<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>mer<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ghs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>teratedly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li>how<span class='match'>bei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>agr<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>dei<\/span>parae<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>sei<\/span>ze<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li>fan<span class='match'>cie<\/span>d<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li><span class='match'>dei<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>extravagan<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>sei<\/span>ze<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>fa<span class='match'>cie<\/span><\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>p<span class='match'>lei<\/span>ades<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>pregnan<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>ntious<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li><span class='match'>dei<\/span>ne<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>lei<\/span>th<\/li>\n  <li><span class='match'>dei<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>bei<\/span>rne’s<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>dei<\/span><\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>wei<\/span>ghted<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>thick<span class='match'>vei<\/span>led<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>bloemfon<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>wei<\/span>rd<\/li>\n  <li>r<span class='match'>hei<\/span>ms<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fa<span class='match'>cie<\/span><\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>edel<span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>ple<span class='match'>bei<\/span>an<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>rloom<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>fan<span class='match'>cie<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>insuffi<span class='match'>cie<\/span>nt<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>cie<\/span>nces<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>laem<span class='match'>lei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gneth<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>bag<span class='match'>wei<\/span>ghted<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>tipt<span class='match'>oei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>transparen<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>coo<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>fl<span class='match'>eei<\/span>ng<\/li>\n  <li>for<span class='match'>fei<\/span>ts<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>ndeer<\/li>\n  <li>fo<span class='match'>rei<\/span>gns<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ls<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>cor<span class='match'>bei<\/span>lle<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>remer<span class='match'>cie<\/span>z<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>v<span class='match'>iei<\/span>lle<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gneth<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbourhood<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>fo<span class='match'>rei<\/span>gners<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>rdlooking<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>rei<\/span>gned<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbours<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>contingen<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbourhood<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fan<span class='match'>cie<\/span>d<\/li>\n  <li><span class='match'>lei<\/span>sure<\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>profi<span class='match'>cie<\/span>ncy<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>constituen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>listig<span class='match'>kei<\/span>t<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>self<span class='match'>wei<\/span>ghing<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>gla<span class='match'>cie<\/span>rs<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>pro<span class='match'>tei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fahren<span class='match'>hei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>p<span class='match'>rei<\/span>ndicative<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>ring<span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>ka<span class='match'>lei<\/span>doscopes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>defi<span class='match'>cie<\/span>nt<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>defi<span class='match'>cie<\/span>ncies<\/li>\n  <li>profi<span class='match'>cie<\/span>ncy<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>defi<span class='match'>cie<\/span>ncy<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cu<span class='match'>nei<\/span>form<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>contingen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rhisnothis<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>fahren<span class='match'>hei<\/span>t<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>nonpa<span class='match'>rei<\/span>l<\/li>\n  <li>defi<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>rs<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>finan<span class='match'>cie<\/span>rs<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li>agen<span class='match'>cie<\/span>s<\/li>\n  <li>effi<span class='match'>cie<\/span>nt<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>fei<\/span>ntruled<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>dei<\/span>n<\/li>\n  <li>idiosyncra<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li>strain<span class='match'>vei<\/span>ned<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>so<span class='match'>cie<\/span>ty’s<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>onomatop<span class='match'>oei<\/span>c<\/li>\n  <li>onomatop<span class='match'>oei<\/span>c<\/li>\n  <li>nes<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>bloemfon<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>re<span class='match'>vei<\/span>lle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>at<span class='match'>hei<\/span>sts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

### 2. Emergency Hospital Injuries 

The file `emergency.csv` contains a random sample of 10,000 narratives of 
injuries treated in U.S. emergency departments. We will try to extract some 
structured data from these narratives.

#### a) Length of Narratives

Read in the data (use `read_csv` from the `readr` package).


```r
data_import <- "/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/hw06/emergency.csv"

library(readr)
data1 <- read_csv(data_import,
                  col_types = cols(
                    col_character()
                  ),
                  col_names = FALSE)

colnames(data1)[1] <- "description"

data1$nchar <- str_length(data1$description)
```

Find and display the longest and shortest description.

  * The longest description has 143 characters, there are 66 descriptions of that
length:


```r
longest <- max(data1$nchar)

longest_position <- which(data1$nchar == longest)

length(longest_position)
```

```
## [1] 66
```

```r
table(
  data1[longest_position, ]
)
```

```
##                                                                                                                                                  nchar
## description                                                                                                                                       143
##   ^64YOM LIFTING A CAR BATTERY OUT OF HIS CAR AND TWISTED AWKWARDLY AND N OW HAVING SEVERE PAIN DOWN LOWER BACK ADMIT FOR INTRACTABLE LUMBAR PAIN   1
##   10 YOM WAS PLAYING BASEBALL, WITH A FRIEND, & GOT HIT IN THE MOUTH BY A BASEBALL- TEETH ARE LOOSE, GUM BLEEDING.DX; DENTAL TRAUMA, LIP HEMATOMA   1
##   10YOM; PT WAS GETTING DRESSED IN FRONT OF THE HEATER WHEN HE BEGAN TO G ET A HEADACHE AND FELT SICK & PASSED OUT.  D: CARBON MONOXIDE POISONING   1
##   11 YOF WAS JUMPING ON THE BED, AT HOME, & FELL ONTO A PAIR OF SCISSORS, THEY WENT INTO HER CHEST.  DX: HEMOTHORAX SECONDARY TO PENETRAT. TRAUMA   1
##   116 YOM-@ SCHOOL PLAYING BASKETBALL-KNOCKED DOWN-FELL ON R SHOULDER & A NOTHER PLAYER STEPPED ON L CLAVICLE       DX  CONTUSION L SHOULDER POSS   1
##   12YOF FELL OFF OF A BENCH WHILE AT SCHOOL, THE BENCH FELL AND HIT HER L LEG AND THEN SHE FELL ONTO LEG PT HAS PAIN, DX CONTUSION TO L LOWER LEG   1
##   13YOM DID OUTDOOR WORKOUT X1 1/2 HRS, DEVELOEPD HEADACHE, TUNNEL VISION , THEN PLAYED FOOTBALL, WATCHING TV AFTER W/HEADACHE; MIGRAINE HEADACHE   1
##   14YOF PT DIABETIC, HAVING INTENSIVE VOLLEYBALL TRY OUTS LAST COUPLE WEE KS, STARTED VOMITNG, ELEVATED BLOOD SUGAR LAST NIGHT; VOMITING, HIGH BS   1
##   15YF ON BUS TO SOCCER GAME&NOTICED "FUNNY SMELL", AFTER BEING OFF BUS&P LACING SOCCER FOR 30-45MIN SHE&FELLOW RIDERS BECAME LTHARGIC/HA>CO EXPO   1
##   16YOF IN FRIEND'S CAR WHEN PUT ON LATEX GLOVES, REMOVED GLOVE & PUT THU MB IN MOUTH, DEVELOPED TONGUE NUMBNESS, LIP SWELLING; ALLERGIC REACTION   1
##   16YOM  PT'S L SHOULDER POPPED OUT FOR A MOMENT WHILE SWINGING BAT PLAYI NG BASEBALL YEST.  VERY SORE TODAY.  DX. DISLOCATED L INTERIOR SHOULDER   1
##   17 YO F SLIPPED AT POOL WHEN FEET WENT OUT IN FRONT OF HER LANDING ON B UTTOCKS. HIT HEAD ON POOL DECK. DX: CHI, NECK STRAIN, LOWER BACK STRAIN   1
##   17MOBM  MOM STATES CHILD WAS IN THE FLOOR AND SHE NOTED STRANGE SMELL T O BREATH, SMELLED OF FINGERNAIL POLISH REMOVER.  DX. INGESTION NON-ACET   1
##   17YOM WITH FINGER FX LAST WEEK, HAD SPLINT PLACED IN ED, DECIDED TO PLA Y FOOTBALL GAME REINJURING SAME FINGER, TRAINER PUT BACK IN PLACE;REINJ   1
##   19MOWF  PARENTS HOLDING PT.  DAD STATES SHE WAS SLIDING DOWN SLIDE, WEA RING SHOES & LEG GOT CAUGHT ON THE SLIDE AT PARK.  DX. FX L PROX TIBIA.   1
##   19YO HISP MALE AT HOME WAS SHOT IN R EYE WITH PAINTBALL GUN, MILD BLURR Y VISION & PAIN, DX EYE CONTUSION,MONOCULAR VISION LOSS TRAUMATIC HYPHE   1
##   1MOF COUGH/WHEEZE X2W OR SINCE BIRTH, POSS INHALED SMOKE 1.5WA WHEN ELE CTRIC STOVE CAUGHT FIRE @ HOME, FIRE ISOLATED 2 STOVE, FD?;COUGH/WHEEZE   1
##   20 YO M, RUNNING FROM POLICE AFTER AN ALLEGED HOME INVASION, JUMPED OVE R FENCES & FELL OFF ROOF DURING CHASE. DX:CHI, AC SEPARATION, ANKLE SPR   1
##   21 YOM LACERATION TO LT HAND REPORTS WAS OPENING UP A BOTTLE OF CHAMPAG NE W/A CORK OPENER WHEN THE CORK FLEW & BOTTLE BROKE.+LAC TO LT FINGER%   1
##   21MOF IN LIVING ROOM,FOUND W/BURN THUMB,OTTOMAN ON FIRE NEXT TO GAS FIR EPLACE NOT LIT,THINKS PUT CHRISTMAS TREE TWIG IN PILOT LIGHT;BURN NO FD   1
##   22YOM WAS LIGHTING PROPANE PIZZA OVEN ON FRI. WHEN HE WAS BURNED ON FAC E, CHEST, HAND. HAS BEEN TREATING AT HOME. ?FDA. NO DETAILS.  DX:BURNS.   1
##   24YOM  R HAND/R WRIST PAIN AFTER HITTING A WALL TODAY.  PER PT, WAS SHA DOW BOXING TODAY & ACCIDENTALLY HIT WALL.  DX. FX R 5TH METACARPAL BASE   1
##   26 YO F, C/O TENDER GROWTH ON HEAD,HAS HAD IT SINCE CHILDHOOD,BUT WAS A T HAIRDRESSER TODAY,ACCIDENTALLY SCRAPED W/ HAIRBRUSHADX SCALP ABRASION   1
##   26 YO M INJECTING MORPHINE INTO R ARM, DEVELOPED SWELLING AND USED RAZO R BLADE TO CUT OPEN AREA AND DRAIN, NOW PAINFUL DX R FOREARM CELLULITIS   1
##   26YO WHITE MALE STS TRIED PUTTING OUT FIRE AT APT COMPLEX ?UNK FD,INHAL DED SMOKE,C/O CHEST TIGHTNESS,TWISTED R FOOT/ANKLE,DX FOOT SPRAIN,WHEEZ   1
##   26YOF  PT C/O R FOOT PAIN W/BRUISING AND SWELLING, STATES LAST NIGHT SH E WENT TO KICK A BALL TO HER DOG AND KICKED HER DRESSER. DX. FX R 5TH M   1
##   2YOF DX: CONTUSION,FACE(EXCEPT EYES). PT PLAYING W/ SIBLING & FELL INTO CORNER OF TABLE IN LIVING RM FROM STANDING POSITION, MARK BELOW RT EYE*   1
##   30YOWF  PT WAS ASSEMBLING A BIRTHDAY PRESENT FOR HER SON & WAS TRYING T O CUT THE TIE STRIPS OFF WITH A KNIFE & CUT L HAND. DX. LAC L HAND/PALM   1
##   37YOM  PT STATES HE HAD A NAIL STUCK IN HIS L FOOT 2 WKS. AGO.  DOG HAS STEPPED ON HIS FOOT TWICE & FOOT HAS SWELLING.  DX.  PW L FOOT, CELLULI   1
##   3MOF IN GRANDMAS ARMS, WENT TO SIT DOWN ON COUCH, HIT EDGE AND SLID ONT O FLOOR, PT FELL ONTO FLOOR ON HER BACK. FUSSY SINCE. DX BACK CONTUSION   1
##   40 YO M WITH SYNCOPE AND DIZZINESS. RECENT SCUBA DIVING EXPERIENCE 4 DA YS AGO WHERE HE DID 2 DIVES 2X A DAY UP TO 80FT. DX; SYNCOPE, HEADACHE.   1
##   40YOM-C/O FOOT/HEEL PAIN RUNNIJNG BACKWARDS FELT TEARING SENSATION IN F OOT AFTER WARM UP EXERCISES FOR SOCCER  DX PLANTER FASCITIS ACUTE FLARE   1
##   43YOM WAS USING A CIRCULAR SAW LAST PM CUTTING WOOD WHILE DRINKING ETOH &IT SLIPPED C/O LEFT RING FINGER PAIN.DX:LEFT RING FINGER AMPUTATION,+E   1
##   44YOF  PT HAVING SEVERE R ARM PAIN THAT IS RADIATING INTO NECK, BEGAN Y ESTEREDAY.  PLAYED TENNIS ON MONDAY, DESCRIBES AS THROBBING. DX. R SHOU   1
##   44YOWM  PT C/O L HAND LAC AFTER CUTTING IT AT HIS HOME WITH A KNIFE WHI LE TRYING TO PRY APART FROZEN MEAT.  DX. LAC PALM OF HAND 1 1/2 IN LONG   1
##   45YOWM  TONIGHT PT WAS TRYING TO MOVE HIS FATHER FROM WHEELCHAIR TO REL CINER AFTER DINNER AND AGGREVATED SCIATICA L BUTTOCKS DOWN L LEG. DX.SC   1
##   51YOM W/BURNS TO PERINEUM,FLANK,UPPER EXT,THUMB & LOWER EXT (~15-20%TBS A) 2/2 SPILLING HOT WATER ON HIMSELF 5 DAYS AGO.WENT TO URGENT CARE CTR   1
##   55YOF  PT WAS WORKING ON TILLER AT HOME AND WHEN FIRED IT UP, IT HIT ME .  THE FENDER OF TILLER SLICED L LEG TO BONE. DX. L LOWER LEG LAC, LEFT   1
##   55YOF PT DROPPED CHAMPAIGN BOTTLE AT HOME WHICH HIT BACK OF HER LEG THE N PT STEPPED ON GLASS.  DX.  LAC R HEEL & LAC L GREAT TOE, ACHILLE TEND   1
##   57 YO F WAS POURING KEROSENE OVER AN OPEN FLAME TO LIGHT GRILL WHEN FLA ME CAUGHT ON HAND. FAMILY MEMBER PUT OUT FLAME. NOT FDA. DX:1ST DG BURN   1
##   58YO F ON BICYCLE WHEN HER HUSBAND, ALSO ON BICYCLE, CRASHED IN FRONT O F HER CAUSING HER TO HIT HIS BIKE. WEARING HELMET. DX:HIP/THIGH CONTUS.   1
##   61 YOM, WOKE UP, DIZZY,HAND FELL THRU WINDOW, CUT FINGER, DAUGHTER CLEA NED FINGER,PT'S EYES ROLLED BACK,UNRESPONSIVE DX: TIA VS SYNCOPE VS SEI   1
##   68YOF  PT WITH DECREASE ROM TO R ELBOW X 2-3 DAYS.  MAY HAVE INJURED EL BOW ROLLING OUT OF BED AT HOME.  DX. PAIN R ELBOW, R LATERAL EPICONDYLI   1
##   69YOF  PT C/O TRIPPING AND FALLING WHILE AT BEAUTY SALON.  STATES SHE F ELL DOWN STAIRS.  DX. BLUNT HEAD INJ, FX CLAVICLE, CONT HEAD/L SHOULDER   1
##   72YOM AT HOME IN THE GARAGE STANDING ON A WOODEN SHELVE & IT BROKE CAUS ED PT TO FALL DX LIP LACERATION, RIB FRACTURE, SKIN TEAR, MECHANICAL FA   1
##   75YOM  PT IN BATHROOM AT NH, TURNED TO GO TO BED AND HIT HEAD ON DOOR F RAME & THEN FELL DOWN AND HIT BACK.  DX.  HEAD INJURY, LUMBOSACRAL STRA   1
##   79 YO F, C/O RT SHOULDER, FACIAL PAIN, WAS WALKING DOWN 3 STEPS, KNEE G AVE OUT,SHE FELL,STRIKING RT SHOULDER,FACE,DX UPPER ARM FX,FOREHEAD ABR   1
##   7YOM PT TRIPPED AND FELL HITTING HIS HEAD ON A METAL FENCE. NO LOC. ACT ING FINE THEN BEGAN HAVING SEIZURE ACT. POST ICTAL. DX CONCUSSION W/ SZ   1
##   8 YOM-PT WAS HIT FR BEHIND BY ANOTHER PLAYER @ FOOTBALL PRACTICE TONIGH T-C/O MID BP & WORSE WHEN PT TRIED TO SIT UPDX ACUTE PARA THORACIS SPRA   1
##   89YOWF  RESIDENT OF NH FOUND ON FLOOR.  C/O L LHIP PAIN, CHRONIC R SHOU LDER PAIN, CONT TO L FH.  HAD FALLEN FROM CHAIR.  DX.  L FH HEMATOMA, L   1
##   8MOF; PT WAS GAGGING AND MOM SWIPED A PIECE OF TAPE OUT OF BABYS THROAT ; PT WAS SEEN PLAYING WITH A SNOWFLAKE THAT HAD TAPE ON BACK.  D: CHOKI   1
##   9 YO M PT WAS CLIMBING ON A FISH TANK AND FELL THROUGH CUTTING BOTH THI GHS ON SOME STAPLES HOLDING TANK TOGETHER.DX 5CM LACERATION BOTH THIGHS   1
##   91YOWM  PT BROUGHT FROM INDEP LIVING, ON HOSPICE CARE, WAS USING A CHAI R TO BALANCE HIMSELF & FELL OFF CHAIR & HIT BACK OF HEAD. DX. LAC SCALP   1
##   AT  HOUSE- FELL ONTO BACK OF HIS HEAD, WHILE  ROLLERSKATING,THEN PASSED OUT, HIT HIS FACE ON THE FLOOR-LOC FOR 1 MIN. WEARING GLASSES. DX: CHI,   1
##   CHI W/SCALP LAC.& FOREHEAD CONT.:20MOM DAD SHUT REFRIGERATOR DOOR,GLASS CAKE PAN FELL FROM FRIDGE,HIT STOVE,BROKE,HIT PT IN HEAD, LG CONT, LAC.   1
##   DX CARPAL TUNNEL SYNDROME/TRAPEZIUS SPASM/FASICULATIONS MUSCLE: 35YOM C /O R GLUTEAL NUMBNESS AFTER SITTING IN CHAIR PLAY'G POKER +SQUATS W WTS   1
##   DX CONTU ABD WALL/CONTU HIP: 46YOF MISSTEPED ON TOP STEP AND "BUMPED" R UQ AFTER FALLING DOWN 5 WOODEN STAIRS; PN OVER COCYX AND PN OVER R RIBS   1
##   DX NASAL CONTU AND ABRASION: 5YOM PLAYING ON COUCH, FELL OFF STRUCK NOS E AND FACE, NASAL SWELLING AND ABRASIONS. FELL HITTING TABLE FACIAL INJ   1
##   DX PNEUMOMEDIASTINUM: 19YOM WT-LIFT' (BENCH PRESS & SQUATS) @ GYM TODAY , TAK' NAP ~3HRS LATER & WOKE UP W CHEST & NECK PN DESCRIBED AS PRESSUR   1
##   DX SYNCOPE/LAC FACE/TOOTH FX: 25YOF STOOD F TOILET, FELT DIZZY, SYNCOPA L, 1CM LAC TO CHIN, + CHIP' 3 TEETH TO L UPPER, PN TO CHIN, WOKE ON FLR   1
##   DX SYNCOPE/PROLONGED QT/CHEST PN: 49YOF COMPETING AT SPECIAL OLYMPICS T ODAY (SOCCER THIS A.M. AND INDIVIDUAL SKILLS THIS P.M. HAND SYNCOPAL EP   1
##   HELMETED 41YOM RIDING W/A GROUP OF CYCLISTS@UNK SPEED WHEN PT WAS CLIPP ED BY ANOTHER CYCLIST GOING OVER HANDLES C/O BACK PAIN.DX:T8 FX S/P BCC   1
##   PT FELL AND STRUCK BACK OF HEAD ON A CONCRETE FLOOR DURING A COMPETITIV E DANCE COMP 2 DAYS AGO. NO LOC. NAUSEA, HEADACHES SINCE. DX CONCUSSION   1
##   PT.INJ.NOSE,HAND,WRIST,ELBOW WHEN RIDING BIKE DOWN HILL,LOST CONTROL FE LW OVER HANDLEBARS INTO A CHAIN LINK FENCE. DX; LAC.NOSE,L.ELBOW,F.X. H   1
##   TRAUAMTIC ARM PAIN CHOPPING WOOD WITH AN AXE, AXE HEAD FLEW OFF HIT PT. DX-NAIL  IN UPPER ARM. DX-FOREIGN BODY UPPER ARM, PUNCTURE WOUND WRIST.   1
##   UNHELMETED PT RIDING MOTOR SCOOTER WHEN HE WAS GOING TOO FAST DOWN A HI LL & WAS GRAZED BY A CAR @ UNK SPEED.DX:KNEE FRACTURE,KNEE SPRAIN,CONTU   1
```

  * The shortest description has 16 characters, there are 2 descriptions of that length:


```r
shortest <- min(data1$nchar)

shortest_position <- which(data1$nchar == shortest)

length(shortest_position)
```

```
## [1] 2
```

```r
data1[shortest_position, 1]
```

```
## # A tibble: 2 x 1
##   description     
##   <chr>           
## 1 ABR HIP ON FLOOR
## 2 INGESTION OF ***
```

#### b) Fractures

Find all narratives related to "fractures". Try to include singular/plural/verb
forms in your search. 


```r
str_view(data1$description, 
         pattern = "(fracture|fractured|fractures|fracturing|FRACTURE|FRACTURED|FRACTURES|FRACTURING)",
         match = TRUE)
```

<!--html_preserve--><div id="htmlwidget-5e324dbf059ccda65a3c" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-5e324dbf059ccda65a3c">{"x":{"html":"<ul>\n  <li>10 MO F FELL OUT OF SHOPPING CART;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>8YOF <span class='match'>FRACTURE<\/span>D FINGER FELL OFF HER BIKE<\/li>\n  <li>41YO HISP MALE POKED R INDEX FINGER WITH A SCREWDRIVER DX CLOSED <span class='match'>FRACTURE<\/span> OF HAND, FELON<\/li>\n  <li>5 YR M FELL OFF FENCE;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>FELL AND INJURED R ANKLE AT SKATE RINK   <span class='match'>FRACTURE<\/span> R ANKLE 30YOM<\/li>\n  <li>13YOM FOUND DOWN WHILE SNOWBOARDING, UNWITNESSED TRAUMA, PT AMNESTIC, D X HEAD INJURY, PELVIC <span class='match'>FRACTURE<\/span><\/li>\n  <li>16YOM WAS ELBOWED IN FACE WHILE PLAYING FOOTBALL NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>40YOM WITH <span class='match'>FRACTURE<\/span> TO THUMB AFTER GETTING IT CAUGHT IN TABLE SAW AT HO ME.<\/li>\n  <li>22YOM GOT HIT IN CHEST WITH BASEBALL PLAAYING DX: RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>81YOF FELL FROM A CHAIR ONTO RIGHT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>63YOF AT BROTHERS HOME MISSED A STEP LANDED ON R KNEE DX FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>20 YO M PT WAS FISHING AND WALKED INTO A TREE BRANCH CUTTING HIS RT SID E FACE AND PAIN FACE. DX ORBITAL WALL <span class='match'>FRACTURE<\/span> ADMITTED<\/li>\n  <li>PT JAMMED LEFT THUMB ON BASKETBALL.  D:  SPRAIN LEFT THUMB / <span class='match'>FRACTURE<\/span> L EFT HAND<\/li>\n  <li>7 YOM WHOSE CARETAKER REPORTS PT SUS INJURY OF THE LEFT ELBOW WHENHE FE LL FROM A ***. DX ELBOW <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>27 YOM <span class='match'>FRACTURE<\/span>D LT. FOREARM- REPORTS FELL OFF BIKE TODAY & LANDED ON L T. ARM ON THE CURB WHILE DRINKING ETOH.*<\/li>\n  <li>FELL OVER RUG <span class='match'>FRACTURE<\/span>D HUMERUS<\/li>\n  <li>PT RAN TOES UNDER CABINET WHILE IN WHEELCHAIR AND CUT AND <span class='match'>FRACTURE<\/span>D 3RD TOE, RIGHT, OPEN. 63 YOF*<\/li>\n  <li>90 YOF WHO HAD A MECHANICAL FALL TRIPPED ON A WATER HOSE INJURING RT LO WER TRUNK- DX- <span class='match'>FRACTURE<\/span> RT LOWER TRUNK<\/li>\n  <li>8YOM INJURED RIGHT INDEX FINGER PLAYING FOOTBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 YR M HIT WITH BALL;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>11YOF- WAS RUNNING THROUGH HOME TRIPPED ONTO A BOX FOOSH ONTO ARMS NOW LEFT FOREARM PAIN. DX LEFT RADIUS ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>20 YOF PRESENT TO ER AFTER A INJURY TO NOSE WHILE PLAYING SOFTBALL TODA Y- DX- <span class='match'>FRACTURE<\/span> FACE (NOSE)<\/li>\n  <li>HURT IN GYMNASTICS . <span class='match'>FRACTURE<\/span> L HAND<\/li>\n  <li>10YR F FELL FROM SKATEBOARD; DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YO F PT WAS PLAYING ON SCOOTER AND JUMPED OFF TWISTING LT FOOT. PAINF UL. DX <span class='match'>FRACTURE<\/span> LT FOOT<\/li>\n  <li>44YOF SLIPPED ON RUG AND FELL TO FLOOR ONTO HIP DX: HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>30YO HISP MALE ATTEMPTED TO STEP INTO VAN & TRIPPED OVER SHOELACES& FEL L LANDED ON R HAND DX CLOSED <span class='match'>FRACTURE<\/span> OF HAND<\/li>\n  <li>7YR F FELL OFF SLIDE;DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>57YOF WITH <span class='match'>FRACTURE<\/span> TO MID AND LOW BACK AFTER TRIPPING ON RUG AND FALLI NG AGAINST THE DOOR OF THE HOUSE. DX FRACTURE.<\/li>\n  <li>13YOM PLAYING FOOTBALL AND TACKLED SUSTAINED A HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>56 YOM FELL FROM LADDER ABOUT TWO FEET ONTO CONCRETE <span class='match'>FRACTURING<\/span> HIS LEFT SHOULDER<\/li>\n  <li>17 YOF DROPED A BOWLING BALL ON HER TOE/TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M FELL WHEN ROLLERSKATING;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>11 YOM RIDING A BIKE, LOST CONTROL AND RAN INTO A WALL.  DX: CONCUSSION , <span class='match'>FRACTURE<\/span> ORBIT.<\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D WRIST FROM FOOTBALL<\/li>\n  <li>89YOF GOING INTO THE KITCHEN LOST BALANCE FELL TO THE FLOOR INJURING LT HIP;HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YOM PLAYING AT HOME JUMPED OFF A BOX AND FELL <span class='match'>FRACTURING<\/span> RIGHT ELBOW<\/li>\n  <li>FINGER CAUGHT IN BATHROOM DOOR 23 MO OLD F OPEN <span class='match'>FRACTURE<\/span> L 3RD FINGER #<\/li>\n  <li>FELL ON KITCHEN FLOOR <span class='match'>FRACTURE<\/span> RIBS 96 YO F #<\/li>\n  <li>PT WAS PLAYING SOCCER & FELL INJURING WRIST  DX; <span class='match'>FRACTURE<\/span>D LEFT WRIST<\/li>\n  <li>75 YO F RAN INTO TELEVISION, FELL IN FLOOR AT HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YOM FELL OFF SKATEBOARD AND TWISTED ANKLE ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>15YOM PLAYING ORGANIZED BASKETBALL YESTERDAY WHEN HE JAMMED RT INDEX FINGER ON ANOTHER PLAYER;FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YR M PLAYING SOCCER;DX TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>17 YR M HIT WHEN PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D NOSE<\/li>\n  <li>PT PRESENT TO ER AFTER STATNDING ON A WOODEN CONTAINER FELL DOWN AND IN JURED SHOULDER- DX- SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>86YOM COMPRESSION <span class='match'>FRACTURE<\/span> LUMBAR SPINE FELL HITTING THE FLOOR AT THE N URSING HOME PT ADMITTED*<\/li>\n  <li>FELL OFF BED ONTO TOY AT HOME.  DX SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YOM WAS TACKLED TO GROUND WHILE PLAYING FOOTBALL AT SCHOOL CLOSED HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>23YOF FELL ON STAIRS CAUSING DX <span class='match'>FRACTURE<\/span> TOE<\/li>\n  <li>FELL TO FLOOR AT HOME <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>4YOM HAD A BBQ GRILL FALL ON LEFT MIDDLE FINGER, <span class='match'>FRACTURE<\/span> OF LEFT MIDDLE FINGER AND NAIL AVULSION<\/li>\n  <li>38YOF STRUCK A TREE WHILE RIDING BIKE SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>34 YOF FELL ON ICY STEPS REINJURING LOW BACK SACRAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>STUBBED TOE ON TABLE AT HOME TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>95 YOF CLOSED HEAD INJURY & <span class='match'>FRACTURE<\/span>D RT. HIP- REPORTS FELL & HIT HEAD ON METAL SHELF WHILE USING WALKER TO TRANSFER TO BED AT HOME. + LAC.*<\/li>\n  <li>6 YR M FELL ON DECORATIVE YARD EQUIPMENT;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>PT FELL OUT OF BED STRUCK FACE ON THE FLOOR AT THE NURSING HOME SUSTAIN ED A FACIAL MANDIBLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>62YOM FELL WHILE CLIMBING INTO TREE STAND AND INJURED LOWER BACK.  LUMB ER VERTEBRAL COMPRESSION <span class='match'>FRACTURE<\/span>*<\/li>\n  <li>59 YO F FELL IN FLOOR AT NURSING HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span>D WRIST 5 YO F FELL OFF SCOOTER<\/li>\n  <li>46YOF WAS PLAYING WITH HER KIDS AND CAUGHT FINGER IN SHIRT WHEN PULLING ON IT, LEFT RING FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>39 YOM REPORTS 3 DAYS AGO HE WAS DOING A BACK FLIP AND HIT HIS RT FOOT ON THE EDGE OF A COUCH. DX 4TH AND 5TH TOE <span class='match'>FRACTURE<\/span>S%<\/li>\n  <li>72 YOM, TRIPPED OVER SHOES,FELL, <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>25 YOM GOT ELBOWED TO NOSE WHEN DOING MARTIAL ARTS NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>SLIPPED OFF PORCH AT HOME.  DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>34YOM C/O LOW BACK PAIN. PT STATES HE WAS INVOLVED IN AN ATV ROLLOVER W RECK. PT WAS THE DRIVER DX: <span class='match'>FRACTURE<\/span>*<\/li>\n  <li>67 YOM, FELL INTO DOOR, <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>17 YOM FELL PLAYING BASKETBALL <span class='match'>FRACTURE<\/span>D LEFT WRIST<\/li>\n  <li>9YOM FELL OFF THE SKATEBOARD AND INJURED RIGHT FOREARM, RIGHT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>45 YOM BIKE WRECK, HURT ARM. DX ULNA <span class='match'>FRACTURE<\/span><\/li>\n  <li>34 YOF PUNCHED A WALL LAST NIGHT WHILE ARGUING WITH HER BF. DX HAND <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>12YOM FELL FROM THE MONKEY BARS LANDING ON L ARM, C/O PAIN, DX <span class='match'>FRACTURE<\/span> TO L RADIUS AND ULNA<\/li>\n  <li>10 Y/O BM WAS PLAYING FOOTBALL AT SCHOOL SUSTAINED A <span class='match'>FRACTURE<\/span> TO LOWER LEG<\/li>\n  <li>16YOF WITH <span class='match'>FRACTURE<\/span>D NOSE DURING CHEERLEADING<\/li>\n  <li>25YOF BANGED SHOULDER ON CABINET AT HOME CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>2 YO F PER MOM PT FELL OUT OF HER CRIB ONTO THE FLOOR LANDING ON RT FOREARM DEFORMITY. DX <span class='match'>FRACTURE<\/span> RT FOREARM<\/li>\n  <li>6 Y/O WM FELL OFF COUNTER HIT FLOOR AND <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>PT WENT TO SIT ON A CHAIR WITH INDEX FINGER UNDER THE CHAIR CHAIR CRUNC HED DOWN ONTO TIP OF FINGER <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>16 YR M PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>5YR M FELL OFF SLIDE; DX DX TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOF WAS RUNNING DOWN THE STEPS AT HOME MISSED TWO STEPS TWISTING RT FOOT;FOOT <span class='match'>FRACTURE<\/span><\/li>\n  <li>15 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>62YOF FELL WHILE JOGGING YESTERDAY RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span>D FINGER ON A GRINDER<\/li>\n  <li>13YOM RIDER OF A BICYCLE AND HIT BY A CAR <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>5 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>53 YOF FELL DOWN STEPS <span class='match'>FRACTURING<\/span> LEFT ANKLE<\/li>\n  <li>76 Y/O FEMALE WAS ON A STEP LADDER CLEANING CABINETS & LOST BALANCE FALLING ON ARM  DX: <span class='match'>FRACTURE<\/span>D RIGHT FOREARM<\/li>\n  <li>34YOM ANGRY AND PUNCHED A DRESSER <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>9YOF FELL OFF THE MONKEY BARS AND <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>77YOF CAUGHT TOE ON CARPET AND FELL ON LEFT KNEE, PAIN ABOVE LEFT KNEE, FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS TALKING ON PHONE AND TRIPPED AND FELL OVER CURB. <span class='match'>FRACTURE<\/span> RADIUS W/ULNA, LEFT, CLOSED. 59 YOF*<\/li>\n  <li>37 YOM INJURED FINGER PLAYING BASKETBALL, JAMMED. DX-RIGHT 4TH DIGIT <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YR F FELL IN AMUSEMENT BOUNCE HOUSE;DX <span class='match'>FRACTURE<\/span> D LOWER ARM<\/li>\n  <li>47YOF C/O WRIST PAIN , STS SHE FELL HIT WRIST ON CABINET LANDING ON KIT CHEN FLOOR @ HOME DX RIGHT RADIUS & ULNA <span class='match'>FRACTURE<\/span>S ~<\/li>\n  <li>75 YOM WAS WALKING AND HIS PANTS GOT CAUGHT ON THE CHAIR AND HE FELL DO WN/FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>71YOF TRIPEPD OVER A BOX AT HOME AND FELL ONTO HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>58 YO F FELL OFF BICYCLE. DX PATELLA <span class='match'>FRACTURE<\/span> WITH EFFUSION<\/li>\n  <li>30YOF WITH <span class='match'>FRACTURE<\/span> TO ANKLE AFTER SLIPPING ON WET DANCE FLOOR AT BAR. HAS THREE SHOTS AND ONE BEER. DX FRACTURE.<\/li>\n  <li>9YR F FELL TO BATHROOM TILE FLOOR;DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT CLOSED LEFT FIFTH FINGER IN DOOR    <span class='match'>FRACTURE<\/span> FINGER  46YOM<\/li>\n  <li>10YOM HURT WRIST DURING FALL FROM SKATEBOARD DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>3YOM PT COMPLAINING OF TRIPPING OVER DOG GETTING TANGLED IN LEASH FRACT URE FEMUR DX <span class='match'>FRACTURE<\/span>#<\/li>\n  <li>9 YR M FELL ON SKATEBOARD;DX <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li>14 YOM PLAYING BASKETBALL, ATTEMPTING TO DEFLECT BASKETBALL AND BALL JA MMED FINGER.  DX: <span class='match'>FRACTURE<\/span> FINGER.<\/li>\n  <li>LOW BACK INJURY FROM SLIDING OFF BED. DX-LEFT HIP STRAIN, LEFT KNEE STRAIN, L4 COMPRESSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YR M FELLON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>5YOF C/O LEG PAIN AFTER FALL FROM TRAMPOLINE, DX TIBIA FIBULA <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT JAMMED RIGHT FIFTH TOE AGAINST A DOOR FRAME AT HOME <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>60YOF <span class='match'>FRACTURE<\/span>D ELBOW FACIAL CONTUSION PUTTING A BLANKET ON HORSE, IT S TARTED KICKING AROUND IN THE STALL *<\/li>\n  <li>73 YOF SLIPPED AND FELL ON FLOOR SUSTAINING LUMBAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>51YOM FELL OFF BIKE WHILE RIDING IN RACE CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YOF <span class='match'>FRACTURE<\/span>D RT. 5TH TOE S/P HITTING TOE ON THE BOTTOM OF A DOOR AT A RESTAURANT.*<\/li>\n  <li>73 YO M, C/O LT SHOULDER PAIN AFTER FALLING OUT OF BED LAST NIGHT, DX C LAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>52 YOF WAS ROLLER SKATING - FELL AND INJURED LOWER ARM. <span class='match'>FRACTURE<\/span>, LEFT LOWER ARM<\/li>\n  <li>TACKLED PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>9 YOF WHILE BATHING WAS BEING PUT IN TUB WHEN SHE FLUNG ARM OUT TO SIDE .  DX: <span class='match'>FRACTURE<\/span> HUMERUS.<\/li>\n  <li>PT WAS PUTTING UP YARD SALE SIGN, TRIPPED AND FELL. <span class='match'>FRACTURE<\/span> NASAL BONE . 67 YOF*<\/li>\n  <li>91 YOF HAD MECHANICAL FALL AT HOME WHILE MOVING FROM THE BED TO TOILET. DX LEFT ANKLE <span class='match'>FRACTURE<\/span>, FALL%<\/li>\n  <li>PT STATES WAS WALKING AND TRIPPED AND FELL ON FLOOR AT NURSING HOME DX: RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL DOWN STEPS AT FRIENDS HOME   <span class='match'>FRACTURE<\/span> DISTAL FIBULA  22YOF<\/li>\n  <li>14 YOF FINGER CAUGHT BETWEEN 2 XYLEPHONES.  DX: <span class='match'>FRACTURE<\/span> FINGER.<\/li>\n  <li>56 YOM FELL DOWN STAIRS AT HOME <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>15YOM <span class='match'>FRACTURE<\/span>D FOREARM, SPRAINED WRIST FELL OFF HIS BIKE ONTO CONCRETE *<\/li>\n  <li>12YOM- PT KICKED @ A METAL POLE  NOW RIGHT FOOT /BIG TOE WITH PAIN. DX RIGHT GREAT TOE <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>72YOM WAS TURKEY HUNTING TRIPPED OVER A WIRE THAT SENT HIM INTO A METAL FENCE INJURED RIBS;RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>PT HAS A KNEE <span class='match'>FRACTURE<\/span> AND TODAY WHILE GETTING INTO THE SHOWER FELL ON THE SAME KNEE- FX KNEE<\/li>\n  <li>4YOF FELL OFF A SWINGSET AND SUSTAINED A FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YOM INJURED ANKLE AND FOOT, INVERTED WHILE ROLLER SKATING. DX-LEFT ANKLE SPRAIN, LEFT FOOT AVULSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOF <span class='match'>FRACTURE<\/span>D RADIU& ULNA INJURED DOING A BACKFLIP IN GYMNASTICS CLASS *<\/li>\n  <li>18 YOM FELL SKATEBOARDING TO CLASS AND FELL <span class='match'>FRACTURING<\/span> HIS RIGHT WRIST<\/li>\n  <li>5 YR F HURT WITH BOWLING BALL;DX FINGER <span class='match'>FRACTURE<\/span>D<\/li>\n  <li>6 YO M PLAYING TUG-OF-WAR LOST HIS BALANCE FALLING AND TWISTING LT THIG H, HEARD A POP. SEVERE PAIN. DX <span class='match'>FRACTURE<\/span> LT THIGH ADMITTED<\/li>\n  <li>1 MO M FELL FROM CARSEAT TO DRIVEWAY;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>16YOM <span class='match'>FRACTURE<\/span>D HAND INJURED PLAYING FOOTBALL<\/li>\n  <li>^33 YOM HELPING FRIEND WITH GRANITE COUNTER TOP, THINKS MOVEMENT OFTRUC K CAUSED COUNTER TOP TO FALL OVER A BIT, SUSTAINED <span class='match'>FRACTURE<\/span>D TOES<\/li>\n  <li>72 YOF SLIPPED ON WET FLOOR AT CASINO AND FELL <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>12 YR M PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D FOOT<\/li>\n  <li>29YOF CLOSED FINGER IN DOOR FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM PLAYING SOCCER AND <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>7YOM FELL OFF SKATEBOARD AT HOME INJURING RT WRIST 2 DAYS AGO C/O SWELLING. DX - DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>SLAMMED FINGER IN DOOR AT HOME FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>2YR F FELL OFF BED;DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>3YOF- PT FELL DOWN ONTO RIGHT FOREARM WHILE GETTING OFF TRAMPOLINE. FELL ONTO THE GROUND. DX- RIGHT RADIUS/ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>7 MO F FELL IN FLOOR AT HOME. DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>13YOM WITH <span class='match'>FRACTURE<\/span>D WRIST IN BASEBALL<\/li>\n  <li>68 YOM USING CIRCULAR SAW, INJURY TO HAND. DX OPEN HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YR F FELL OFF SCOOTER;DX <span class='match'>FRACTURE<\/span>D  FINGER<\/li>\n  <li>29 YOM FELL DOWN STEPS AND TWISTED LEFT FOOT <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>FOOT INJURY FROM RUNNING IN SLIPPERS AND FELL. DX-CALCANIUS <span class='match'>FRACTURE<\/span>, LACERATION RIGHT HEEL<\/li>\n  <li>52YOM FELL TWISTED ANKLE PLAYING GOLF DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>WAS PLAYING HOCKEY, ON SPORT'S FIELD, & RAN HIS SHOULDER INTO THE GLASS AFTER ANOTHER PLAYER COLLIDED WITH HIM.    DX; RT CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6YOM FOREARM <span class='match'>FRACTURE<\/span> WHEN FELL FROM LADDER OF ***<\/li>\n  <li>FELL AGAINST METAL HAND RAIL IN BATHROOM. <span class='match'>FRACTURE<\/span> ONE RIB, CLOSED. 82 YOF*<\/li>\n  <li>18YOM <span class='match'>FRACTURE<\/span>D FOOT JUMPING ON TRAMPOLINE HIT FOOT ON SRPINGS*<\/li>\n  <li>66YOM MOVING GARBAGE CANS ON HIS DECKING AND FELL TO CONCRETE <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>PT WAS AT CHEERLEADING PRACTICE ATTEMPTED BACK FLIP HYPEREXTEND NECK  A ND FELL   <span class='match'>FRACTURE<\/span> CERVICAL SPINE  14YOF<\/li>\n  <li>93 Y/O FEMALE FELL & PASSED OUT ONTO FLOOR AT HOME DX: MUTLIPLE RIB <span class='match'>FRACTURE<\/span>S<\/li>\n  <li>FELL DOWN 4 STAIRS;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>45 YOF FELL INTO SWIMMING POOL AT BORGATA TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>25 YOM FELL PLAYING SOCCER SUSTAINING A <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li>16 YR F CLOSED FINGER IN DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D LOWER AMR<\/li>\n  <li>46YOF WALKING DOWN A FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D LEFT FOOT<\/li>\n  <li>SLIPPED ON STAIRS. DX-<span class='match'>FRACTURE<\/span> L FOOT, METATARSAL #<\/li>\n  <li>55 YOF TRIPPED OVER A CORD AT HOME AND FELL <span class='match'>FRACTURING<\/span> LEFT FOOT AND SPRAINING THE RIGHT FOOT<\/li>\n  <li>21YOF FELL OFF A HORSE AND <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>12YOM FELL FROM SKATEBOARD DX: CLAVICAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOM FELL BACKWARDS WHILE PLAYING FOOTBALL AT SCHOOL AND ANOTHER PLAYER FELL ON PTS ARM;DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>91 YO F PT WAS FOUND ON FLOOR SHE FELL OUT OF HER WHEEL CHAIR IN THE NURSING HOME LANDED ON LT HIP. DX <span class='match'>FRACTURE<\/span> LT HIP ADMIT<\/li>\n  <li>57YOF FELL DOWN A FLIGHT OF STAIRS AT HOME COMPRESSION <span class='match'>FRACTURE<\/span> TO LOWE R BACK<\/li>\n  <li>8 YR F JUMPED OFF TABLE;DX <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>34YOM KICKED A DOOR WITH RIGHT GREAT TOE ACCIDENTLY <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>89YOM HAD A SYNCOPAL EVENT AND FELL FACE FIRST TO THE FLOOR AT HOME NAS AL <span class='match'>FRACTURE<\/span> ADMITTED FOR SYNCOPE<\/li>\n  <li>7 YR M JUMPED OFF COUCH;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>40YOF FELL OFF BIKE LAST NIGHT FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>61YOF WITH <span class='match'>FRACTURE<\/span>D KNEE, FELL IN RESTAURANT ON FLOOR<\/li>\n  <li>93 YO F PT TRIPPED AND FELL ONTO HER GRANITE FIREPLACE LANDING ON HER R T SIDE. HIP NAD RT KNEE PAIN. DX RT HIP <span class='match'>FRACTURE<\/span> ADMITTED<\/li>\n  <li>73YOF FELL OFF THE EDGE OF HER BED AND <span class='match'>FRACTURE<\/span>D RIGHT ANKLE<\/li>\n  <li>4 YO F FELL OUT OF BED AT GRANDMOTHER'S HOUSE. DX RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>74 YOF SLIPPED ON FLOOR OF GROCERY STORE AND FELL SUSTAINING A DISLOCAT ED SHOULDER AND <span class='match'>FRACTURE<\/span>D KNEE<\/li>\n  <li>3 YO F FELL OUT OF BED, HURT ARM. DX ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>80 YOM <span class='match'>FRACTURE<\/span>D A HIP BY FALLING FROM WHEELCHAIR TO CARPETED FLOOR AT HOME.<\/li>\n  <li>13YOF HIT LEFT TOE ON CONCRETE FLOOR WHEN RUNNING AWAY FROM DOG, LEFT GREAT TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>55 Y/O W/M <span class='match'>FRACTURE<\/span>D WRIST AND ABRASION TO LOWER LEG WHEN FELL OFF LADDER WHEN IT COLLAPSED AT HOME.<\/li>\n  <li>PT FELL OFF MONKEY BARS AT SCHOOL, RIGHT WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>38YOM TWISTED RIGHT ANKLE WHILE PLAYING BASKETBALL ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF- PT FELL 2 FT FROM A 2 STORY BEDROOM WINDOW IN MOM ROOM WITH NO SCREEN LANDED ONTO ROCKS NOW FOOT PAIN. DX LEFT FOOT <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>4 YR F JUMPING ON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>100 YOF FELL IN BATHROOM INTO THE TUB LANDED ON LEFT SIDE. DX FALL RIB <span class='match'>FRACTURE<\/span> *<\/li>\n  <li>60YOF GETTING INTO A SWIMMING POOL AND FELL <span class='match'>FRACTURE<\/span>D FOREARM<\/li>\n  <li>63 YOM FELL WHILE JOGGING <span class='match'>FRACTURING<\/span> LEFT SHOULDER<\/li>\n  <li>45 YOM FELL THROUGH CEILING ONTO CONRETE FLOOR OF GARAGE SUSTAINING LUMBAR COMPRESSION <span class='match'>FRACTURE<\/span>, FOOT AND ELBOW CONTUSIONS<\/li>\n  <li>PT FELL AT A LOCAL BAR AND HIT FACE ON THE FLOOR    <span class='match'>FRACTURE<\/span> NASAL BONE S  67YOM<\/li>\n  <li>FELL OFF BUNKBED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>7YR F TOY CAR GOT FLIPPED ONTO PT BY SOME KIDS;DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL FROM SCOOTER C/O ANKLE SWELLING DX   ANKLE <span class='match'>FRACTURE<\/span>***<\/li>\n  <li>7YOF- PT FELL ONTO OUTSTRETCHED HAND/ARM WHILE PLAYING ON A DECK. NOW HAS PAIN TO R ARM. DX- RIGHT DISTAL RADIUS <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>91 YO M FELL ONTO A HARD WOODEN CHAIR AGAINST HIS LT SIDE OF HIS CHEST. PAINFUL CHEST AREA. DX <span class='match'>FRACTURE<\/span> RIBS<\/li>\n  <li>8 Y/O F  F ELL ON TRAMPOLINE <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>16YOM PLAYING FOOTBALL AND INJURED TOE,DEFORMITY;TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS ON SOFTBALL FIELD- WAS HIT TO MOUTH ACCIDENTLLY BY A BAT MOUTH INJURY- DX <span class='match'>FRACTURE<\/span>D TOOTH,CONTUSION TOOTH-LIP ABRASIONS.<\/li>\n  <li>8 Y/O F  FELL OFF SCOOTER <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>4YOM HURT FINGER FELL FROM SCOOTER DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>48 YOM DROPPED A DOOR ON HIS FOOT. DX-TOE <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>13YOM <span class='match'>FRACTURE<\/span>D FOOT INJURED WHEN SOMEONE FELL ON HIS FOOT WHILE PLAYIN G FOOTBALL<\/li>\n  <li>FELL ONTO CARPETED FLOOR TRYING TO MOVE VACUUM CLEANER   <span class='match'>FRACTURE<\/span> FEMUR 77YOF<\/li>\n  <li>93 YO F PT SLIPPED WHILE IN THE BATHTUB HITTING FACE ON EDGE OF TUB DX FACIAL <span class='match'>FRACTURE<\/span>S ADMITTED<\/li>\n  <li>79 YOF SUS <span class='match'>FRACTURE<\/span>D RIB DUE TO A FALL IN THE BATHTUB%<\/li>\n  <li>31YOF STUBBED RIGHT FOOT AGAINST A GLASS TABLE, RIGHT BIG TOE <span class='match'>FRACTURE<\/span> AND FOOT CONTUSION<\/li>\n  <li>FELL OUT OF TREEHOUSE TO GROUND;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>5YOF WAS CLIMBING OVER A CHILD GATE, & FELL ONTO HER OUTSTRETCHED LT HAND/ ARM.   DX; SUPRACONDYLAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>80 YO F PT TRIPPED AT HOME FALLING ONTO THE FLOOR HURTING HER RT WRIST DEFORMITY, DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>11YOM- YESTERDAY PT WAS PLAYING BASKETBALL FINGER WAS JAMMED BY BALL HAS SWELLING TO L 5TH FINGER. DX- LEFT 5TH FINGER <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>15YOF WAS PLAYING RUGBY, & GOT LT 2ND FINGER BENT BACK DX; LT 2ND FINGER PHALANX <span class='match'>FRACTURE<\/span><\/li>\n  <li>7 YO M, C/O RT HAND PAIN 1 DAY S/P LID OF DESK FELL ONTO HAND AT SCHOOL , SWELLING, TENDERNESS, DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS INVOLVED IN BICYCLE VS AUTOMOBILE ACCIDENT, WAS EJECTED OVER HANDLEBARS, C/O BACK DISCOMFORT. DX-COMPRESSION <span class='match'>FRACTURE<\/span>-T12<\/li>\n  <li>3YOM WAS RUNNING AT HOME SLIPPED ON TILE FLOOR AND FELL <span class='match'>FRACTURE<\/span>D RIGHT LOWER ARM<\/li>\n  <li>22 MOF FELL FROM STEP STOOL.  DX: <span class='match'>FRACTURE<\/span> HUMERUS.<\/li>\n  <li>8 YR M FELL PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>27YOF RIDING ATV, RAN INTO A TREE AND THE ATV TURNED OVER ON THE PT. DX.   <span class='match'>FRACTURE<\/span>D SHOULDER.<\/li>\n  <li>11YOM PLAYING DODGE BALL AT SCHOO, TWO DAYS AGO AND <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>FELL OFF OF A LADDER HURT WRIST   <span class='match'>FRACTURE<\/span> DISTAL RADIUS  17YOM<\/li>\n  <li>8 YO M FELL OFF TRAMPOLINE AT HOME. DX RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YR M FELL OFF PLAYGROUND EQUIPMENT;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>11 YR F FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>11YOF WITIH <span class='match'>FRACTURE<\/span>D FINGER FROM SOCCER<\/li>\n  <li>19YO WHITE MALE AT PARK PLAYING BASKETBALL, JUMPED UP LANDED WRG ROLLED R ANKLE DX R ANKLE <span class='match'>FRACTURE<\/span>, R ANKLE DISLOCATION<\/li>\n  <li>12YOM WAS RIDING HIS SCOOTER AND FELL OFF HURTING HIS L LEG DX <span class='match'>FRACTURE<\/span> TO L TIBIA<\/li>\n  <li>19YOM FELL OFF BIKE MANDIBLE <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span> THUMB - 10 YO MALE IS A CATCHER AND HAS BEEN PLAYING ORGANIZED BASEBALL ALL DAY - NOW STATES LEFT THUMB IS VERY PAINFUL<\/li>\n  <li>12 YOM WAS ROLLERSKATING FELL AND TWISTED HIS LOWER LEG TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL OFF STEP STOOL;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>4YOM FELL DOWN A FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>5YOM PLAYING FOOTBALL AT SCHOOL AND <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>34YOF FELL SNOWBOARDING, INJURED RT WRIST   DX: RT RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>46YOM TRYING TO CARRY A BUNCH OF BAGS DOWN HIS STEPS,SLIPPED INJURED UPPER ARM AND RIBS;RIB CONTUSION AND HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>21YOF STUBBED RIGHT 4TH TOE ON A PLASTIC BIN THIS AM C/O TOE PAIN. DX: PHALANX <span class='match'>FRACTURE<\/span> OF TOE<\/li>\n  <li>13 YOM PLAYING SOCCER TWISTED RIGHT FOOT SUSTAINING A <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM <span class='match'>FRACTURE<\/span>D CLAVICLE FLIPPED OFF HIS MOTOCROSS BIKE ON THE TRACK WA S WEARING A HELMET<\/li>\n  <li>67YOF INJURED RIGHT MIDDLE FINGER WHILE BOWLING FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YO F FELL OFF SLIDE LADDER. DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>57 YOM INJURED TOE HITTING INTO COUCH 4 DAYS AGO. DX-LEFT 5TH TOE PROXIMAL PHALYNX <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM PLAYING SOCCER AND <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>10 YO M PER MOTHER PT WAS PLAYING FOOTBALL WHEN HE WAS TACKLED FALLING ONTO HIS RT WRIST,+DEFORMITY. DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>86 Y/O FEMALE FELL YESTERDAY & INJURED WRIST ON FLOOR AT *** VILLAGE  D X: <span class='match'>FRACTURE<\/span>D RIGHT WRIST<\/li>\n  <li>PT FELL TO THE FLOOR AT THE NURSING HOME AND <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>42YO FEMALE WITH RIB <span class='match'>FRACTURE<\/span> FROM FALL DOWN STEPS<\/li>\n  <li>6YOF FELL FROM MONKEY BARS AND INJURED LEFT ELBOW, LEFT ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>10YOM WITH <span class='match'>FRACTURE<\/span>D WRIST WHILE SNOWBOARDING<\/li>\n  <li>PT LOST BALANCE AND FELL ON FLOOR AT *** DX: RIGHT PELVIC <span class='match'>FRACTURE<\/span> DX: RIGHT PELVIC FRACTURE<\/li>\n  <li>14 YOM INJURED RIGHT HAND PLAYING BASKETBALL.  DX: <span class='match'>FRACTURE<\/span> HAND.<\/li>\n  <li>5YOM WITH LOWER LEG PAIN AFTER FALL AT DAYCARE FROM PLAYGROUND POLE DXT IBIA <span class='match'>FRACTURE<\/span> **<\/li>\n  <li>CLOSED FINGER IN DOOR.   <span class='match'>FRACTURE<\/span> PHALANX      56YOF<\/li>\n  <li>24 YO M PT WAS GOING SLOW DOWN HILL ON A ATV WHEN HE FELL OFF LANDING ON LT ARM. PAINFUL. DX <span class='match'>FRACTURE<\/span> LT FOREARM<\/li>\n  <li>FELL OFF COUCH, AT HOME, & JAMMED THUMB INTO FLOOR DX; SALTER HARRIS II <span class='match'>FRACTURE<\/span> OF RT THUMB<\/li>\n  <li>73 YO F FELL AT MAILBOX, LANDED ON HIP AT HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YO F BIKE WRECK, HURT ARM. DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YR F FELL OFF SLIDE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>14 YOM JUMPED A FENCE AND HURT LEFT SHOULDER <span class='match'>FRACTURE<\/span> HUMERAL HEAD<\/li>\n  <li>46YOM STUBBED LEFT FIFTH TOE ON THE DINING ROOM TABLE LEG <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>26 YOM INJURED HAND FROM PLAYING VOLLEYBALL, HIT CONCRETE FLOOR. DX-BOXER <span class='match'>FRACTURE<\/span> 5TH METACARPAL RIGHT HAND<\/li>\n  <li>13 YO M PLAYING FOOTBALL WHEN HE WAS TACKLED AND FELL TO THE GROUND ON OUTSTRETCHED RT ARM. DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>87YOF FELL TO THE FLOOR ONTO HIP PELVIC <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM SUS <span class='match'>FRACTURE<\/span>D WRIST WHEN FELL FORWARD WHILE PLAYING FOOTBALL%<\/li>\n  <li>88YOF FELL TO THE FLOOR AT HOME LANDED ONTO SHOULDER AND <span class='match'>FRACTURE<\/span>D HUME RUS<\/li>\n  <li>69YOF RIDING BICYCLE AND FELL OFF ONTO RIGHT KNEE AND <span class='match'>FRACTURE<\/span>D FEMUR<\/li>\n  <li>4YOM; PT FELL FROM MOMS BED, LANDED ON SHOULDER.  D:  FALL / <span class='match'>FRACTURE<\/span> C LAVICLE<\/li>\n  <li>56 YOM C/O INVOLVED IN A MOTOR VEHICLE ACCIDENT THE PT WAS RIDING BICYC LE WITH INJURY TO FACE DX- FACE <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM FELL OFF BIKE IN THE STREET AND INJURED LEFT KNEE, LEFT KNEE <span class='match'>FRACTURE<\/span><\/li>\n  <li>5YOM FELL OFF *** & INJURED HIS RT FOREARM, +SLIGHT DEFORMITY DX - ACUT E RT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>17 YOM PLAYING FOOTBALL GAME <span class='match'>FRACTURE<\/span>D RIGHT FOOT<\/li>\n  <li>*58YOF,FELL AND BROKE HIP IN SLIP AND FALL GOING DOWN STAIRS IN *** ISL AND,DX:<span class='match'>FRACTURE<\/span> HIP<\/li>\n  <li>PELVIC FX.  68YOF FELL TO FLOOR AT NURSING HOME AND <span class='match'>FRACTURE<\/span>D PELVIC.<\/li>\n  <li>36 YOM DROPPED A DUMBBELL ON FOOT. DX GREAT TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>15YOM FELL TO RIGHT SHOULDER WHILE SKATING AT RINK SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL ON MONKEY BARS AT HOME. <span class='match'>FRACTURE<\/span> RADIUS. 6 YOF*<\/li>\n  <li>50YOM WAS CLEANING UP LEAVES UNDER DECK AT HOME & HIT CHEST ON DECK MULTIPLE RIB <span class='match'>FRACTURE<\/span>S<\/li>\n  <li>PT FELL DOWN THE SLIDE AT SCHOOL AND INJURED ANKLE DX: <span class='match'>FRACTURE<\/span>D RIGHT ANKLE<\/li>\n  <li>26 YOM FELL OUT OF SHOWER AND INJURED HAND DX  <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YOF FELL OFF BIKE YESTERDAY AND INJURED RIGHT THUMB <span class='match'>FRACTURE<\/span> THUMB<\/li>\n  <li>93YOF LIVES AT *** ACCIDENTLY FELL TODAY STRIKING THE FLOOR, INJURED LT HIP;HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YOM SUSTAINED RT 5TH DIGIT INJURY WHILE AT SCHOOL DURING A TETHER BA LL EXERCISE. DX- FINGER <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>59YOF <span class='match'>FRACTURE<\/span>D LEFT FIFTH TOE STRUCK A PIECE OF FURNITURE<\/li>\n  <li>13YOF <span class='match'>FRACTURE<\/span>D RADIUS FELL WHILE ***<\/li>\n  <li>53 YOM WAS SKIING YESTERDAY AND FELL BACKWARDS SUSTAINING A <span class='match'>FRACTURE<\/span>D RIB<\/li>\n  <li>9YO F TRIPPED FELL DOWN STEPS, HURT ANKLE. DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>82YOF FELL TO FLOOR CAUSING DX <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>PT WITIH <span class='match'>FRACTURE<\/span>D ANKLE FROM FALL DOWN STEPS<\/li>\n  <li>14YOM WITH <span class='match'>FRACTURE<\/span> TO UPPER ARM AFTER WRECKING DIRTBIKE AFTER GOING OV ER A JUMP. WEARING HELMET.<\/li>\n  <li>8 YO M PT WAS AT GRANDMAS HOUSE SPINNING ON A SWIVEL DESK CHAIR AND FEL L OFF LANDING ON LT WRIST. DX <span class='match'>FRACTURE<\/span> LT WRIST<\/li>\n  <li>10YOM WITH <span class='match'>FRACTURE<\/span>D WRIST, FELL OFF MONKEY BARS<\/li>\n  <li>16YOM SLIPPED WHILE STEPPING OUT OF THE SHOWER AND HIT R SIDE OF FACE O N TILE FLOOR, PT IN A LOT OF PAIN, DX <span class='match'>FRACTURE<\/span> TO JAW<\/li>\n  <li>4 YOF SUS <span class='match'>FRACTURE<\/span>D TOE AFTER HITTING IT INTO THE WALL%<\/li>\n  <li>11YOM TIBIA/ FIBULA <span class='match'>FRACTURE<\/span> AFTER FALL IN FOOTBALL<\/li>\n  <li>9YOM WAS SKATEBOARDING AND FELL ONTO L WRIST, C/O PAIN, DX <span class='match'>FRACTURE<\/span> TO L RADIUS<\/li>\n  <li>UNHELMETED PT RIDING MOTOR SCOOTER WHEN HE WAS GOING TOO FAST DOWN A HI LL & WAS GRAZED BY A CAR @ UNK SPEED.DX:KNEE <span class='match'>FRACTURE<\/span>,KNEE SPRAIN,CONTU<\/li>\n  <li>86 YOF FELL TO FLOOR AT HOME<span class='match'>FRACTURE<\/span> HIP<\/li>\n  <li>60YOM WITH <span class='match'>FRACTURE<\/span>D RIB PLAYING BASKETBALL<\/li>\n  <li>23MOF <span class='match'>FRACTURE<\/span>D HUMERUS HIT BY A SWING*<\/li>\n  <li>10YR F FELL IN PE ACTIVITY;DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>50 YOF SUS A FALL TRYING TO GET OUT OF BED, NOW C/O RT LEG PAIN. DX RT FEMORAL NECK <span class='match'>FRACTURE<\/span>, FALL%<\/li>\n  <li>34 YOF REPORTS INJURING RT HAND WHEN SHE HIT A WALL AFTER HER DOG HAD DIED LAST NIGHT. DX HAND <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>5 YR M FELL ON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>53YO FEMALE WITH <span class='match'>FRACTURE<\/span>D ANKLE FELL DOWN A STEP<\/li>\n  <li>2YOM FOREARM <span class='match'>FRACTURE<\/span> AFTER FALL FROM BIKE<\/li>\n  <li>69YOF FELL OFF HER PORCH ONTO GRASS SUSTAINED A HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D ANKLE FROM FALL ONTO FLOOR<\/li>\n  <li>A 22 YOM WAS HIT IN THE FACE WITH A BEER BOTTLE. DX: NASAL <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>2 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>49 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY FALLING DOWN STAIRS.<\/li>\n  <li>11YR M PLAYING SOCCER; HIT FINGER ON ANOTHER PLAYER'S SHIN GUARD;DX F INGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL OFF A THREE WHEELED BIKE LANDING ONTO RIGHT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>3 YR F GOT HAND CAUGHT IN CLOSET DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>7 YOF, FELL OFF OF SWING, <span class='match'>FRACTURE<\/span> ARM<\/li>\n  <li>34 YO F FELL OFF PORCH, HURT WRIST. DX WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>13MOF WAS SLIDING DOWN A SLIDE WHILE SITTING ON SISTER'S LAP WHEN LEG G OT CAUGHT; TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>66YO WHITE MALE AT HOME FELL 10 FEET FROM LADDER OPEN RIGHT PROXIMAL ULNA/OLECRANON <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOM JUMPING ON A TRAMPOLINE AT HOME AND FELL OFF <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>12 Y/O M  FELL PLAYING DODGEBALL <span class='match'>FRACTURE<\/span> RADIUS<\/li>\n  <li><span class='match'>FRACTURE<\/span>D RIB 31 YO M FRACTURED RIB WHEN FELL ON BED<\/li>\n  <li>WRESTLING AND FELL TO FLOOR;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>38YOM SUSTAINED A HAND <span class='match'>FRACTURE<\/span> KICKED IN THE RIGHT HAND DURING KARATE PRACTICE<\/li>\n  <li>41YOF SLAMMED FINGER IN DRESSER DRAWER DX <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>4MOF FELL DOWN STAIRS WHILE BEING CARRIED, PT LANDED ON L LEG, LEG BRUI SED, DX <span class='match'>FRACTURE<\/span> TO L FIBULA AND TIBULA<\/li>\n  <li>PT WALKING DOWN A FLIGHT OF STAIRS WHILE WEARING A PAIR OF HIGH HEELED SHOES AND FELL <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>*30 YOM, PT STATES HE TWISTED HIS FOOT WHEN GOING DOWN STAIRS. DX; RT A NKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>58YOM <span class='match'>FRACTURE<\/span>D FINGER INJURED WHEN CATCHING A THROWN FOOTBALL WHEN PLA YING WITH HIS SON*<\/li>\n  <li>55YOF HAD SOMEONE PULL LEAF BLOWER OUT OF HAND & INJ FINGER FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>41YOM FELL DOWN A FLIGHT OF CONCRETE STAIRS AND <span class='match'>FRACTURE<\/span>D LEFT GREAT T OE<\/li>\n  <li>33 YOF WAS VACUUMING UNDER HER COUCH AND HIT HER TOE AGAINST LEG OF COU CH AND SUSTAINED A TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS @ THE MALL, FELL OFF A 3 FT SLIDE FELL ONTO OUTSTRETCHED ARM. DX LEFT RADIAL ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>PT FELL OFF A 6 FOOT FENCE INJURYING RIGHT ANKLE, <span class='match'>FRACTURE<\/span> OF RIGHT ANKLE<\/li>\n  <li>30YOF TRIPPED ON STAIRS AND TWISTED RIGHT ANKLE ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>63 YOM CUTTING TREE DOWN, FELL ROLLED DOWN HILL, HURT . DX H IP <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YR M FELL OFF SWING;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>82YOF PT SLIPPED ON BATHROOM FLOOR GETTING OFF TOILET INJURING R. LET. DX: CLOSED TIBIA/FIBULA <span class='match'>FRACTURE<\/span>. $<\/li>\n  <li>PT FELL IN THE BATHROOM AND HIT HER SIDE ON THE SINK AFTER GETTING DIZZY, DX: CONTUSION TO RIB, ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>70YOM FELL FROM TOP OF 5FT LADDER SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YOM SITTING ON A KITCHEN STOOL WHEN IT TIPPED OVER PINNING L FOOT BET WEEN RUNG OF STOOL AND FLOOR DX CLOSED <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>24YOM TRIMMING A TREE LIMB AND IT FELL ONTO CHEST RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>86 YOF <span class='match'>FRACTURE<\/span>D NASAL BONES & FRACTURED LT. KNEE S/P FALLING FORWARD O NTO FLOOR.*<\/li>\n  <li>46 YOF WEARING HIGH HEELED SHOES, CAUGHT ON CARPETING AND FELL SUSTAINI NG A <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>7 Y/O WF FELL OFF BICYCLE <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>PT FELL WHILE PLAYING TENNIS AND LANDED ONTO LEFT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>HAND CAUGHT IN HANDRAIL.  DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>86 YOF TRIPPED ON STEPS, FELL INTO WALL AT HOME. DX FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF FELL OFF ROPE SWING DX <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>24YOF UNRESTRAIONED FS PASSENGER IN AN MVC SWERVED TO AVOID A BUCKET IN THE STREET AND CRASHED OPEN <span class='match'>FRACTURE<\/span> TO WRIST<\/li>\n  <li>11 YOF INJURED RT LITTLE FINGER WHEN SHE WAS PLAYING BASKETBALL AT HER FRIEND'S HOUSE THIS EVENING. DX FINGER <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>FL96 Y/O W/FM <span class='match'>FRACTURE<\/span>D LOWER LEG WHEN GOT UP TO ANSWER PHONE AND FELL ONTO THE FLOOR BETWEEN BED AND THE TABLE AT ASSISTED LIVING FACILITY.<\/li>\n  <li>73YOM C/O ARM PAIN. STS HIT AN ALUMINUM SINK. ADMITS TO DRINKING TODAY. ETOH 256. DX UNLA <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM PLAYING SOCCER COLLIDED HEAD TO HEAD WITH ANOTHER PLAYER SUSTAINING A CONCUSSION AND FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>12YO BLACK MALE FELL IN FOOTBALL PRACTICE AT SCHOOL,TWISTED L HAND DX RADIUS & ULNA <span class='match'>FRACTURE<\/span><\/li>\n  <li>33YOM PT COMPLAINING OF RIB PAIN FELL ON STEPS AT HOME <span class='match'>FRACTURE<\/span>D RIB DX FRACTURE#<\/li>\n  <li>14YOF TRIPPED OVER A STEP AND FELL ON LEFT SHOULDER, LEFT CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6YOF HURT WRIST FELL FROM CHAIR DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YOF WAS JUMPING DOWN STEPS AND FELL SUSTAINING A <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>82 YOF FELL OUT OF BED THIS MORNING AT NURSING HOME SUSTAINING <span class='match'>FRACTURE<\/span> D HIP<\/li>\n  <li>23YOM INJURED FINGER WHILE PLAYING FOOTBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>88YOM FELL BACKWARD WHILE TRYING TO OPEN DOOR HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>32YOM FELL OFF AN ATV ON LEFT ARM, LEFT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>79 YO M PT WAS LIFTING A PROPANE TANK AND FELT SUDDEN PAIN IN HIS UPPER BACK. DX <span class='match'>FRACTURE<\/span> THORACIC SPINE<\/li>\n  <li>89YOF <span class='match'>FRACTURE<\/span>D TOE WITH LACERATION WINDOW BROKE AT NURSING HOME FELL O N PTS FOOT*<\/li>\n  <li>13 YR M FELL OFF TOP BLEACHER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>14  Y/O M    FELL ON TRAMPOLINE <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>10YR M FELL OFF SCOOTER; DX TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>72YOM AT HOME IN THE GARAGE STANDING ON A WOODEN SHELVE & IT BROKE CAUS ED PT TO FALL DX LIP LACERATION, RIB <span class='match'>FRACTURE<\/span>, SKIN TEAR, MECHANICAL FA<\/li>\n  <li>13YOM GOT FINGER HIT PLAYING BASKETBALL DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>44 YR OLD MALE STUMBLED GETTING OUT OF BED AND STRUCK SHOULDER ON WALL  AT HOME  DX: <span class='match'>FRACTURE<\/span>D SHOULDER<\/li>\n  <li>FELL WHILE OUT WALKING AND HURT HAND <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>35 YO F HIT TREE WHILE SLEDDING. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOM WITH <span class='match'>FRACTURE<\/span>D ELBOW IN FALL FROM SCOOTER<\/li>\n  <li>49 YOM PRESENT TO ER WITH INJURY TO WRIST AFTER HE FELL FROM BICYCLE - DX- <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>7 YOM FELL FROM PORCH AT HOME <span class='match'>FRACTURING<\/span> HIS LEFT WRIST<\/li>\n  <li>11YOM C/O FINGER PAIN PLAYING FOOTBALL, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>33YOF WITH WRIST <span class='match'>FRACTURE<\/span> FROM FALL WHILE ICE SKATING<\/li>\n  <li>29 YOM WAS SEXIN HIS GIRL AND SHE FELL ON HIS ARM AND IT HIT THE HEATER AND SHE IS NOT SMALL  -  <span class='match'>FRACTURE<\/span> ELBOW<\/li>\n  <li>6 Y/O F  FELL OFF MONKEY BARS <span class='match'>FRACTURE<\/span> RADIUS<\/li>\n  <li>5YOM GOT LEFT THIRD FINGER CAUGHT IN THE WHEEL OF A SHOPPING CART AT ** * <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>13 YO F INJURY TO HAND SKIING. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>65 YOF INJURED UPPER ARM, FELL FROM HORSE. DX-ACUTE LEFT HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>41YOF <span class='match'>FRACTURE<\/span>D FIBULA ROLLED ANKLE WHEN PLAYING VOLLEYBALL<\/li>\n  <li>12YOM AT SCHOOL PLAYING FOOTBALL - HURT L HAND DX BUCKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT GOT UP IN THE MIDDLE OF THE NIGHT AND TRIPPED OVER A DOG TO THE FLOO R AND <span class='match'>FRACTURE<\/span>D RIGHT LOWER ARM<\/li>\n  <li>39YOM AT THE HOSPITAL AND RECEIVED NEWS ABOUT A FAMILY DEATH AND PUNCHE D A WALL <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li><span class='match'>FRACTURE<\/span> FOOT - 48 YO FEMALE STATES SHE TWISTED HER FOOT COMING OF THE LAST STEP OF A SET OF STAIRS AT HOME EARLIER TODAY<\/li>\n  <li>5 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>32YOM <span class='match'>FRACTURE<\/span>D HAND PT HAD A SEIZURE HAND HIT THE BEDPOST CAUSING INJU RY*<\/li>\n  <li>5 YOF INJURED WRIST, FALL FROM SKATEBOARD. DX-FALL, RIGHT WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>11YOF WITH <span class='match'>FRACTURE<\/span>D WRIST SNOWBOARDING<\/li>\n  <li>14YOM GOT FINGER BENT BACK PLAYING FOOTBALL DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL ON OUTSTRETCHED ARM WHILE ***, NOW W/PAIN, SWELLING AND DEFORMI TY TO WRIST; DISTAL RADIAL <span class='match'>FRACTURE<\/span>, ULNAR STYLOID FRACTURE<\/li>\n  <li>WAS MAD AT CHILD AND PUNCHED A WALL AT HOME, HAS HAND <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>75YOM FELL TO THE FLOOR AT THE NURSING HOME AND <span class='match'>FRACTURE<\/span>D RIGHT HIP<\/li>\n  <li>46YO WHITE FEMALE FELL IN A STORE,BATHROOM DOOR CAUGHT ON FLIP FLOP HEMATOMA R FOREHEAD, DX L TIBIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>38 YO F WEARING FLIP FLOPS, SLIPPED ON FROSTY GROUND. DX ANKLE <span class='match'>FRACTURE<\/span> S<\/li>\n  <li>13YOM RIDER OF A *** BIKE ON A TRACK AND FELL OFF <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>49 YOF FELL TO MARBLE FLOOR IN CASINO HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>47 YO F PT WAS OUTSIDE WALKING TO LOSE WEIGHT WHEN SHE HAD SEVERE RT HE EL PAIN, INCREASING PAIN. DX <span class='match'>FRACTURE<\/span> RT HEEL SPUR<\/li>\n  <li>45 YOM TRIPPED AND FELL DOWN STAIRS AND INJURED TOE DX  <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li><span class='match'>FRACTURE<\/span> RT.ELBOW.PT.REFERS TRIP FALLING DOWN ON FLOOR AT HOME.<\/li>\n  <li>51 YO M, C/O RT 4TH FINGER PAIN, PT WAS CARRYING A LUGGAGE DOWN STAIRS WHEN HE FELL AND JAMMED HIS FINGER, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>68 YOF HAD A MECHANICAL FALL WITH INJURY UPPER LEG WHEN SHE HIT THE FLO OR AND WAS UNABLE TO GET UP- DX- <span class='match'>FRACTURE<\/span> RT UPPER LEG<\/li>\n  <li>81 YOF FELL ON FLOOR OF NURSING HOME SUSTAINING A LUMBAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>92YOF DAUGHTER HEARD MOTHER FALL ONTO THE FLOOR IN BEDROOM INJURED LT FEMUR ABOVE KNEE;UPPER LEG <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT BECAME DIZZY , FELL AND HIT HARDWOOD FLOOR   <span class='match'>FRACTURE<\/span> LEFT ANKLE  72 YOM<\/li>\n  <li>25 YOM PLAYING *** *** COLLIDED WITH ANOTHER PLAYER TWISTINGHIS RI GHT ANKLE, DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>87YOF FELL OUT OF BED TO FLOOR AT NURSING HOME LUMBAR SPINE COMPRESSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>2YOF <span class='match'>FRACTURE<\/span>D TIB. FELL ON TRAMPOLINE AT HOME<\/li>\n  <li>6 YOF SUS <span class='match'>FRACTURE<\/span>D WRIST DUE TO FALL OFF OF MONKEY BARS%<\/li>\n  <li>6 Y/O W/M <span class='match'>FRACTURE<\/span>D LOWER ARM WHEN CLIMBED ON MATTRESS THAT WAS LEAN- ING AGAINST WALL AND FELL ON CERAMIC TILE FLOOR AT HOME.<\/li>\n  <li>12YOM FELL IN A *** AT SCHOOL, PT C/O L ELBOW PAIN, DX <span class='match'>FRACTURE<\/span> TO L HU MERUS<\/li>\n  <li>24 YO M RUNNING WIRES THRU SHELVES OF ENTERTAINMENT CENTER, GIRLFRIEND SLIPPED AND DROPPED ENTERTAINMENT CENTER ON HAND. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>23 YO M PT WAS RIDING HIS BICYCLE AND HIT A METAL POLE WITH HIS HAND, SEVERE PAIN. DX <span class='match'>FRACTURE<\/span> RT HAND<\/li>\n  <li>11YOM FELL WHILE PLAYING BASKETBALL DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>79 Y/O F  TRIP/FALL TO FLOOR TRIP OVER CARPET <span class='match'>FRACTURE<\/span> HUMERUS,  LS  STRAIN<\/li>\n  <li>57YOF GETTING OUT OF BED AND FELL ONTO BUTTOCKS COMPRESSION <span class='match'>FRACTURE<\/span> TO LOWER BACK<\/li>\n  <li>12 YOM FELL PLAYING FOOTBALL.  DX: <span class='match'>FRACTURE<\/span> RADIUS.<\/li>\n  <li>76 Y/O F FELL OFF CHAIR TO FLOOR LS COMP <span class='match'>FRACTURE<\/span><\/li>\n  <li>10YOM FELL OFF OF BLEACHERS AND HAD IMMEDIATE PAIN AND DEFORMITY TO L FOREARM, DX <span class='match'>FRACTURE<\/span> TO  TO L LOWER ARM<\/li>\n  <li>16 Y/O MALE FELL OFF BICYCLE & INJURED HAND ON STREET DX: <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>13 Y/O M  FELL OFF SKATEBOARD <span class='match'>FRACTURE<\/span> CLAVICLE<\/li>\n  <li>88 YOF DX: HIP <span class='match'>FRACTURE<\/span>, CLSD. PATIENT FELL WHILE GETTING OUT OF A BOOT H @ RESTAURANT, 6\" STEP DOWN FROM BOOTH*<\/li>\n  <li>14 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>63YOF TRIPPED OVER CARPET TWISTED ANKLE DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 MO F FELL FROM 4 FT COUNTER AT HOME;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>SLAMMED FINGER IN DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>*17 YOM,PT WAS RUNNING & KICKED WOODEN DOOR W/ LEFT 5TH TOE. DX; LT 5TH TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YOM COUSIN PUSHED CART TOWARDS HIM  HITTING HIS LEFT FOREARM ONTO HAN DLEBAR OF SHOPPING CART.  DX: <span class='match'>FRACTURE<\/span> RADIUS.<\/li>\n  <li>9 YR M FELL IN AMUSEMENT BOUNCE HOUSE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>*14 YOM, PT DROPPED 35 LB WT ON HIS FINGER. DX; LEFT 3RD DIGIT <span class='match'>FRACTURE<\/span><\/li>\n  <li>TRIPPED OVER A *** WHILE DOING YARD WORK. <span class='match'>FRACTURE<\/span> NASAL BONES,CLOSED. 80 YOM*<\/li>\n  <li>FELL OFF LADDER;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>45 YOM FELL INTO COFFEE TABLE <span class='match'>FRACTURE<\/span> RIB<\/li>\n  <li>59YOF TRIPPED ON A BOX AS SHE WAS WALKING DOWN THE STEPS OF HER TRAILER <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>23 YOM INJURED HAND PUNCHING WALL. DX-RIGHT HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF FELL OFF HER SCOOTER AND SUSTAINED A LOWER ARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>HIT HAND ON DRESSER HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>24  Y/O M  PUNCHED WALL <span class='match'>FRACTURE<\/span> HAND<\/li>\n  <li>13YOM JAMMED RIGHT MIDDLE FINGER WHILE PLAYING BASKETBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>77YOF PT COMPLAINING OF FALLING AT HOME FROM BATHTUB INJURED RADIUS, RA DIUS <span class='match'>FRACTURE<\/span> DX RADIUS FRACTURE#<\/li>\n  <li>12YOM COLLIDED WITH ANOTHER PLAYER WHILE PLAYING FOOTBALL, FACIAL TRAUMA, NASAL <span class='match'>FRACTURE<\/span>, AND ACUTE CLOSED HEAD INJURY<\/li>\n  <li>14MOM SHUT HIS HAND IN CABINET DOOR, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>42 YOF INJURED HAND FROM TURING WRENCH AND FELT POP. DX-RIGHT HAND 4TH METACARPAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>12YOF HURT WRIST FELL OFF FURNITURE DOLLY DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>33 YOF W / RT 11TH RIB <span class='match'>FRACTURE<\/span> REPORTS FELL GOING UP THE STEPS 2 DAYS AGO & HURT SITE. +DIFFICULTY BREATHING.%<\/li>\n  <li>23YOM PLAYING VOLLEYBALL HAD FINGER BENT BACK DX <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>31 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY TWISTING IT ON STEPS AT HOME.<\/li>\n  <li>5YOF DOING GYMNASTICS <span class='match'>FRACTURE<\/span>D ELBOW WHILE TUMBLING<\/li>\n  <li>15 YOM FELL OFF BIKE AND HIT FACE <span class='match'>FRACTURE<\/span> TOOTH<\/li>\n  <li>21YOF SUSTAINED FOOT <span class='match'>FRACTURE<\/span> WHEN ACCIDENTALLY FELL DOWN THE STAIRS@<\/li>\n  <li>47YOF FELL GETTING OUT OF THE SHOWER ONTO OUTSTRETCHED RIGHT LOWER ARM <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>FELL TO TILE FLOOR;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>30YOM FELL DOWN A  FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>76YOM NASAL <span class='match'>FRACTURE<\/span> TRYING TO PULL A NAIL OUT OVERHEAD WITH A HAMMER H IT SELF IN THE FACE WITH THE HAMMER<\/li>\n  <li>9YOM FELL WHILE RIDING SKATEBOARD AND LANDED IN STREET ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>71YOF TRYING TO GET DOG COLLAR ON THE DOG AND THE DOG TOOK OFF- FINGER CAUGHT <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>18 Y/O FEMALE HIT IN NOSE WITH BASKETBALL YESTERDAY DX: NASAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>4YOF FELL AGAINST A TABLE AND SUSTAINED A CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT PLAYING SOFTBALL JUMPED OVER A FENCE TO GET THE BALL AND <span class='match'>FRACTURE<\/span>D R IGHT ANKLE<\/li>\n  <li>10YOM FELL OFF A SLIDING BOARD AND SUSTAINED A WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>62 YO F PT TRIPPED ON THE STAIRS HITTING RT 2ND TOE, HEARD A SNAP DX <span class='match'>FRACTURE<\/span> RT 2ND TOE<\/li>\n  <li>34 YOM FELL DOWN STAIRS YESTERDAY <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>18 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY FALLING FROM A BUNK BED TO THE FLOOR AT HO ME.<\/li>\n  <li>PT WITH ANKLE <span class='match'>FRACTURE<\/span> FROM VOLLEYBALL<\/li>\n  <li>14YOM WAS PLAYING INDOOR SOCCER,DOVE FOR BALL,STRUCK SHOULDER; SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span> RT.HIP.92YOF.PT.WAS BOUGHT TO THE ER,DUE TO FALL FROM BED.<\/li>\n  <li>7 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>10YOF FOREARM <span class='match'>FRACTURE<\/span> WHEN FELL OFF BIKE FOUND IN STREET WAS WEARING H ELMET<\/li>\n  <li>14YOM WAS HIT IN NOSE WITH HELMET WHILE PLAYING LACROSSE NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YR M PLAYING VOLLEYBALL;DX <span class='match'>FRACTURE<\/span>D FOOT<\/li>\n  <li>12 YOF <span class='match'>FRACTURE<\/span> TO RIGHT THIRD FINGER S/P FELL AFTER HER BROTHER WAS RI DING A BICYCLE TOO CLOSE TO HER$<\/li>\n  <li>47 YOM SUSTAINED A LOWER LEG <span class='match'>FRACTURE<\/span> WHILE MOVING A DOGHOUSE<\/li>\n  <li>6 YR M FELL 4FT FROM PORCH;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>81YOF GETTING ITEMS FROM HER MAILBOX AND LOST BALANCE AND FELL TO HER D RIVEWAY <span class='match'>FRACTURE<\/span>D LOWER BACK<\/li>\n  <li>37 YOM FELL OUT OF SHOWER, HIT CHEST ON TOILET. DX RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>5 YO F, C/O LEFT SHOULDER PAIN, FELL OUT OF BED IN THE MIDDLE OF THE NI GHT, DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT DROPPED A LADDER ONTO RIGHT GREAT TOE AT HOME AND <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>2 YR F ROLLED OFF PORCH ;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>19YOF FELL TWISTED LEG PLAYING SOCCER DX: LOWER LEG <span class='match'>FRACTURE<\/span><\/li>\n  <li>11YOF ACCIDENTLY HIT L WRIST OFF OF TABLE, PT C/O PAIN, DX <span class='match'>FRACTURE<\/span> TOL WRIST<\/li>\n  <li><span class='match'>FRACTURE<\/span> HAND - 41 YO MALE PRESENTS WITH RIGHT HAND PAIN AFTER PUNCHING A WALL 1 HOUR PTA<\/li>\n  <li>11 YOF TWISTED ANKLE ON STEP AT SCHOOL <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>58 YOM <span class='match'>FRACTURE<\/span>D A TOE BY STRIKING AGAINST FURNITURE AT HOME.<\/li>\n  <li>6 YO F, C/O RT ARM PAIN, AROUND 2:10PM WAS IN BALLET CLASS WHEN SHE FEL L ON EXTENDED WRIST, DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>85YOF WAS HOME LOST BALANCE IN BATHROOM,FELL STRUCK SINK THEN BATHTUB WITH LT WRIST;WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>33 YO M PT WAS RIDING HIS BICYCLE IN A PARKING LOT WHILE ALCOHOL INTOXI CATED AND FELL OVER HITTING FACE ON PAVEMENT.DX FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>18 YOM INJURED FIBULA PLAYING FOOTBALL. DX-RIGHT FIBULA <span class='match'>FRACTURE<\/span><\/li>\n  <li>HIP INJURY FROM TURNED FROM HIS WALKER TO GET IN BED, FOUND HIMSELF ON BEDROOM CARPET FLOOR, HIT BACK OF HEAD ON NIGHT STAND.DX-<span class='match'>FRACTURE<\/span> HI<\/li>\n  <li>PT FELL YEST ON TILE FLOOR THAT MOM HAD RECENTLY MOPPED, NOW W/SWELLING TO WRIST AND CRYING W/TOUCH OF ARM; DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>74 YOM CLOSED HEAD INJURY & <span class='match'>FRACTURE<\/span>D LT. CLAVICLE- REPORTS LEANING BAC K IN CHAIR & CHAIR TIPPED OVER & HE FELL, HITTING HEAD 30 MIN AGO.*<\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D WRIST FROM FALL OFF MONKEY BARS<\/li>\n  <li>14 YR M CRASHED ATV;DX <span class='match'>FRACTURE<\/span>D SHOULDER<\/li>\n  <li>16 YO M PLAYING BASKETBALL WHEN ANOTHER PLAYER CAME DOWN STEPPING ON PT 'S RT ANKLE. UNABLE TO WALK ON IT. DX <span class='match'>FRACTURE<\/span> RT ANKLE ADMITTED<\/li>\n  <li>PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span> DHOULDER<\/li>\n  <li>PAIN TO ANKLE TWISTED GOING DOWN STEPS DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>81 YOF <span class='match'>FRACTURE<\/span>D LT. HUMERUS S/P TRIPPED ON LAST STEP & FELL ON LT. SID E WHILE COMING UP STEPS TO DECK @ HOME THIS AM.*<\/li>\n  <li>47YOF SLIPPED IN BATHROOM AND FELL INTO WALL AT HOME NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>73 YOF <span class='match'>FRACTURE<\/span> TO HIPS. REPORTS FELL OUT OF A BED 2 DAYS AGO.$<\/li>\n  <li>26YOF <span class='match'>FRACTURE<\/span>D TOE FELL DOWN STEPS LANDED ON UNEVEN DRIVEWAY*<\/li>\n  <li>PT WAS WALKING WITH A WALKER AND FELL AT HOME <span class='match'>FRACTURE<\/span>D IP<\/li>\n  <li>85 YO F PT WAS STEPPING INTO SHOWER SLIPPED AND FELL ONTO LT HIP, SEVER E PAIN. DX <span class='match'>FRACTURE<\/span> LT HIP ADMIT<\/li>\n  <li>11 YR M FELL IN FLOOR;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>FELL OFF BIKE;DX <span class='match'>FRACTURE<\/span>D THUMB<\/li>\n  <li>3YOF LEG PAIN AFTER JUMPING ON A TRAMPOLINE WITH HER AUNT HX OF TIBIAL <span class='match'>FRACTURE<\/span> JUNE 10TH*<\/li>\n  <li>14 YO F, C/O LEFT FOOT PAIN AFTER GETTING IT CAUGHT IN SWEATSHIRT AND F ALLING DOWN STAIRS AT SCHOOL, DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>30YOM FELL OFF A BICYCLE AND <span class='match'>FRACTURE<\/span>D RIGHT WRIST<\/li>\n  <li>4 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>67 YOM SUSTAINED MUTIPLE LT RIB <span class='match'>FRACTURE<\/span>S AFTER FALLING FROM HIS LADDER AND LANDING ON HIS STEPS<\/li>\n  <li>51YOM <span class='match'>FRACTURE<\/span>D RADIUS ABRASION TO LEG FELL OFF BIKE GOING DOWN HILL*<\/li>\n  <li>18YOM HIT BEDFRAME DX <span class='match'>FRACTURE<\/span> HAND<\/li>\n  <li>8 YOM, FELL OFF SKATEBOARD, <span class='match'>FRACTURE<\/span> ELBOW<\/li>\n  <li>16 YOM W/ <span class='match'>FRACTURE<\/span>D R ANKLE JUMPED INTO POOL AND HIT THE BOTTOM DX: NON DISPLACED FRACTURE R ANKLE<\/li>\n  <li>76YOM FELL IN HIS DRIVEWAY WHILE GETTING THE MAIL FELL ONTO FACE FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>37 YOF FELL ON STEPS WHILE SHOVELING SNOW.  DX:  <span class='match'>FRACTURE<\/span> DISTAL RADIUS<\/li>\n  <li>13 YOF PASSENGER ON 4-WHEELER; DRIVER LOST CONTROL; WRECKED DX:  WRIST <span class='match'>FRACTURE<\/span><\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

How many fracture narratives can you find?


```r
data1$fractures <- str_count(data1$description, 
         pattern = "(fracture|fractured|fractures|fracturing|FRACTURE|FRACTURED|FRACTURES|FRACTURING)")

frac_narr_position <- which(data1$fractures > 0)

length(frac_narr_position)
```

```
## [1] 524
```

  * There are 524 fracture-related narratives. 

#### c) Body Parts

Among the fracture narratives, try to identify the body parts that are 
fractured (_Note_: Don't go overboard. A selection of parts is sufficient.). 

The selection/sample of body parts to be used for this exercise is noted below:


```r
fracture_data <- subset(data1, 
                        subset = fractures > 0)

fracture_data$description <- tolower(fracture_data$description)

fracture_data$all_parts <- str_extract_all(fracture_data$description,
         "arm|arms|leg|legs|knee|knees|ankle|ankles|wrist|wrists|head|face|elbow|elbows|shoulder|shoulders|hand|hands|toe|toes|finger|fingers|hip|hips|foot|feet|nose|clavicle|neck|rib|ribs|thumb|thumbs")

fracture_data$all_parts <- str_replace_all(fracture_data$all_parts,
                                           '"',
                                           "")

fracture_data$all_parts <- str_replace_all(fracture_data$all_parts,
                                           "^c\\(",
                                           "")

fracture_data$all_parts <- str_replace_all(fracture_data$all_parts,
                                           "\\)",
                                           "")
                                           
fracture_data$all_parts <- str_replace_all(fracture_data$all_parts,
                                           "character\\(0",
                                           "")

ncol(fracture_data)
```

```
## [1] 4
```

```r
fracture_data[ ,5:8] <- str_split(fracture_data$all_parts,
                                  ",",
                                  simplify = TRUE)

fracture_data$n_parts <- str_count(fracture_data$all_parts,
                                       ",") ## number of body parts in narrative

colnames(fracture_data)[5] <- "part1"
colnames(fracture_data)[6] <- "part2"
colnames(fracture_data)[7] <- "part3"
colnames(fracture_data)[8] <- "part4"
```

Make a histogram of fractured body parts (but make sure plural and singular 
are combined.)


```r
## The only plural result was "feet", so replace it with "foot":
fracture_data$part1 <- ifelse(fracture_data$part1 == "feet",
                                      "foot",
                                      fracture_data$part1)

fracture_data$part2 <- ifelse(fracture_data$part2 == "feet",
                                      "foot",
                                      fracture_data$part2)

fracture_data$part3 <- ifelse(fracture_data$part3 == "feet",
                                      "foot",
                                      fracture_data$part3)

fracture_data$part4 <- ifelse(fracture_data$part4 == "feet",
                                      "foot",
                                      fracture_data$part4)

## Tabulate data for histogram:
library(QMSS)
tbl1 <- as.data.frame(Tab(fracture_data$part1))
tbl1$parts <- rownames(tbl1)

tbl2 <- as.data.frame(Tab(fracture_data$part2))
tbl2$parts <- rownames(tbl2)

tbl3 <- as.data.frame(Tab(fracture_data$part3))
tbl3$parts <- rownames(tbl3)

tbl4 <- as.data.frame(Tab(fracture_data$part4))
tbl4$parts <- rownames(tbl4)

tbl_parts <- cbind(tbl1,
                   tbl2)

tbl_parts$num <- tbl_parts[ , 1] + tbl_parts[ , 5]

tbl_parts <- tbl_parts[ , -c(1:7)]

tbl_parts <- tbl_parts[-1, ]

tbl_parts <- merge(tbl_parts, 
                    tbl3,
                    all.x = TRUE)

tbl_parts$Count <- ifelse(is.na(tbl_parts$Count),
                          0,
                          tbl_parts$Count)

tbl_parts$num <- tbl_parts$num + tbl_parts$Count

tbl_parts <- tbl_parts[, -c(3:5)]

tbl_parts <- merge(tbl_parts, 
                    tbl4,
                    all.x = TRUE)

tbl_parts$Count <- ifelse(is.na(tbl_parts$Count),
                          0,
                          tbl_parts$Count)

tbl_parts$num <- tbl_parts$num + tbl_parts$Count

tbl_parts <- tbl_parts[, -c(3:5)]



library(ggplot2)

ggplot(data = tbl_parts,
       aes(x = parts,
           y = num)) +
  geom_bar(stat = "identity") +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
    ) +
  xlab("Body Parts") +
  ylab("Count") +
  ggtitle("Sample of Fractured Body Parts")
```

![](images/unnamed-chunk-18-1.png)<!-- -->

#### d) Age and Gender

Let's try to extract age and gender. In a number of narratives you may have noticed a pattern:

  * "**75 YOM**, FELL DOWN STAIRS, FRACTURE LEG": A 75 year old male.
  * "**21MOF** FINGER SHUT IN WINDOW AT HOME;NAILBED INJURY: A 21 month-old female child.
  * "DX:AVULSION OF SKIN-**50YOF**-CUT THUMB WITH SCISSORS TONIGHT-OPENING A BOX": A 50 year old female.
  * "LEFT ELBOW CONTUSION,RT SHIN LAC.PT WAS ICE SKATING AND FELL.": No information about age or gender.
  
  You are generally looking for a pattern with a number (_age_), something to indicate the _units_, e.g. YO or YR for years old, or MO for months old, and a character that identifies the _gender_. So, I suggest to think of a pattern that combines these three parts. 
  
Create variables for age and gender (make sure to convert months to years when necessary).

   * There are also people who are days old.


```r
data1$description2 <- tolower(data1$description)

data1$description2 <- str_replace_all(data1$description2, 
                                      " ", 
                                      "") ## remove spaces

data1$description2 <- str_replace_all(data1$description2, 
                                      '[[:punct:] ]+', 
                                      "") ## remove punctuaton

data1$details1 <- str_extract(data1$description2,
                          "[0-9]?[0-9]?[0-9](y|yr|m|day|month|year)(old)(male|m|female|f)?") 

data1$details1a <- str_extract(data1$description2,
                              "[0-9]?[0-9]?[0-9](y|yr|m|day|month|year)(o)(male|m|female|f)?") 

data1$details1b <- str_extract(data1$description2,
                              "[0-9]?[0-9]?[0-9](y|yr|m|day|month|year)o?(male|m|female|f)?") 

data1$details1c <- str_extract(data1$description2,
                              "[0-9]?[0-9]?[0-9](y|yr|m|day|month|year)old?(male|m|female|f)?") 

data1$details1d <- str_extract(data1$description2,
                              "[0-9]?[0-9]?[0-9][yyr|mdaymonthyear][oold]?[malemfemalef]?") 

data1$gender <- str_extract(data1$details1d,
                            "f$|m$")


data1$age_digit <- str_extract(data1$details1b,
                              "[0-9]{2,3}")

data1$age_unit <- str_extract(data1$details1d,
                         "(m|mo|month|y|d)")

typeof(data1$age_digit)
```

```
## [1] "character"
```

```r
data1$age_digit <- as.numeric(data1$age_digit)

data1$age <- data1$age_digit

data1$age <- ifelse(data1$age_unit == "m",
                   data1$age_digit / 12,
                   data1$age_digit) ## month(s) old: age in years

data1$age <- ifelse(data1$age_unit == "d",
                   data1$age_digit / 365,
                   data1$age) ## day(s) old: age in years

data1 <- within(data1, rm("age_unit")) ## remove this column
data1 <- within(data1, rm("age_digit")) ## remove this column

#summary(is.na(data1$gender))
#summary(is.na(data1$age))

data1[1:5, c(1, 10:11)]
```

```
## # A tibble: 5 x 3
##   description                                              gender    age
##   <chr>                                                    <chr>   <dbl>
## 1 10 MO F FELL OUT OF SHOPPING CART;DX FRACTURED SKULL     f       0.833
## 2 75YOF WITH LAC TO FINGER FROM METAL CAN                  f      75.0  
## 3 8YOF FRACTURED FINGER FELL OFF HER BIKE                  f      NA    
## 4 9 YOM TACKLED DURING FOOTBALL PRACTICE.  DX: CONCUSSION. m      NA    
## 5 PT WAS HIT ON RT SIDE WHILE PLAYING FOOTBALL DX: CHI     <NA>   NA
```

How many men and women are in the data? 


```r
sum(data1$gender == "m", 
    na.rm = T) ## men
```

```
## [1] 4351
```

```r
sum(data1$gender == "f", 
    na.rm = T) ## women
```

```
## [1] 3397
```

  * There are 4,351 men and 3,397 women.

Provide a line graph of the number of injuries (y-axis) vs age (x-axis) disaggregated 
by gender.

  * Assuming that each narrative is an injury that prompted an emergency room visit:


```r
ggplot(data = data1,
       aes(x = age)) +
  geom_line(stat = 'count') +
  xlab("Age") +
  ylab("Number of Injuries") +
  ggtitle("Distribution of Age by Injuries - No Gender")
```

![](images/unnamed-chunk-21-1.png)<!-- -->

```r
ggplot(data = data1,
       aes(x = age,
           col = gender)) +
  geom_line(stat = 'count') +
  xlab("Age") +
  ylab("Number of Injuries") +
  ggtitle("Distribution of Age by Injuries By Gender")
```

![](images/unnamed-chunk-21-2.png)<!-- -->
  
