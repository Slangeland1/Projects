# QMSS G5072 Homework 6
Stephanie Langeland  
2017-10-24  



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

z_words
```

```
##   [1] "razor"                      "razorblade"                
##   [3] "razor"                      "razorblade"                
##   [5] "gazing"                     "gazed"                     
##   [7] "gazed"                      "razorblade"                
##   [9] "razor"                      "gaze"                      
##  [11] "seized"                     "razor"                     
##  [13] "zulus"                      "teazle"                    
##  [15] "gazing"                     "brazen"                    
##  [17] "gazed"                      "glazing"                   
##  [19] "puzzled"                    "gazed"                     
##  [21] "breezy"                     "gaze"                      
##  [23] "crazy"                      "brazen"                    
##  [25] "zut"                        "zarathustra"               
##  [27] "gaze"                       "zeal"                      
##  [29] "gaze"                       "nuzzling"                  
##  [31] "frozen"                     "laissez"                   
##  [33] "mürzsteg"                   "zeal"                      
##  [35] "frauenzimmer"               "gaze"                      
##  [37] "gaze"                       "crozier"                   
##  [39] "wheezy"                     "razorshells"               
##  [41] "maze"                       "savez"                     
##  [43] "savez"                      "zebra"                     
##  [45] "zmellz"                     "bloodz"                    
##  [47] "odz"                        "iridzman"                  
##  [49] "frozen"                     "fitzgerald"                
##  [51] "blazing"                    "frozen"                    
##  [53] "milkoozing"                 "gaze"                      
##  [55] "gizzards"                   "dlugacz’s"                 
##  [57] "puzzle"                     "dlugacz’s"                 
##  [59] "gaze"                       "oozed"                     
##  [61] "gaze"                       "lazily"                    
##  [63] "sizeable"                   "gaze"                      
##  [65] "sizzling"                   "sizzling"                  
##  [67] "blazes"                     "trapeze"                   
##  [69] "gazed"                      "biz"                       
##  [71] "blazes"                     "denzille"                  
##  [73] "dlugacz"                    "crazy"                     
##  [75] "prize"                      "bazaar"                    
##  [77] "gauze"                      "prize"                     
##  [79] "eczema"                     "lazy"                      
##  [81] "azotes"                     "gazed"                     
##  [83] "gazed"                      "gazing"                    
##  [85] "wheeze"                     "hazard"                    
##  [87] "lazy"                       "mazzoth"                   
##  [89] "mozart’s"                   "buzz"                      
##  [91] "benzoin"                    "embezzling"                
##  [93] "crazy"                      "gaze"                      
##  [95] "waltzing"                   "influenza"                 
##  [97] "hazard"                     "blazes"                    
##  [99] "blazing"                    "gazed"                     
## [101] "capsized"                   "ooze"                      
## [103] "gaze"                       "muzzle"                    
## [105] "gazed"                      "lazarus"                   
## [107] "puzzling"                   "oozing"                    
## [109] "maze"                       "bronzefoil"                
## [111] "crozier"                    "gazette"                   
## [113] "phiz"                       "quizzing"                  
## [115] "zephyrs"                    "fitzgerald"                
## [117] "prize"                      "seized"                    
## [119] "zigzagging"                 "breeze"                    
## [121] "mazurka"                    "gazed"                     
## [123] "entrez"                     "wheeze"                    
## [125] "lazy"                       "fitzharris"                
## [127] "chapelizod"                 "frozen"                    
## [129] "fitzgibbon"                 "fitzgibbon"                
## [131] "gaze"                       "unglazed"                  
## [133] "fitzgibbon’s"               "lozenge"                   
## [135] "zion"                       "gaze"                      
## [137] "glazed"                     "lazily"                    
## [139] "dozen"                      "blizzard"                  
## [141] "gaze"                       "gaze"                      
## [143] "fitzmaurice"                "lizzie"                    
## [145] "prize"                      "graze"                     
## [147] "gazed"                      "breeze"                    
## [149] "freeze"                     "lizzie"                    
## [151] "squeeze"                    "goerz"                     
## [153] "frozen"                     "cherchez"                  
## [155] "gazed"                      "puzzle"                    
## [157] "gorgonzola"                 "blazes"                    
## [159] "blazes"                     "zinfandel’s"               
## [161] "fizz"                       "buzzed"                    
## [163] "buzzed"                     "zinfandel"                 
## [165] "zinfandel"                  "zest"                      
## [167] "sizing"                     "doze"                      
## [169] "size"                       "assizes"                   
## [171] "bazaar"                     "zealous"                   
## [173] "sizar’s"                    "elizabethan"               
## [175] "buzz"                       "buzz"                      
## [177] "bronzelidded"               "aztec"                     
## [179] "panza"                      "lazarus"                   
## [181] "prize"                      "puzzled"                   
## [183] "zeal"                       "eliza"                     
## [185] "azured"                     "lizards"                   
## [187] "elizabeth"                  "lopez"                     
## [189] "elizabeth"                  "sneeze"                    
## [191] "mezzo"                      "prize"                     
## [193] "horizon"                    "prize"                     
## [195] "voulez"                     "lizzie"                    
## [197] "fitzmaurice"                "quizzer"                   
## [199] "lazy"                       "zealous"                   
## [201] "fitzgibbon"                 "gazed"                     
## [203] "blazes"                     "blazes"                    
## [205] "blazes"                     "blazes"                    
## [207] "blazes"                     "blazes"                    
## [209] "blazes"                     "blazes"                    
## [211] "gazed"                      "sacrifizio"                
## [213] "gazed"                      "grazie"                    
## [215] "gaze"                       "fitzgeralds"               
## [217] "fitzgerald"                 "sneezed"                   
## [219] "wheezy"                     "grizzled"                  
## [221] "citizens"                   "fitzgerald"                
## [223] "bronze"                     "lozenges"                  
## [225] "prizering"                  "schoolprizes"              
## [227] "gazed"                      "fitzmaurice"               
## [229] "bronze"                     "blazes"                    
## [231] "lowsized"                   "gaze"                      
## [233] "fitzmaurice"                "fitzmaurice"               
## [235] "fitzsimons"                 "fitzsimons"                
## [237] "bronze"                     "gazed"                     
## [239] "blazes"                     "blazes"                    
## [241] "brazen"                     "fitzmaurice"               
## [243] "bazaar"                     "bronze"                    
## [245] "bronze"                     "sonnez"                    
## [247] "liszt’s"                    "bronzelydia"               
## [249] "bronze"                     "bronze"                    
## [251] "bronze"                     "bronze"                    
## [253] "bronze"                     "bronze"                    
## [255] "bronze"                     "bronze"                    
## [257] "bronze"                     "goldbronze"                
## [259] "bronze"                     "bronze"                    
## [261] "bronzegold"                 "goldbronze"                
## [263] "bronze"                     "gaze"                      
## [265] "gaze"                       "bronze’s"                  
## [267] "blazes"                     "gazed"                     
## [269] "buzzing"                    "blazes"                    
## [271] "bronze"                     "blazes"                    
## [273] "bronze"                     "seized"                    
## [275] "blazes"                     "shebronze"                 
## [277] "blazes"                     "blazes"                    
## [279] "blazes"                     "bronze"                    
## [281] "azure"                      "blazure’s"                 
## [283] "bronzedouce"                "blazes"                    
## [285] "sonnez"                     "sonnez"                    
## [287] "sonnez"                     "bronze"                    
## [289] "bronze"                     "bronze"                    
## [291] "blazes"                     "blazes"                    
## [293] "bronze"                     "bronze"                    
## [295] "bronze"                     "wheeze"                    
## [297] "blazes"                     "whizzed"                   
## [299] "bronze"                     "gizzards"                  
## [301] "blazes"                     "bronze"                    
## [303] "bronze"                     "sonnez"                    
## [305] "bronze"                     "blazes"                    
## [307] "sonnez"                     "sonnez"                    
## [309] "blazes"                     "buzz"                      
## [311] "dlugacz"                    "intermezzo"                
## [313] "prize"                      "bronze"                    
## [315] "bronze"                     "liszt’s"                   
## [317] "razzle"                     "puzzle"                    
## [319] "bronze"                     "gazed"                     
## [321] "bronze"                     "gazed"                     
## [323] "spinoza"                    "gazed"                     
## [325] "bronze"                     "bronzelid"                 
## [327] "sonnez"                     "glazily"                   
## [329] "oozing"                     "razor"                     
## [331] "bronze"                     "bronze"                    
## [333] "bronze"                     "herzog"                    
## [335] "herzog"                     "citizen"                   
## [337] "citizen"                    "denizens"                  
## [339] "breezes"                    "fitzsimon"                 
## [341] "size"                       "citizen"                   
## [343] "citizen"                    "citizen"                   
## [345] "citizen"                    "citizen"                   
## [347] "goodsized"                  "velasquez"                 
## [349] "wheeze"                     "citizen"                   
## [351] "citizen"                    "squeezed"                  
## [353] "citizen"                    "bronze"                    
## [355] "citizen"                    "citizen"                   
## [357] "skeezing"                   "citizen"                   
## [359] "citizen"                    "citizen"                   
## [361] "razor"                      "citizen"                   
## [363] "sneezing"                   "citizen"                   
## [365] "bézique"                    "citizen"                   
## [367] "citizen"                    "dazzling"                  
## [369] "speranza’s"                 "schwanzenbad"              
## [371] "kisászony"                  "banzai"                    
## [373] "zivio"                      "rienzi"                    
## [375] "citizen"                    "size"                      
## [377] "citizen"                    "muzzling"                  
## [379] "bazaar"                     "citizen"                   
## [381] "citizen"                    "citizen"                   
## [383] "citizen"                    "citizen"                   
## [385] "grazier"                    "waltzing"                  
## [387] "liz"                        "liz"                       
## [389] "citizen"                    "citizen"                   
## [391] "citizen"                    "citizen"                   
## [393] "citizen"                    "blazes"                    
## [395] "blazes"                     "citizen"                   
## [397] "frenzied"                   "blazes"                    
## [399] "citizen"                    "fizz"                      
## [401] "citizen"                    "citizen"                   
## [403] "citizen"                    "zouave"                    
## [405] "zaretsky"                   "citizen"                   
## [407] "citizen"                    "citizen"                   
## [409] "citizen"                    "citizen"                   
## [411] "gazette"                    "citizen"                   
## [413] "citizen"                    "citizen"                   
## [415] "citizen"                    "conspuez"                  
## [417] "zinfandel"                  "citizen"                   
## [419] "citizen"                    "citizen"                   
## [421] "hazeleyes"                  "bronze"                    
## [423] "hazelnuts"                  "citizen"                   
## [425] "citizen"                    "citizen"                   
## [427] "dozen"                      "citizen"                   
## [429] "citizen"                    "dozen"                     
## [431] "citizen"                    "dozen"                     
## [433] "citizen"                    "citizen"                   
## [435] "citizen"                    "conspuez"                  
## [437] "citizen"                    "citizen"                   
## [439] "citizen"                    "citizen"                   
## [441] "citizen"                    "citizen"                   
## [443] "citizen"                    "citizen"                   
## [445] "citizen"                    "citizen"                   
## [447] "zulu"                       "citizen"                   
## [449] "citizen"                    "citizen"                   
## [451] "citizen"                    "squeeze"                   
## [453] "citizen"                    "gadzooks"                  
## [455] "citizen"                    "citizen"                   
## [457] "citizen"                    "citizen"                   
## [459] "citizen"                    "citizen"                   
## [461] "citizen"                    "gonzaga"                   
## [463] "citizen"                    "citizen"                   
## [465] "citizen"                    "citizen"                   
## [467] "spinoza"                    "citizen"                   
## [469] "citizen"                    "százharminczbrojúgulyás"   
## [471] "rakóczsy’s"                 "visszontlátásra"           
## [473] "visszontlátásra"            "citizen"                   
## [475] "citizen"                    "gazing"                    
## [477] "size"                       "chintz"                    
## [479] "gaze"                       "gazing"                    
## [481] "lazenby’s"                  "gaze"                      
## [483] "gazed"                      "gazed"                     
## [485] "gaze"                       "gaze"                      
## [487] "blaze"                      "dozen"                     
## [489] "bazaar"                     "crazy"                     
## [491] "puzzle"                     "zrads"                     
## [493] "zrads"                      "zrads"                     
## [495] "zrads"                      "sneeze"                    
## [497] "buzz"                       "prize"                     
## [499] "furze"                      "bazaar"                    
## [501] "breeze"                     "zoo"                       
## [503] "snooze"                     "citizen"                   
## [505] "citizens"                   "mazer"                     
## [507] "seize"                      "zarathustra"               
## [509] "fitzgibbon’s"               "coz"                       
## [511] "gazette"                    "gazette"                   
## [513] "cozening"                   "pizzle"                    
## [515] "bonzes"                     "gazing"                    
## [517] "poyntz"                     "rendezvoused"              
## [519] "seize"                      "grazing"                   
## [521] "sturzgeburt"                "freeze"                    
## [523] "drizzling"                  "zodiacal"                  
## [525] "blazes"                     "huzzah"                    
## [527] "mediumsized"                "spermatozoa"               
## [529] "spallanzani"                "citizens"                  
## [531] "prize"                      "gaze"                      
## [533] "piazzetta"                  "zermatt"                   
## [535] "denzille"                   "kreutzer"                  
## [537] "zarathustra"                "guzzling"                  
## [539] "denzille"                   "uz"                        
## [541] "amazingly"                  "rheumatiz"                 
## [543] "nachez"                     "largesize"                 
## [545] "jenatzy"                    "woozy"                     
## [547] "blaze"                      "denzille"                  
## [549] "winefizzling"               "ginsizzling"               
## [551] "booseguzzling"              "blaze"                     
## [553] "grazing"                    "sneezes"                   
## [555] "zion"                       "nachez"                    
## [557] "seizes"                     "frieze"                    
## [559] "gazelle"                    "seizes"                    
## [561] "size"                       "squeezes"                  
## [563] "size"                       "brazen"                    
## [565] "biz"                        "gazes"                     
## [567] "muzzle"                     "sizeable"                  
## [569] "fritz"                      "fez"                       
## [571] "nozzle"                     "prize"                     
## [573] "blazes"                     "nozzle"                    
## [575] "dozen"                      "dazedly"                   
## [577] "haze"                       "dlugacz"                   
## [579] "dlugacz"                    "quizzing"                  
## [581] "frozen"                     "amazon"                    
## [583] "quizzing"                   "citizens"                  
## [585] "assizes"                    "zoo"                       
## [587] "chimpanzee"                 "size"                      
## [589] "zoe"                        "bronze"                    
## [591] "zoe"                        "zoe"                       
## [593] "zoe"                        "zoe"                       
## [595] "zoe"                        "zoe"                       
## [597] "zoe"                        "zoe"                       
## [599] "gazes"                      "zoe"                       
## [601] "gazelle"                    "gazelles"                  
## [603] "bronze"                     "zoe"                       
## [605] "zoe"                        "zoe"                       
## [607] "zoe"                        "furze"                     
## [609] "bazaar"                     "vizier"                    
## [611] "howitzers"                  "razed"                     
## [613] "graziers"                   "fritz"                     
## [615] "citizen"                    "zion"                      
## [617] "mitzvah"                    "mazzoth"                   
## [619] "askenazim"                  "dozen"                     
## [621] "bronzed"                    "buzz"                      
## [623] "dozen"                      "zouave’s"                  
## [625] "smerdoz"                    "smerdoz"                   
## [627] "schwarz"                    "schwarz"                   
## [629] "aranjuez"                   "aranjuez"                  
## [631] "szombathely"                "szombathely"               
## [633] "azazel"                     "mizraim"                   
## [635] "buzz"                       "citizen"                   
## [637] "citizen"                    "zoe"                       
## [639] "gazes"                      "zoe"                       
## [641] "zoe"                        "zoe"                       
## [643] "zoe"                        "zoe"                       
## [645] "zoe"                        "bronze"                    
## [647] "zoe"                        "gizzard"                   
## [649] "zoe"                        "zoe"                       
## [651] "zoe"                        "zoe"                       
## [653] "azure"                      "zoe"                       
## [655] "zoe"                        "zoe"                       
## [657] "zoe"                        "jetez"                     
## [659] "zoe"                        "zoe"                       
## [661] "zoe"                        "zenith"                    
## [663] "zoe"                        "zoe"                       
## [665] "lizardlettered"             "zodiac"                    
## [667] "zoe"                        "zoe"                       
## [669] "zoe"                        "zoe"                       
## [671] "gazing"                     "fitzmaurice"               
## [673] "szombathely"                "size"                      
## [675] "gazes"                      "dozen"                     
## [677] "buzz"                       "buzz"                      
## [679] "dazed"                      "dazed"                     
## [681] "sneezes"                    "zoe’s"                     
## [683] "zoe"                        "zoe"                       
## [685] "sneezes"                    "zoe"                       
## [687] "zoe"                        "nozzle"                    
## [689] "zoe"                        "zoe"                       
## [691] "graize"                     "size"                      
## [693] "zigzag"                     "zoe"                       
## [695] "zoe"                        "zoe"                       
## [697] "zoe"                        "lozenges"                  
## [699] "prize"                      "bazaar"                    
## [701] "zoe"                        "zoe"                       
## [703] "bazaar"                     "zoe"                       
## [705] "gazette"                    "zoe"                       
## [707] "squeezes"                   "zoe"                       
## [709] "quinze"                     "furzebush"                 
## [711] "drizzle"                    "horizontal"                
## [713] "shulomowitz"                "herzog"                    
## [715] "abramovitz"                 "chazen"                    
## [717] "gazes"                      "zoe"                       
## [719] "seizes"                     "zoe"                       
## [721] "zoe"                        "zoe"                       
## [723] "zoe"                        "zoe"                       
## [725] "zoe"                        "zoe"                       
## [727] "zoe’s"                      "zoe"                       
## [729] "zoe"                        "zoe"                       
## [731] "zoe"                        "zoe"                       
## [733] "zoe"                        "zoe"                       
## [735] "zoe"                        "zoe"                       
## [737] "lazy"                       "zoe"                       
## [739] "zoe"                        "zoe"                       
## [741] "zoe"                        "zoe"                       
## [743] "zoe"                        "liz"                       
## [745] "liz"                        "zoe"                       
## [747] "zoe"                        "blazes"                    
## [749] "gaze"                       "bronze"                    
## [751] "zoe"                        "blazes"                    
## [753] "blazes"                     "blazes"                    
## [755] "zoe"                        "zoe"                       
## [757] "godblazeqrukbrukarchkrasht" "zoe"                       
## [759] "gaze"                       "gaze"                      
## [761] "zoe"                        "fizzing"                   
## [763] "gazes"                      "prize"                     
## [765] "zoe"                        "lifesize"                  
## [767] "trapezes"                   "zoe"                       
## [769] "beelzebub"                  "buzzard"                   
## [771] "wizard"                     "zinfandel"                 
## [773] "drizzle"                    "zoe"                       
## [775] "zoe"                        "zoe"                       
## [777] "waltz"                      "zoe"                       
## [779] "waltz"                      "seizes"                    
## [781] "zoe"                        "zoe"                       
## [783] "waltz"                      "waltz"                     
## [785] "zoe"                        "waltz"                     
## [787] "zoe"                        "gauze"                     
## [789] "breeze"                     "zoe"                       
## [791] "zoe"                        "seizes"                    
## [793] "dansez"                     "changez"                   
## [795] "donnez"                     "remerciez"                 
## [797] "bazaar"                     "seizes"                    
## [799] "zoe"                        "seizes"                    
## [801] "waltzes"                    "waltz"                     
## [803] "florryzoe"                  "frauenzimmer"              
## [805] "blazes"                     "zoe"                       
## [807] "seizes"                     "zoe"                       
## [809] "zoe"                        "seizes"                    
## [811] "zoe"                        "zoe"                       
## [813] "zoe"                        "zoe"                       
## [815] "zigzags"                    "zigzag"                    
## [817] "citizen"                    "fitzgibbon"                
## [819] "tweezers"                   "herzog"                    
## [821] "blazer"                     "patrizio"                  
## [823] "franz"                      "citizen"                   
## [825] "razors"                     "citizen"                   
## [827] "citizen"                    "hashbaz"                   
## [829] "seizes"                     "fitzgerald"                
## [831] "fitzedward"                 "citizen"                   
## [833] "fizz"                       "rendezvous"                
## [835] "bronze"                     "gazes"                     
## [837] "brazier"                    "brazier"                   
## [839] "dizzily"                    "brazen"                    
## [841] "brazier"                    "gazed"                     
## [843] "bamboozled"                 "mezzo"                     
## [845] "mezzo"                      "fitzharris"                
## [847] "choza"                      "lazarillo"                 
## [849] "bazan"                      "ozone"                     
## [851] "gaze"                       "choza"                     
## [853] "lazy"                       "dozen"                     
## [855] "capsize"                    "puzzled"                   
## [857] "squeezing"                  "glazed"                    
## [859] "gazers"                     "aztecs"                    
## [861] "doze"                       "nozzle"                    
## [863] "brazier"                    "amazing"                   
## [865] "seized"                     "grizzled"                  
## [867] "fitzharris"                 "fitz"                      
## [869] "gaze"                       "tidysized"                 
## [871] "halfcrazy"                  "viz"                       
## [873] "puzzling"                   "citizens"                  
## [875] "zinfandel"                  "zinfandel"                 
## [877] "gazed"                      "sized"                     
## [879] "bandez"                     "dozen"                     
## [881] "gizzard"                    "freeze"                    
## [883] "largesized"                 "brazen"                    
## [885] "prize"                      "brazier"                   
## [887] "mozart’s"                   "size"                      
## [889] "conversaziones"             "sneezed"                   
## [891] "fitzgibbon"                 "gaze"                      
## [893] "smallsized"                 "zones"                     
## [895] "ahorizontal"                "horizontal"                
## [897] "sizes"                      "zion"                      
## [899] "prizes"                     "elizabeth"                 
## [901] "citizens"                   "bezique"                   
## [903] "colza"                      "szombathely"               
## [905] "fitzpatrick"                "hazard"                    
## [907] "zodiac"                     "lozenges"                  
## [909] "zoological"                 "bazaar"                    
## [911] "horizontally"               "oz"                        
## [913] "seizes"                     "gonzaga"                   
## [915] "bezique"                    "spinoza"                   
## [917] "mendoza"                    "l’zamatejch"               
## [919] "zion"                       "citizen"                   
## [921] "spermatozoa"                "piazzi"                    
## [923] "frenzy"                     "gaze"                      
## [925] "gazes"                      "zenith"                    
## [927] "zodiacal"                   "freezing"                  
## [929] "zero"                       "gaze"                      
## [931] "mizrach"                    "horizon"                   
## [933] "gaze"                       "gaze"                      
## [935] "gaze"                       "spinoza"                   
## [937] "hozier’s"                   "hozier’s"                  
## [939] "size"                       "grazing"                   
## [941] "dozen"                      "frieze"                    
## [943] "mezzanine"                  "tweezers"                  
## [945] "zenith"                     "viz"                       
## [947] "gizzard"                    "graziers"                  
## [949] "viz"                        "mizpah"                    
## [951] "bazaar"                     "prizes"                    
## [953] "dozen"                      "viz"                       
## [955] "szombathely"                "szesfehervar"              
## [957] "herz"                       "szombathely"               
## [959] "plaza"                      "outsize"                   
## [961] "blazes"                     "embezzlement"              
## [963] "viz"                        "viz"                       
## [965] "razor"                      "doz"                       
## [967] "squeeze"                    "squeeze"                   
## [969] "dozen"                      "size"                      
## [971] "skeezing"                   "brazenfaced"               
## [973] "zingari"                    "blazes"                    
## [975] "frozen"                     "gomez"                     
## [977] "embarazada"                 "squeeze"                   
## [979] "blazes"                     "switzers"                  
## [981] "sneezing"                   "prizes"                    
## [983] "spinoza"                    "squeeze"                   
## [985] "crazy"                      "size"                      
## [987] "squeezed"                   "delapaz"                   
## [989] "fez"                        "doze"                      
## [991] "zurich"
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

vowels_2_st
```

```
##    [1] "air"                "out"                "air"               
##    [4] "oak"                "ouns"               "aunt"              
##    [7] "out"                "out"                "out"               
##   [10] "out"                "our"                "out"               
##   [13] "oakpale"            "oinopa"             "our"               
##   [16] "our"                "aunt"               "air"               
##   [19] "out"                "out"                "aunt"              
##   [22] "aubrey"             "air"                "ourselves"         
##   [25] "out"                "out"                "out"               
##   [28] "autumn"             "out"                "iubilantium"       
##   [31] "air"                "our"                "out"               
##   [34] "air"                "out"                "eight"             
##   [37] "out"                "out"                "out"               
##   [40] "each"               "earnestly"          "out"               
##   [43] "out"                "eating"             "oil"               
##   [46] "ought"              "ought"              "out"               
##   [49] "out"                "out"                "our"               
##   [52] "easily"             "out"                "out"               
##   [55] "out"                "out"                "out"               
##   [58] "eaten"              "out"                "out"               
##   [61] "ours"               "out"                "out"               
##   [64] "ear"                "air"                "oughtn’t"          
##   [67] "out"                "out"                "either"            
##   [70] "eat"                "either"             "our"               
##   [73] "out"                "out"                "out"               
##   [76] "iubilantium"        "out"                "ease"              
##   [79] "ear"                "out"                "ousted"            
##   [82] "out"                "eager"              "out"               
##   [85] "out"                "out"                "earth"             
##   [88] "earth"              "out"                "our"               
##   [91] "our"                "out"                "air"               
##   [94] "out"                "our"                "out"               
##   [97] "earned"             "out"                "iago"              
##  [100] "air"                "our"                "our"               
##  [103] "our"                "european"           "austria"           
##  [106] "outbreak"           "austria"            "air"               
##  [109] "eat"                "earth"              "eager"             
##  [112] "our"                "our"                "out"               
##  [115] "out"                "air"                "air"               
##  [118] "easy"               "audible"            "iambs"             
##  [121] "our"                "out"                "euthanasia"        
##  [124] "airs"               "eager"              "airs"              
##  [127] "easy"               "aunt"               "aunt"              
##  [130] "out"                "our"                "airs"              
##  [133] "air"                "out"                "oiled"             
##  [136] "earnestly"          "aunt"               "oui"               
##  [139] "eating"             "eight"              "europe"            
##  [142] "euge"               "euge"               "aunt"              
##  [145] "aunt"               "air"                "oui"               
##  [148] "our"                "our"                "our"               
##  [151] "our"                "authentic"          "out"               
##  [154] "outcast"            "air"                "air"               
##  [157] "out"                "eely"               "oarweeds"          
##  [160] "ear"                "out"                "out"               
##  [163] "out"                "ears"               "ears"              
##  [166] "ears"               "out"                "out"               
##  [169] "out"                "air"                "out"               
##  [172] "oinopa"             "air"                "oomb"              
##  [175] "ooeeehah"           "augur’s"            "out"               
##  [178] "east"               "our"                "our"               
##  [181] "our"                "ooos"               "out"               
##  [184] "easy"               "ourselves"          "ought"             
##  [187] "air"                "ii"                 "air"               
##  [190] "out"                "out"                "out"               
##  [193] "either"             "eat"                "auction"           
##  [196] "our"                "east"               "early"             
##  [199] "out"                "eight"              "out"               
##  [202] "air"                "oozed"              "each"              
##  [205] "out"                "outside"            "eager"             
##  [208] "eucalyptus"         "eighty"             "out"               
##  [211] "out"                "earth"              "earth"             
##  [214] "earth"              "oils"               "eighty"            
##  [217] "out"                "eat"                "out"               
##  [220] "air"                "oath"               "our"               
##  [223] "our"                "earth"              "easter"            
##  [226] "out"                "out"                "out"               
##  [229] "eat"                "august"             "out"               
##  [232] "air"                "ear"                "out"               
##  [235] "out"                "oilcakes"           "out"               
##  [238] "easy"               "our"                "ease"              
##  [241] "each"               "out"                "air"               
##  [244] "out"                "air"                "air"               
##  [247] "outside"            "east"               "out"               
##  [250] "air"                "air"                "eat"               
##  [253] "earth"              "earth"              "each"              
##  [256] "air"                "easier"             "our"               
##  [259] "out"                "out"                "out"               
##  [262] "outsider"           "out"                "our"               
##  [265] "out"                "out"                "eustace"           
##  [268] "eating"             "outside"            "oats"              
##  [271] "oaten"              "out"                "out"               
##  [274] "out"                "out"                "out"               
##  [277] "out"                "air"                "out"               
##  [280] "eightpence"         "out"                "ounce"             
##  [283] "easy"               "out"                "each"              
##  [286] "out"                "eating"             "aisle"             
##  [289] "ought"              "our"                "our"               
##  [292] "out"                "either"             "out"               
##  [295] "air"                "eunuchs"            "eunuch"            
##  [298] "out"                "out"                "each"              
##  [301] "our"                "our"                "ears"              
##  [304] "out"                "our"                "out"               
##  [307] "our"                "easter"             "aisle"             
##  [310] "out"                "ointments"          "ought"             
##  [313] "oil"                "out"                "oatmeal"           
##  [316] "out"                "oiling"             "outspread"         
##  [319] "out"                "oiled"              "out"               
##  [322] "our"                "out"                "out"               
##  [325] "out"                "aunt"               "out"               
##  [328] "aunt"               "oaths"              "out"               
##  [331] "out"                "out"                "eagerly"           
##  [334] "automatic"          "eugene"             "airing"            
##  [337] "oot"                "oot"                "ears"              
##  [340] "out"                "eagerness"          "out"               
##  [343] "out"                "eagerly"            "eightpence"        
##  [346] "eight"              "eight"              "our"               
##  [349] "out"                "out"                "out"               
##  [352] "ears"               "ee"                 "our"               
##  [355] "outside"            "out"                "each"              
##  [358] "out"                "ought"              "out"               
##  [361] "out"                "out"                "ooze"              
##  [364] "out"                "auction"            "easy"              
##  [367] "out"                "our"                "out"               
##  [370] "out"                "outrage"            "out"               
##  [373] "air"                "out"                "out"               
##  [376] "out"                "out"                "out"               
##  [379] "out"                "out"                "out"               
##  [382] "outlived"           "outlive"            "easter"            
##  [385] "eightpence"         "ought"              "each"              
##  [388] "out"                "out"                "air"               
##  [391] "out"                "out"                "out"               
##  [394] "out"                "out"                "out"               
##  [397] "air"                "out"                "ear"               
##  [400] "out"                "out"                "our"               
##  [403] "out"                "out"                "out"               
##  [406] "eight"              "ought"              "earth"             
##  [409] "auditor"            "earth"              "oozing"            
##  [412] "out"                "out"                "out"               
##  [415] "each"               "earth"              "out"               
##  [418] "earth"              "earth"              "out"               
##  [421] "ought"              "out"                "out"               
##  [424] "eased"              "out"                "air"               
##  [427] "out"                "air"                "out"               
##  [430] "ought"              "airhole"            "out"               
##  [433] "out"                "out"                "ee"                
##  [436] "earthy"             "aim"                "eulogy"            
##  [439] "ought"              "out"                "ought"             
##  [442] "ought"              "eat"                "eaten"             
##  [445] "earth"              "air"                "out"               
##  [448] "earth"              "oaths"              "out"               
##  [451] "out"                "out"                "out"               
##  [454] "out"                "out"                "out"               
##  [457] "earnestly"          "ear"                "oaklands"          
##  [460] "each"               "our"                "ee"                
##  [463] "out"                "our"                "our"               
##  [466] "our"                "out"                "out"               
##  [469] "authority"          "each"               "eagerly"           
##  [472] "out"                "au"                 "ought"             
##  [475] "out"                "august"             "out"               
##  [478] "eating"             "out"                "out"               
##  [481] "out"                "out"                "out"               
##  [484] "out"                "out"                "our"               
##  [487] "our"                "our"                "out"               
##  [490] "out"                "out"                "eolian"            
##  [493] "out"                "out"                "air"               
##  [496] "earth"              "out"                "out"               
##  [499] "out"                "auction"            "out"               
##  [502] "air"                "out"                "our"               
##  [505] "our"                "out"                "austrian"          
##  [508] "ought"              "our"                "europe"            
##  [511] "aegospotami"        "ear"                "air"               
##  [514] "europe"             "eightyone"          "air"               
##  [517] "out"                "eagerly"            "out"               
##  [520] "outside"            "out"                "our"               
##  [523] "eagle"              "ear"                "out"               
##  [526] "earlier"            "out"                "out"               
##  [529] "our"                "aught"              "eager"             
##  [532] "outspanned"         "outlet"             "our"               
##  [535] "out"                "augustine"          "our"               
##  [538] "our"                "our"                "our"               
##  [541] "our"                "our"                "ours"              
##  [544] "our"                "out"                "outlaw"            
##  [547] "ears"               "out"                "out"               
##  [550] "out"                "out"                "each"              
##  [553] "airslits"           "our"                "aureoling"         
##  [556] "out"                "out"                "eaten"             
##  [559] "out"                "easy"               "aeroliths"         
##  [562] "eat"                "out"                "out"               
##  [565] "out"                "eight"              "aerated"           
##  [568] "our"                "our"                "out"               
##  [571] "outside"            "auctionrooms"       "eat"               
##  [574] "out"                "out"                "out"               
##  [577] "out"                "air"                "outside"           
##  [580] "eightpence"         "out"                "out"               
##  [583] "earth"              "australians"        "eat"               
##  [586] "out"                "outside"            "out"               
##  [589] "our"                "either"             "our"               
##  [592] "out"                "outside"            "our"               
##  [595] "our"                "eating"             "out"               
##  [598] "out"                "out"                "oakroom"           
##  [601] "out"                "out"                "out"               
##  [604] "out"                "out"                "ought"             
##  [607] "out"                "out"                "ears"              
##  [610] "out"                "outside"            "out"               
##  [613] "earnestly"          "easily"             "out"               
##  [616] "oath"               "aid"                "our"               
##  [619] "out"                "out"                "out"               
##  [622] "ears"               "ought"              "eating"            
##  [625] "out"                "eightpenny"         "out"               
##  [628] "out"                "out"                "ought"             
##  [631] "easily"             "out"                "out"               
##  [634] "out"                "air"                "out"               
##  [637] "ought"              "oughtn’t"           "ears"              
##  [640] "out"                "easily"             "out"               
##  [643] "out"                "out"                "our"               
##  [646] "outgoing"           "out"                "out"               
##  [649] "out"                "eaten"              "out"               
##  [652] "eaten"              "eating"             "out"               
##  [655] "aid"                "eat"                "eating"            
##  [658] "out"                "easy"               "out"               
##  [661] "out"                "autumn"             "out"               
##  [664] "out"                "each"               "out"               
##  [667] "out"                "eighth"             "eat"               
##  [670] "ourselves"          "eating"             "eat"               
##  [673] "eat"                "out"                "eaters"            
##  [676] "eat"                "out"                "eaters"            
##  [679] "out"                "air"                "eat"               
##  [682] "eaten"              "ailesbury"          "our"               
##  [685] "out"                "earth"              "out"               
##  [688] "ought"              "eat"                "oil"               
##  [691] "ear"                "ears"               "easier"            
##  [694] "each"               "air"                "each"              
##  [697] "ears"               "out"                "out"               
##  [700] "eat"                "out"                "out"               
##  [703] "eating"             "each"               "eat"               
##  [706] "oil"                "eat"                "eaten"             
##  [709] "out"                "aitcha"             "earwigs"           
##  [712] "ointments"          "oaken"              "aids"              
##  [715] "out"                "earth"              "out"               
##  [718] "out"                "air"                "out"               
##  [721] "iiiiiichaaaaaaach"  "out"                "out"               
##  [724] "outs"               "ought"              "out"               
##  [727] "ought"              "out"                "eight"             
##  [730] "out"                "eat"                "out"               
##  [733] "earth"              "ought"              "each"              
##  [736] "each"               "air"                "ears"              
##  [739] "earlsfort"          "aid"                "out"               
##  [742] "out"                "out"                "ear"               
##  [745] "our"                "out"                "out"               
##  [748] "our"                "oakley"             "our"               
##  [751] "out"                "eons"               "auric"             
##  [754] "out"                "earth"              "air"               
##  [757] "au"                 "air"                "ou"                
##  [760] "ou"                 "our"                "our"               
##  [763] "our"                "out"                "out"               
##  [766] "eared"              "earthquake"         "our"               
##  [769] "earnest"            "our"                "earth"             
##  [772] "oats"               "our"                "outgoing"          
##  [775] "outgoer"            "air"                "ear"               
##  [778] "our"                "our"                "oats"              
##  [781] "eon"                "east"               "ea"                
##  [784] "out"                "ought"              "earl"              
##  [787] "our"                "ought"              "auk’s"             
##  [790] "ears"               "ear"                "our"               
##  [793] "out"                "easily"             "out"               
##  [796] "aunt"               "our"                "out"               
##  [799] "out"                "eavesdropping"      "our"               
##  [802] "oisin"              "eager"              "out"               
##  [805] "iii"                "iii"                "our"               
##  [808] "out"                "out"                "our"               
##  [811] "earth"              "eat"                "out"               
##  [814] "aubrey’s"           "our"                "out"               
##  [817] "authority"          "europe"             "outspoke"          
##  [820] "iago"               "ourselves"          "ours"              
##  [823] "eastward"           "autontimorumenos"   "ait"               
##  [826] "eagerquietly"       "easily"             "out"               
##  [829] "earth"              "iago"               "iago"              
##  [832] "earth"              "earth"              "ourselves"         
##  [835] "ourselves"          "eureka"             "eureka"            
##  [838] "out"                "each"               "ought"             
##  [841] "eaten"              "out"                "iambing"           
##  [844] "air"                "our"                "europe"            
##  [847] "earth"              "out"                "our"               
##  [850] "out"                "augury"             "easily"            
##  [853] "out"                "air"                "earth"             
##  [856] "our"                "our"                "iustum"            
##  [859] "out"                "iooking"            "east"              
##  [862] "ought"              "out"                "outward"           
##  [865] "outward"            "out"                "eugene"            
##  [868] "eiaculatio"         "earth"              "our"               
##  [871] "out"                "iudicia"            "iustitiæ"          
##  [874] "out"                "out"                "eat"               
##  [877] "our"                "eastward"           "eeled"             
##  [880] "out"                "ear"                "air"               
##  [883] "outlet"             "air"                "earl"              
##  [886] "earl"               "out"                "easy"              
##  [889] "earthly"            "out"                "out"               
##  [892] "eagerly"            "out"                "early"             
##  [895] "air"                "out"                "out"               
##  [898] "out"                "ointments"          "air"               
##  [901] "out"                "out"                "auctionrooms"      
##  [904] "auctioneer"         "out"                "out"               
##  [907] "oil"                "our"                "out"               
##  [910] "outside"            "outside"            "easy"              
##  [913] "outriders"          "earth"              "earth"             
##  [916] "each"               "each"               "eighth"            
##  [919] "outside"            "our"                "out"               
##  [922] "air"                "our"                "out"               
##  [925] "our"                "either"             "outside"           
##  [928] "our"                "ooo"                "air"               
##  [931] "outriders"          "our"                "out"               
##  [934] "eastward"           "eating"             "out"               
##  [937] "easy"               "out"                "out"               
##  [940] "out"                "either"             "out"               
##  [943] "out"                "earl"               "out"               
##  [946] "out"                "outside"            "out"               
##  [949] "each"               "earl"               "out"               
##  [952] "earl"               "eager"              "air"               
##  [955] "outriders"          "ear"                "outriders"         
##  [958] "outpassed"          "austro"             "aid"               
##  [961] "eating"             "eugene"             "each"              
##  [964] "earth"              "oo"                 "eau"               
##  [967] "eagerly"            "eagerly"            "ear"               
##  [970] "ear"                "out"                "ear"               
##  [973] "out"                "ears"               "ears"              
##  [976] "aaron"              "each"               "out"               
##  [979] "each"               "each"               "oils"              
##  [982] "eat"                "eat"                "eat"               
##  [985] "out"                "air"                "eastern"           
##  [988] "euphonious"         "out"                "outsmiled"         
##  [991] "eat"                "each"               "easily"            
##  [994] "eastern"            "aimless"            "aim"               
##  [997] "out"                "earshot"            "air"               
## [1000] "ear"                "eau"                "our"               
## [1003] "either"             "ear"                "outspread"         
## [1006] "out"                "eunuchs"            "out"               
## [1009] "outheld"            "air"                "out"               
## [1012] "air"                "ear"                "air"               
## [1015] "easy"               "air"                "ear"               
## [1018] "out"                "eau"                "air"               
## [1021] "ears"               "each"               "each"              
## [1024] "air"                "out"                "out"               
## [1027] "ear"                "each"               "ousted"            
## [1030] "out"                "ought"              "air"               
## [1033] "air"                "each"               "outtohelloutofthat"
## [1036] "out"                "out"                "out"               
## [1039] "ought"              "earthquake"         "ees"               
## [1042] "ee"                 "eight"              "out"               
## [1045] "ee"                 "out"                "authentic"         
## [1048] "ear"                "ears"               "each"              
## [1051] "each"               "ear"                "ears"              
## [1054] "ear"                "ee"                 "outside"           
## [1057] "eating"             "ear"                "earth"             
## [1060] "ooddleooddle"       "our"                "outstretched"      
## [1063] "earth"              "earth’s"            "eunuch"            
## [1066] "easter"             "eighteen"           "out"               
## [1069] "out"                "air"                "each"              
## [1072] "out"                "ear"                "eavesdropping"     
## [1075] "air"                "ear"                "eightpence"        
## [1078] "air"                "ears"               "eeee"              
## [1081] "out"                "out"                "each"              
## [1084] "earnestly"          "oozing"             "oo"                
## [1087] "earth"              "out"                "out"               
## [1090] "out"                "eat"                "our"               
## [1093] "our"                "out"                "east"              
## [1096] "eugenic"            "eucalyptus"         "eels"              
## [1099] "earth"              "out"                "out"               
## [1102] "europeus"           "easily"             "eoghan"            
## [1105] "out"                "out"                "out"               
## [1108] "eightyfive"         "out"                "outdone"           
## [1111] "outside"            "out"                "out"               
## [1114] "earthname"          "our"                "out"               
## [1117] "eastern"            "earth"              "out"               
## [1120] "earnestly"          "our"                "out"               
## [1123] "out"                "eat"                "out"               
## [1126] "out"                "out"                "out"               
## [1129] "outwards"           "out"                "ought"             
## [1132] "ought"              "out"                "out"               
## [1135] "eating"             "out"                "our"               
## [1138] "our"                "our"                "aid"               
## [1141] "ueberallgemein"     "eighth"             "eunuch"            
## [1144] "our"                "easily"             "authorities"       
## [1147] "our"                "audience"           "audience"          
## [1150] "outburst"           "aint"               "out"               
## [1153] "ought"              "out"                "our"               
## [1156] "ours"               "out"                "our"               
## [1159] "our"                "out"                "out"               
## [1162] "our"                "out"                "out"               
## [1165] "aisle"              "out"                "iopas"             
## [1168] "out"                "out"                "eight"             
## [1171] "our"                "eireann"            "out"               
## [1174] "aunt"               "auspices"           "eireann"           
## [1177] "our"                "our"                "our"               
## [1180] "audience"           "out"                "out"               
## [1183] "out"                "out"                "air"               
## [1186] "out"                "out"                "out"               
## [1189] "eightpence"         "our"                "iar"               
## [1192] "iar"                "our"                "our"               
## [1195] "our"                "european"           "european"          
## [1198] "europe"             "europe"             "outsider"          
## [1201] "outhouse"           "our"                "our"               
## [1204] "our"                "our"                "our"               
## [1207] "our"                "our"                "our"               
## [1210] "our"                "our"                "our"               
## [1213] "our"                "our"                "our"               
## [1216] "our"                "our"                "eire"              
## [1219] "europe"             "oakholme"           "out"               
## [1222] "our"                "europe"             "our"               
## [1225] "our"                "earl"               "our"               
## [1228] "out"                "out"                "ought"             
## [1231] "our"                "earth"              "out"               
## [1234] "out"                "earth"              "earth"             
## [1237] "earth"              "our"                "out"               
## [1240] "out"                "our"                "europe"            
## [1243] "out"                "earl"               "ought"             
## [1246] "out"                "out"                "out"               
## [1249] "out"                "authors"            "each"              
## [1252] "each"               "eagle"              "our"               
## [1255] "auction"            "ear"                "out"               
## [1258] "august"             "out"                "out"               
## [1261] "easy"               "out"                "our"               
## [1264] "our"                "ourselves"          "aught"             
## [1267] "aught"              "out"                "our"               
## [1270] "augustine"          "aureoles"           "out"               
## [1273] "eis"                "auctore"            "out"               
## [1276] "out"                "each"               "outer"             
## [1279] "out"                "out"                "out"               
## [1282] "aughty"             "out"                "our"               
## [1285] "earthquake"         "each"               "authority"         
## [1288] "our"                "aiding"             "oaths"             
## [1291] "out"                "out"                "air"               
## [1294] "out"                "oil"                "our"               
## [1297] "ointments"          "either"             "out"               
## [1300] "easily"             "out"                "out"               
## [1303] "out"                "out"                "out"               
## [1306] "oak"                "each"               "aired"             
## [1309] "out"                "out"                "out"               
## [1312] "eating"             "eat"                "out"               
## [1315] "out"                "out"                "out"               
## [1318] "air"                "our"                "ears"              
## [1321] "out"                "out"                "our"               
## [1324] "aimed"              "aim"                "air"               
## [1327] "out"                "out"                "out"               
## [1330] "out"                "out"                "out"               
## [1333] "out"                "out"                "out"               
## [1336] "easily"             "out"                "our"               
## [1339] "out"                "out"                "ought"             
## [1342] "out"                "ear"                "out"               
## [1345] "easter"             "out"                "early"             
## [1348] "out"                "out"                "eight"             
## [1351] "out"                "out"                "out"               
## [1354] "out"                "eis"                "out"               
## [1357] "out"                "out"                "out"               
## [1360] "easier"             "author"             "out"               
## [1363] "out"                "out"                "out"               
## [1366] "out"                "ought"              "out"               
## [1369] "air"                "out"                "out"               
## [1372] "either"             "out"                "out"               
## [1375] "air"                "out"                "oil"               
## [1378] "air"                "out"                "out"               
## [1381] "out"                "east"               "either"            
## [1384] "out"                "each"               "each"              
## [1387] "each"               "aid"                "ought"             
## [1390] "oil"                "out"                "eating"            
## [1393] "out"                "out"                "out"               
## [1396] "earth"              "out"                "out"               
## [1399] "oughtn’t"           "out"                "out"               
## [1402] "earth"              "out"                "out"               
## [1405] "out"                "out"                "out"               
## [1408] "out"                "oil"                "each"              
## [1411] "eat"                "out"                "ourselves"         
## [1414] "out"                "eight"              "oilpainting"       
## [1417] "out"                "eightyseven"        "out"               
## [1420] "out"                "out"                "eagle"             
## [1423] "out"                "our"                "out"               
## [1426] "out"                "earth"              "out"               
## [1429] "out"                "out"                "out"               
## [1432] "out"                "out"                "out"               
## [1435] "air"                "earnest"            "aim"               
## [1438] "each"               "out"                "out"               
## [1441] "ought"              "early"              "outside"           
## [1444] "out"                "eighty"             "out"               
## [1447] "eamus"              "eamus"              "eamus"             
## [1450] "audacious"          "our"                "eases"             
## [1453] "earth"              "outwandered"        "oil"               
## [1456] "earnest"            "each"               "aught"             
## [1459] "out"                "out"                "air"               
## [1462] "oily"               "out"                "out"               
## [1465] "aid"                "out"                "out"               
## [1468] "each"               "our"                "each"              
## [1471] "either"             "each"               "out"               
## [1474] "out"                "our"                "each"              
## [1477] "our"                "out"                "our"               
## [1480] "earthly"            "our"                "our"               
## [1483] "augustine"          "our"                "out"               
## [1486] "out"                "our"                "our"               
## [1489] "out"                "either"             "out"               
## [1492] "aught"              "earth"              "out"               
## [1495] "out"                "oath"               "out"               
## [1498] "aux"                "earnest"            "auctions"          
## [1501] "our"                "out"                "our"               
## [1504] "eunuch"             "ear"                "oil"               
## [1507] "each"               "our"                "out"               
## [1510] "out"                "oars"               "out"               
## [1513] "out"                "out"                "our"               
## [1516] "our"                "our"                "auditors"          
## [1519] "eulogies"           "air"                "austin"            
## [1522] "out"                "author"             "our"               
## [1525] "authority"          "earnest"            "ear"               
## [1528] "our"                "our"                "outer"             
## [1531] "ear"                "our"                "outbreak"          
## [1534] "aint"               "earth"              "ours"              
## [1537] "outrageous"         "out"                "our"               
## [1540] "eating"             "auspicated"         "ought"             
## [1543] "ought"              "out"                "each"              
## [1546] "our"                "easier"             "out"               
## [1549] "ear"                "outlandish"         "authority"         
## [1552] "easily"             "out"                "out"               
## [1555] "europe"             "out"                "outstripped"       
## [1558] "air"                "easily"             "ear"               
## [1561] "eon"                "out"                "airs"              
## [1564] "early"              "either"             "outset"            
## [1567] "eug"                "our"                "our"               
## [1570] "our"                "out"                "our"               
## [1573] "early"              "earlier"            "our"               
## [1576] "our"                "eatable"            "out"               
## [1579] "our"                "oil"                "our"               
## [1582] "ear"                "out"                "earth"             
## [1585] "outflings"          "out"                "out"               
## [1588] "oath"               "air"                "air"               
## [1591] "air"                "air"                "euters"            
## [1594] "out"                "out"                "out"               
## [1597] "our"                "ours"               "out"               
## [1600] "aunty"              "out"                "oof"               
## [1603] "our"                "au"                 "our"               
## [1606] "our"                "our"                "aint"              
## [1609] "our"                "ook"                "outspake"          
## [1612] "aint"               "early"              "oillamp"           
## [1615] "oaths"              "out"                "iuventutem"        
## [1618] "out"                "each"               "aurora"            
## [1621] "out"                "out"                "easily"            
## [1624] "ought"              "out"                "out"               
## [1627] "out"                "out"                "air"               
## [1630] "early"              "east"               "earth"             
## [1633] "ears"               "eugene"             "out"               
## [1636] "each"               "ought"              "our"               
## [1639] "out"                "out"                "out"               
## [1642] "out"                "oatmeal"            "eating"            
## [1645] "out"                "eagerly"            "outside"           
## [1648] "out"                "aint"               "our"               
## [1651] "outlolling"         "eat"                "eightpence"        
## [1654] "out"                "each"               "austria"           
## [1657] "out"                "ought"              "our"               
## [1660] "earth"              "our"                "our"               
## [1663] "our"                "author"             "out"               
## [1666] "out"                "aureole"            "ear"               
## [1669] "eightfour"          "europe"             "outbreast"         
## [1672] "out"                "ought"              "out"               
## [1675] "out"                "out"                "out"               
## [1678] "each"               "aught"              "out"               
## [1681] "outside"            "earflaps"           "eulogised"         
## [1684] "earliest"           "air"                "ear"               
## [1687] "earnestly"          "oaths"              "ears"              
## [1690] "ear"                "eightyfive"         "ears"              
## [1693] "air"                "eightyone"          "out"               
## [1696] "eagles"             "ear"                "out"               
## [1699] "ear"                "our"                "our"               
## [1702] "our"                "our"                "aurora"            
## [1705] "our"                "eagles"             "outfitters"        
## [1708] "earl"               "air"                "eagerly"           
## [1711] "earthly"            "our"                "our"               
## [1714] "our"                "outburst"           "our"               
## [1717] "our"                "our"                "our"               
## [1720] "our"                "ear"                "eats"              
## [1723] "air"                "our"                "austrian"          
## [1726] "eightday"           "our"                "iiiiiiiiiaaaaaaach"
## [1729] "our"                "out"                "earth"             
## [1732] "oilskin"            "earliest"           "oil"               
## [1735] "eustace’s"          "out"                "eats"              
## [1738] "our"                "eight"              "each"              
## [1741] "ear"                "eats"               "each"              
## [1744] "autem"              "eunuch"             "eunuch"            
## [1747] "eius"               "ears"               "earlocks"          
## [1750] "out"                "our"                "earnestly"         
## [1753] "out"                "oilcloth"           "ails"              
## [1756] "outside"            "outstretched"       "out"               
## [1759] "out"                "our"                "ears"              
## [1762] "our"                "audience"           "our"               
## [1765] "aint"               "eight"              "our"               
## [1768] "out"                "eels"               "aum"               
## [1771] "aum"                "ears"               "our"               
## [1774] "out"                "either"             "our"               
## [1777] "our"                "automatic"          "ear"               
## [1780] "outlandish"         "out"                "out"               
## [1783] "air"                "our"                "our"               
## [1786] "out"                "out"                "out"               
## [1789] "out"                "out"                "out"               
## [1792] "out"                "outofitnow"         "iacchia"           
## [1795] "eunuch"             "out"                "out"               
## [1798] "outspread"          "out"                "easter"            
## [1801] "easterkissing"      "ears"               "eagle"             
## [1804] "outside"            "eat"                "eats"              
## [1807] "eardrops"           "eardrop"            "our"               
## [1810] "out"                "out"                "out"               
## [1813] "out"                "outsider"           "ear"               
## [1816] "out"                "out"                "earnest"           
## [1819] "outside"            "ounce"              "augustus"          
## [1822] "eight"              "each"               "earnestly"         
## [1825] "outhouse"           "out"                "our"               
## [1828] "oath"               "out"                "our"               
## [1831] "out"                "our"                "out"               
## [1834] "eightpence"         "easy"               "outdoor"           
## [1837] "eunuch"             "out"                "out"               
## [1840] "our"                "our"                "aunt"              
## [1843] "our"                "auction"            "out"               
## [1846] "our"                "earth"              "out"               
## [1849] "oakframe"           "our"                "aurora"            
## [1852] "oil"                "oak"                "out"               
## [1855] "ears"               "our"                "our"               
## [1858] "our"                "out"                "our"               
## [1861] "air"                "our"                "air"               
## [1864] "out"                "earth"              "either"            
## [1867] "eat"                "our"                "our"               
## [1870] "out"                "out"                "ear"               
## [1873] "out"                "earned"             "out"               
## [1876] "out"                "out"                "our"               
## [1879] "ought"              "eat"                "air"               
## [1882] "out"                "ought"              "out"               
## [1885] "out"                "out"                "ointment"          
## [1888] "iagogo"             "iagogogo"           "eights"            
## [1891] "iusti"              "outspread"          "air"               
## [1894] "our"                "eagle"              "earth"             
## [1897] "our"                "augur’s"            "air"               
## [1900] "out"                "each"               "each"              
## [1903] "each"               "iubilantium"        "our"               
## [1906] "oinopa"             "eagerly"            "out"               
## [1909] "outstretched"       "out"                "air"               
## [1912] "out"                "out"                "aaron"             
## [1915] "ear"                "oignons"            "out"               
## [1918] "our"                "ear"                "ear"               
## [1921] "out"                "aussi"              "eats"              
## [1924] "our"                "each"               "our"               
## [1927] "eagles"             "earth"              "air"               
## [1930] "earth"              "aiulella"           "ear"               
## [1933] "outstretched"       "air"                "each"              
## [1936] "each"               "easily"             "out"               
## [1939] "out"                "ourselves"          "oats"              
## [1942] "our"                "our"                "out"               
## [1945] "outside"            "out"                "out"               
## [1948] "iii"                "outside"            "our"               
## [1951] "earn"               "out"                "out"               
## [1954] "out"                "outside"            "aunt"              
## [1957] "out"                "earth"              "oath"              
## [1960] "out"                "out"                "out"               
## [1963] "eat"                "out"                "out"               
## [1966] "out"                "out"                "out"               
## [1969] "out"                "out"                "out"               
## [1972] "euchred"            "oatmealwater"       "eaten"             
## [1975] "aid"                "earthly"            "out"               
## [1978] "augmented"          "our"                "eating"            
## [1981] "ought"              "audible"            "ear"               
## [1984] "our"                "out"                "eavesdropping"     
## [1987] "out"                "aims"               "out"               
## [1990] "audience"           "easily"             "eating"            
## [1993] "out"                "eats"               "out"               
## [1996] "outside"            "eating"             "our"               
## [1999] "outside"            "out"                "our"               
## [2002] "eastbourne"         "our"                "easily"            
## [2005] "each"               "early"              "eighties"          
## [2008] "eightyone"          "europa"             "our"               
## [2011] "out"                "out"                "out"               
## [2014] "oilskin"            "easy"               "eighteen"          
## [2017] "eaten"              "outwardly"          "ought"             
## [2020] "authorities"        "outside"            "authority"         
## [2023] "out"                "our"                "our"               
## [2026] "out"                "eatinghouse"        "eatables"          
## [2029] "out"                "ought"              "eat"               
## [2032] "eat"                "our"                "air"               
## [2035] "oakum"              "our"                "outline"           
## [2038] "our"                "aid"                "out"               
## [2041] "out"                "each"               "out"               
## [2044] "out"                "out"                "eased"             
## [2047] "easily"             "au"                 "ears"              
## [2050] "airing"             "earth"              "out"               
## [2053] "auditors"           "our"                "ours"              
## [2056] "out"                "out"                "outrage"           
## [2059] "our"                "outlived"           "ought"             
## [2062] "either"             "our"                "out"               
## [2065] "audibly"            "ear"                "out"               
## [2068] "outset"             "either"             "our"               
## [2071] "out"                "each"               "air"               
## [2074] "ear"                "early"              "aid"               
## [2077] "out"                "aimlessly"          "our"               
## [2080] "out"                "outsider"           "out"               
## [2083] "eatondph"           "out"                "outsider"          
## [2086] "ii"                 "out"                "ought"             
## [2089] "out"                "either"             "out"               
## [2092] "out"                "auspicious"         "easily"            
## [2095] "out"                "oath"               "out"               
## [2098] "out"                "augmented"          "out"               
## [2101] "out"                "out"                "out"               
## [2104] "out"                "early"              "out"               
## [2107] "out"                "out"                "earlier"           
## [2110] "either"             "early"              "out"               
## [2113] "out"                "ought"              "eat"               
## [2116] "outset"             "our"                "either"            
## [2119] "ouns"               "our"                "out"               
## [2122] "out"                "earl"               "out"               
## [2125] "euston"             "out"                "ears"              
## [2128] "out"                "out"                "out"               
## [2131] "either"             "outstay"            "oilskin"           
## [2134] "earthquake"         "out"                "out"               
## [2137] "air"                "air"                "out"               
## [2140] "eighty"             "air"                "out"               
## [2143] "airs"               "our"                "eagle"             
## [2146] "air"                "out"                "easily"            
## [2149] "authority"          "easily"             "out"               
## [2152] "easily"             "austell"            "iota"              
## [2155] "out"                "each"               "early"             
## [2158] "each"               "air"                "aunt"              
## [2161] "outer"              "eustace"            "air"               
## [2164] "aught"              "ounces"             "augmented"         
## [2167] "outside"            "outside"            "each"              
## [2170] "aided"              "either"             "each"              
## [2173] "eight"              "oil"                "eugen"             
## [2176] "earlier"            "either"             "aid"               
## [2179] "aeronautic"         "airbladders"        "out"               
## [2182] "our"                "autumn"             "out"               
## [2185] "auditors"           "augurative"         "our"               
## [2188] "aid"                "ease"               "author"            
## [2191] "each"               "autonomy"           "auditive"          
## [2194] "auditively"         "out"                "out"               
## [2197] "out"                "austrian"           "earwashing"        
## [2200] "auguries"           "aerial"             "each"              
## [2203] "each"               "auditorium"         "audience"          
## [2206] "each"               "earth"              "our"               
## [2209] "our"                "our"                "eons"              
## [2212] "eons"               "earth"              "earth"             
## [2215] "each"               "each"               "each"              
## [2218] "easier"             "august"             "auriga"            
## [2221] "air"                "aid"                "oil"               
## [2224] "aungier"            "each"               "augmented"         
## [2227] "each"               "audible"            "each"              
## [2230] "iubilantium"        "earth"              "east"              
## [2233] "air"                "early"              "easychair"         
## [2236] "ii"                 "author’s"           "eugen"             
## [2239] "auction"            "each"               "each"              
## [2242] "each"               "earth"              "eaves"             
## [2245] "oak"                "automatic"          "oil"               
## [2248] "oak"                "outoffices"         "eeltraps"          
## [2251] "outdoor"            "outline"            "aims"              
## [2254] "earliest"           "outsider"           "air"               
## [2257] "eagle"              "earth"              "early"             
## [2260] "east"               "automatic"          "aitch"             
## [2263] "uu"                 "easter"             "austrian"          
## [2266] "outlay"             "author"             "our"               
## [2269] "eighteen"           "out"                "austria"           
## [2272] "europe"             "outdoor"            "eaters"            
## [2275] "eons"               "out"                "outsize"           
## [2278] "each"               "each"               "each"              
## [2281] "augmenting"         "outfitter"          "outrage"           
## [2284] "outrage"            "outrage"            "outraged"          
## [2287] "automatic"          "aorist"             "aorist"            
## [2290] "auxiliary"          "eastern"            "each"              
## [2293] "author"             "author"             "aeronautical"      
## [2296] "author"             "author"             "each"              
## [2299] "each"               "earth"              "auk’s"             
## [2302] "auks"               "out"                "ailments"          
## [2305] "earthquakes"        "our"                "out"               
## [2308] "out"                "either"             "out"               
## [2311] "out"                "out"                "out"               
## [2314] "eat"                "our"                "out"               
## [2317] "aunt"               "out"                "aunt"              
## [2320] "out"                "out"                "out"               
## [2323] "out"                "either"             "out"               
## [2326] "out"                "out"                "ought"             
## [2329] "out"                "out"                "eaten"             
## [2332] "eaten"              "out"                "out"               
## [2335] "out"                "out"                "ears"              
## [2338] "out"                "out"                "our"               
## [2341] "easily"             "out"                "eat"               
## [2344] "out"                "out"                "out"               
## [2347] "out"                "out"                "out"               
## [2350] "out"                "out"                "out"               
## [2353] "out"                "air"                "outside"           
## [2356] "out"                "out"                "earth"             
## [2359] "out"                "out"                "our"               
## [2362] "each"               "out"                "out"               
## [2365] "out"                "out"                "out"               
## [2368] "east"               "oom"                "out"               
## [2371] "out"                "out"                "out"               
## [2374] "outsider"           "out"                "eat"               
## [2377] "easily"             "out"                "our"               
## [2380] "either"             "easy"               "out"               
## [2383] "out"                "out"                "ear"               
## [2386] "out"                "out"                "out"               
## [2389] "out"                "out"                "ought"             
## [2392] "out"                "out"                "out"               
## [2395] "out"                "out"                "out"               
## [2398] "out"                "out"                "outside"           
## [2401] "out"                "out"                "out"               
## [2404] "out"                "ought"              "out"               
## [2407] "out"                "out"                "out"               
## [2410] "out"                "out"                "out"               
## [2413] "out"                "ear"                "out"               
## [2416] "out"                "our"                "our"               
## [2419] "east"               "eugene"             "either"            
## [2422] "out"                "easy"               "aunt"              
## [2425] "out"                "out"                "out"               
## [2428] "out"                "either"             "outside"           
## [2431] "out"                "eight"              "out"               
## [2434] "earthly"            "out"                "easter"            
## [2437] "out"                "out"                "each"              
## [2440] "out"                "out"                "outside"           
## [2443] "out"                "out"                "out"               
## [2446] "out"                "out"                "out"               
## [2449] "out"                "out"                "either"            
## [2452] "europa"             "out"                "out"               
## [2455] "oer"                "out"                "each"              
## [2458] "either"             "easy"               "eeeee"             
## [2461] "easy"               "out"                "out"               
## [2464] "eels"               "each"               "out"               
## [2467] "out"                "oar"                "out"               
## [2470] "out"                "earrings"           "out"               
## [2473] "ought"              "out"                "easy"              
## [2476] "ought"              "out"                "out"               
## [2479] "out"                "out"                "out"               
## [2482] "out"                "oughtnt"            "out"               
## [2485] "out"                "outside"            "each"              
## [2488] "ear"                "out"                "out"               
## [2491] "out"                "auction"            "out"               
## [2494] "out"                "out"                "easy"              
## [2497] "easy"               "easychair"          "oughtnt"           
## [2500] "easy"               "out"                "easy"              
## [2503] "easy"               "easy"               "easy"              
## [2506] "ought"              "easily"             "out"               
## [2509] "out"                "out"                "ought"             
## [2512] "out"                "out"                "our"               
## [2515] "ourselves"          "easy"               "our"               
## [2518] "either"             "our"                "out"               
## [2521] "ought"              "eat"                "out"               
## [2524] "ears"               "earns"              "out"               
## [2527] "out"                "author"             "ought"             
## [2530] "out"                "out"                "either"            
## [2533] "out"                "ounce"              "out"               
## [2536] "air"                "europa"             "out"               
## [2539] "out"                "our"                "out"               
## [2542] "aunt"               "either"             "aunt"              
## [2545] "out"                "out"                "either"            
## [2548] "our"                "our"                "out"               
## [2551] "out"                "out"                "out"               
## [2554] "out"                "oughtnt"            "our"               
## [2557] "air"                "either"             "easy"              
## [2560] "early"              "out"                "out"               
## [2563] "out"                "out"                "ought"             
## [2566] "out"                "out"                "out"               
## [2569] "out"                "out"                "out"               
## [2572] "out"                "out"                "early"             
## [2575] "oats"               "out"                "out"               
## [2578] "out"                "auctions"           "europe"            
## [2581] "outside"
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
str_view(new_string, 
         "(cei|[^c]ie)", ## "cei" or "ie" not preceded by "c"
         match = TRUE)
```

<!--html_preserve--><div id="htmlwidget-cdf908e5d1712cf2e56c" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-cdf908e5d1712cf2e56c">{"x":{"html":"<ul>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>love<span class='match'>lie<\/span>st<\/li>\n  <li>par<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>impa<span class='match'>tie<\/span>ntly<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>an<span class='match'>xie<\/span>ty<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>s<span class='match'>hie<\/span>lding<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>ndship<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>emp<span class='match'>tie<\/span>d<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ver<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>be<span class='match'>lie<\/span>ver<\/li>\n  <li>be<span class='match'>lie<\/span>ver<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>here<span class='match'>sie<\/span>s<\/li>\n  <li>s<span class='match'>hie<\/span>lds<\/li>\n  <li><span class='match'>die<\/span>u<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>st’s<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>rce<\/li>\n  <li>possibili<span class='match'>tie<\/span>s<\/li>\n  <li>gene<span class='match'>vie<\/span>ve<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ry<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>mie<\/span>n<\/li>\n  <li>co<span class='match'>pie<\/span>d<\/li>\n  <li>d<span class='match'>rie<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>play<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>cow<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>tie<\/span>s<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>crop<span class='match'>pie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>boo<span class='match'>kie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>hur<span class='match'>rie<\/span>d<\/li>\n  <li>play<span class='match'>fie<\/span>ld<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bloo<span class='match'>die<\/span>d<\/li>\n  <li>indust<span class='match'>rie<\/span>s<\/li>\n  <li>supp<span class='match'>lie<\/span>s<\/li>\n  <li>difficul<span class='match'>tie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>play<span class='match'>fie<\/span>ld<\/li>\n  <li>hap<span class='match'>pie<\/span>r<\/li>\n  <li>co<span class='match'>pie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>play<span class='match'>fie<\/span>ld<\/li>\n  <li>bullockbef<span class='match'>rie<\/span>nding<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>domi<span class='match'>nie<\/span><\/li>\n  <li>liber<span class='match'>tie<\/span>s<\/li>\n  <li>o<span class='match'>rie<\/span>nt<\/li>\n  <li>cro<span class='match'>zie<\/span>r<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>gondo<span class='match'>lie<\/span>rs<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>m<span class='match'>oie<\/span>ty<\/li>\n  <li>req<span class='match'>uie<\/span>scat<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>cris<span class='match'>sie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>jackp<span class='match'>rie<\/span>sts<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>a<span class='match'>pie<\/span>ce<\/li>\n  <li>epipha<span class='match'>nie<\/span>s<\/li>\n  <li>co<span class='match'>pie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>libra<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>sie<\/span>ved<\/li>\n  <li>cruci<span class='match'>fie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>die<\/span>u<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li><span class='match'>fie<\/span>ry<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li>kerc<span class='match'>hie<\/span>fed<\/li>\n  <li>beau<span class='match'>tie<\/span>s<\/li>\n  <li>sé<span class='match'>tie<\/span>r<\/li>\n  <li><span class='match'>vie<\/span>ille<\/li>\n  <li>pat<span class='match'>rie<\/span><\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>mes<span class='match'>sie<\/span>urs<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>gau<span class='match'>tie<\/span>r’s<\/li>\n  <li>ma<span class='match'>rie<\/span>s<\/li>\n  <li>cour<span class='match'>tie<\/span>rs<\/li>\n  <li>me<span class='match'>die<\/span>val<\/li>\n  <li>abstrusiosi<span class='match'>tie<\/span>s<\/li>\n  <li>skir<span class='match'>tie<\/span>s<\/li>\n  <li>sh<span class='match'>rie<\/span>ked<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>d<span class='match'>rie<\/span>r<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>she<span class='match'>fie<\/span>nd’s<\/li>\n  <li>ve<span class='match'>nie<\/span>t<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>flu<span class='match'>tie<\/span>st<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>flu<span class='match'>tie<\/span>r<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>ste<span class='match'>vie<\/span><\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>tie<\/span>ns<\/li>\n  <li><span class='match'>pie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>die<\/span>bus<\/li>\n  <li>pa<span class='match'>tie<\/span>ns<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>head<span class='match'>pie<\/span>ce<\/li>\n  <li>emp<span class='match'>tie<\/span>s<\/li>\n  <li>s<span class='match'>lie<\/span>ve<\/li>\n  <li>polo<span class='match'>nie<\/span>s<\/li>\n  <li>multip<span class='match'>lie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>ntly<\/li>\n  <li>melon<span class='match'>fie<\/span>lds<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>nav<span class='match'>vie<\/span>s<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>master<span class='match'>pie<\/span>ce<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>hur<span class='match'>rie<\/span>d<\/li>\n  <li>flur<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>ba<span class='match'>bie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>yie<\/span>lding<\/li>\n  <li><span class='match'>yie<\/span>lding<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>pa<span class='match'>tie<\/span>ntly<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>en<span class='match'>vie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>ponc<span class='match'>hie<\/span>lli’s<\/li>\n  <li>lor<span class='match'>rie<\/span>s<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>re<span class='match'>lie<\/span>ved<\/li>\n  <li><span class='match'>nie<\/span>nte<\/li>\n  <li>waterli<span class='match'>lie<\/span>s<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>re<span class='match'>vie<\/span>wing<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>grena<span class='match'>die<\/span>r<\/li>\n  <li>fusi<span class='match'>lie<\/span>rs<\/li>\n  <li>ea<span class='match'>sie<\/span>r<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li><span class='match'>yie<\/span>ld<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>f<span class='match'>rie<\/span>ndliness<\/li>\n  <li><span class='match'>vie<\/span>nna<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>cab<span class='match'>bie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>stupe<span class='match'>fie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>monaste<span class='match'>rie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>cris<span class='match'>sie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>cros<span class='match'>bie<\/span><\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>jar<span class='match'>vie<\/span>s<\/li>\n  <li>han<span class='match'>die<\/span>r<\/li>\n  <li>an<span class='match'>tie<\/span>nt<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>re<span class='match'>vie<\/span>wed<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>chum<span class='match'>mie<\/span>s<\/li>\n  <li>unmar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>bald<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>tanne<span class='match'>rie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>re<span class='match'>lie<\/span>ved<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>req<span class='match'>uie<\/span>m<\/li>\n  <li>hea<span class='match'>vie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>bie<\/span>r<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>bie<\/span>r<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>req<span class='match'>uie<\/span>m<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>dai<span class='match'>sie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li>con<span class='match'>cei<\/span>ve<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>cemete<span class='match'>rie<\/span>s<\/li>\n  <li>pop<span class='match'>pie<\/span>s<\/li>\n  <li>d<span class='match'>rie<\/span>d<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>s<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>bie<\/span>r<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>mum<span class='match'>mie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>rce<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>hie<\/span>f’s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>chai<span class='match'>nie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>putre<span class='match'>fie<\/span>d<\/li>\n  <li>morti<span class='match'>fie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>cou<span class='match'>rie<\/span>r<\/li>\n  <li>live<span class='match'>rie<\/span>d<\/li>\n  <li>cro<span class='match'>zie<\/span>r<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>machine<span class='match'>rie<\/span>s<\/li>\n  <li>que<span class='match'>rie<\/span>s<\/li>\n  <li>cas<span class='match'>hie<\/span>r<\/li>\n  <li>hur<span class='match'>rie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>ntly<\/li>\n  <li>obe<span class='match'>die<\/span>nt<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>ser<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>gab<span class='match'>rie<\/span>l<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>ser<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>impa<span class='match'>tie<\/span>ntly<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ving<\/li>\n  <li><span class='match'>cei<\/span>ling<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>noto<span class='match'>rie<\/span>ty<\/li>\n  <li>bullockbef<span class='match'>rie<\/span>nding<\/li>\n  <li>bloo<span class='match'>die<\/span>st<\/li>\n  <li><span class='match'>vie<\/span>nna<\/li>\n  <li><span class='match'>fie<\/span>ldmarshal<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>ky<span class='match'>rie<\/span><\/li>\n  <li>ky<span class='match'>rie<\/span><\/li>\n  <li>ky<span class='match'>rie<\/span><\/li>\n  <li><span class='match'>lie<\/span>ge<\/li>\n  <li>ret<span class='match'>rie<\/span>ve<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>tie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>dad<span class='match'>die<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>ear<span class='match'>lie<\/span>r<\/li>\n  <li>inter<span class='match'>vie<\/span>wer<\/li>\n  <li>stea<span class='match'>die<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>b<span class='match'>rie<\/span>fly<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>highp<span class='match'>rie<\/span>st<\/li>\n  <li>highp<span class='match'>rie<\/span>st<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>sthood<\/li>\n  <li>babema<span class='match'>rie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>prop<span class='match'>rie<\/span>tress<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>inter<span class='match'>vie<\/span>w<\/li>\n  <li>co<span class='match'>pie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>wa<span class='match'>xie<\/span>s<\/li>\n  <li>tric<span class='match'>kie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>tum<span class='match'>mie<\/span>s<\/li>\n  <li>do<span class='match'>wie<\/span><\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li>butte<span class='match'>rie<\/span>s<\/li>\n  <li>col<span class='match'>lie<\/span><\/li>\n  <li>bridge<span class='match'>pie<\/span>rs<\/li>\n  <li>ser<span class='match'>rie<\/span>d<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>obitua<span class='match'>rie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>rabbit<span class='match'>pie<\/span><\/li>\n  <li>hap<span class='match'>pie<\/span>r<\/li>\n  <li>ate<span class='match'>lie<\/span>r<\/li>\n  <li>p<span class='match'>rie<\/span>stylooking<\/li>\n  <li>con<span class='match'>cei<\/span>ted<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>skull<span class='match'>pie<\/span>ce<\/li>\n  <li>skull<span class='match'>pie<\/span>ce<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>liz<span class='match'>zie<\/span><\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>bel<span class='match'>lie<\/span>s<\/li>\n  <li>ba<span class='match'>bie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>hor<span class='match'>nie<\/span>s<\/li>\n  <li>bil<span class='match'>lie<\/span>s<\/li>\n  <li>socie<span class='match'>tie<\/span>s<\/li>\n  <li>loo<span class='match'>nie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li>liz<span class='match'>zie<\/span><\/li>\n  <li>healt<span class='match'>hie<\/span>r<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>ldglasses<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>fair<span class='match'>vie<\/span>w<\/li>\n  <li>slow<span class='match'>lie<\/span>r<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>chum<span class='match'>mie<\/span>s<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>hap<span class='match'>pie<\/span>r<\/li>\n  <li><span class='match'>yie<\/span>lded<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>yie<\/span>lded<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li><span class='match'>fie<\/span>ldmarshals<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>hy<span class='match'>gie<\/span>ne<\/li>\n  <li>ea<span class='match'>sie<\/span>r<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li>ber<span class='match'>rie<\/span>s<\/li>\n  <li>mago<span class='match'>rie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>yie<\/span>lding<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>rs<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>cro<span class='match'>nie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>fol<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>inter<span class='match'>vie<\/span>wer<\/li>\n  <li><span class='match'>hie<\/span>sos<\/li>\n  <li><span class='match'>fie<\/span><\/li>\n  <li>t<span class='match'>hie<\/span>f<\/li>\n  <li>rare<span class='match'>fie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>wie<\/span>lding<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>stu<span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>impa<span class='match'>tie<\/span>ntly<\/li>\n  <li>vil<span class='match'>lie<\/span>rs<\/li>\n  <li>pan<span class='match'>die<\/span>s<\/li>\n  <li>centu<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>ug<span class='match'>lie<\/span>st<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>corn<span class='match'>fie<\/span>ld<\/li>\n  <li>rye<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>caul<span class='match'>fie<\/span>ld<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>creec<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>lone<span class='match'>lie<\/span>st<\/li>\n  <li>bullockbef<span class='match'>rie<\/span>nding<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>possibili<span class='match'>tie<\/span>s<\/li>\n  <li>libra<span class='match'>rie<\/span>s<\/li>\n  <li>highp<span class='match'>rie<\/span>st<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>unq<span class='match'>uie<\/span>t<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>re<span class='match'>vie<\/span>w<\/li>\n  <li>ju<span class='match'>lie<\/span>t<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li>corn<span class='match'>fie<\/span>ld<\/li>\n  <li>rye<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>nen<\/li>\n  <li><span class='match'>fie<\/span>nds<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>wil<span class='match'>lie<\/span><\/li>\n  <li>wil<span class='match'>lie<\/span><\/li>\n  <li>hug<span class='match'>hie<\/span><\/li>\n  <li>wil<span class='match'>lie<\/span><\/li>\n  <li>grati<span class='match'>fie<\/span>d<\/li>\n  <li>wheatbel<span class='match'>lie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>stified<\/li>\n  <li>a<span class='match'>pie<\/span>ce<\/li>\n  <li>pampoo<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>cei<\/span>ling<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>herring<span class='match'>pie<\/span>s<\/li>\n  <li>gooseber<span class='match'>rie<\/span>d<\/li>\n  <li>ringocan<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>vie<\/span><\/li>\n  <li>dal<span class='match'>lie<\/span>d<\/li>\n  <li>birds<span class='match'>nie<\/span>s<\/li>\n  <li>cochonne<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>cro<span class='match'>nie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>high<span class='match'>fie<\/span>ld<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>histo<span class='match'>rie<\/span>s<\/li>\n  <li>fullbel<span class='match'>lie<\/span>d<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>stu<span class='match'>die<\/span>s<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>gorbel<span class='match'>lie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>nnese<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>req<span class='match'>uie<\/span>scat<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>vers<\/li>\n  <li>ene<span class='match'>mie<\/span>s<\/li>\n  <li>cod<span class='match'>pie<\/span>ce<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>bestiali<span class='match'>tie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>cava<span class='match'>lie<\/span>rs<\/li>\n  <li>toa<span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>s<span class='match'>kie<\/span>s<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>die<\/span>ppe<\/li>\n  <li>eagerq<span class='match'>uie<\/span>tly<\/li>\n  <li>mar<span class='match'>rie<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>apotheca<span class='match'>rie<\/span>s<\/li>\n  <li>uns<span class='match'>hie<\/span>lded<\/li>\n  <li>bu<span class='match'>rie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>petri<span class='match'>fie<\/span>d<\/li>\n  <li>va<span class='match'>rie<\/span>ty<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li>liz<span class='match'>zie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>glori<span class='match'>fie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>hap<span class='match'>pie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>unmar<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>unbe<span class='match'>lie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>unbe<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>unbe<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li>inter<span class='match'>vie<\/span>w<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>rosa<span class='match'>lie<\/span><\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>p<span class='match'>rie<\/span>steen<\/li>\n  <li>pur<span class='match'>lie<\/span>u<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>con<span class='match'>cei<\/span>ved<\/li>\n  <li>watercar<span class='match'>rie<\/span>r<\/li>\n  <li>rosa<span class='match'>lie<\/span><\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li><span class='match'>hie<\/span>rophantic<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li><span class='match'>mie<\/span>n<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>xa<span class='match'>vie<\/span>r’s<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>wor<span class='match'>rie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>t<span class='match'>hie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>mu<span class='match'>lie<\/span>ris<\/li>\n  <li><span class='match'>cei<\/span>led<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>dai<span class='match'>sie<\/span>s<\/li>\n  <li>sent<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>wed<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>bridge<span class='match'>pie<\/span>rs<\/li>\n  <li>tan<span class='match'>gie<\/span>r<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>gra<span class='match'>zie<\/span><\/li>\n  <li>gil<span class='match'>lie<\/span>s<\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>bald<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>pie<\/span>s<\/li>\n  <li>sal<span class='match'>lie<\/span>d<\/li>\n  <li>master<span class='match'>pie<\/span>ce<\/li>\n  <li>cost<span class='match'>lie<\/span>st<\/li>\n  <li>fril<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>yie<\/span>lded<\/li>\n  <li><span class='match'>vie<\/span>wed<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>casual<span class='match'>tie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li><span class='match'>lie<\/span>utenant’s<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>sie<\/span>ge<\/li>\n  <li>hur<span class='match'>rie<\/span>d<\/li>\n  <li>ru<span class='match'>bie<\/span>s<\/li>\n  <li>o<span class='match'>rie<\/span>nt<\/li>\n  <li>be<span class='match'>lie<\/span>vers<\/li>\n  <li><span class='match'>lie<\/span>abed<\/li>\n  <li>recti<span class='match'>fie<\/span>rs<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nd’s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>liber<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li>unf<span class='match'>rie<\/span>ndly<\/li>\n  <li><span class='match'>lie<\/span>utenantgeneral<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li><span class='match'>vie<\/span>nna<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span>utenantcolonel<\/li>\n  <li>smith<span class='match'>fie<\/span>ld<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>unper<span class='match'>cei<\/span>ved<\/li>\n  <li>depu<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li><span class='match'>lie<\/span>utenantgeneral<\/li>\n  <li>der<span class='match'>nie<\/span>r<\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li><span class='match'>lie<\/span>utenantcolonel<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>lad<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>rhapso<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>hur<span class='match'>rie<\/span>d<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>a<span class='match'>die<\/span>u<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>an<span class='match'>tie<\/span>nt<\/li>\n  <li>sh<span class='match'>rie<\/span>k<\/li>\n  <li>sh<span class='match'>rie<\/span>king<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>pie<\/span>rcing<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>soft<span class='match'>lie<\/span>r<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>hie<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>sun<span class='match'>nie<\/span>r<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li><span class='match'>lie<\/span>uten<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>obe<span class='match'>die<\/span>nt<\/li>\n  <li>obe<span class='match'>die<\/span>nt<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span>’s<\/li>\n  <li>rhapso<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>unwea<span class='match'>rie<\/span>d<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>multip<span class='match'>lie<\/span>d<\/li>\n  <li>blumen<span class='match'>lie<\/span>d<\/li>\n  <li>s<span class='match'>hie<\/span>ld<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>ric<span class='match'>hie<\/span>’s<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>rhapso<span class='match'>die<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st’s<\/li>\n  <li>p<span class='match'>rie<\/span>st’s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>sie<\/span>ge<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>emp<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>emp<span class='match'>tie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>fril<span class='match'>lie<\/span>s<\/li>\n  <li>sh<span class='match'>rie<\/span>k<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>bie<\/span>r<\/li>\n  <li>townc<span class='match'>rie<\/span>r<\/li>\n  <li><span class='match'>vie<\/span>wed<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li><span class='match'>vie<\/span>wed<\/li>\n  <li>t<span class='match'>hie<\/span>f<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>a<span class='match'>lie<\/span>nated<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>s<span class='match'>lie<\/span>vemargy<\/li>\n  <li>c<span class='match'>hie<\/span>ftain<\/li>\n  <li>c<span class='match'>hie<\/span>ftains<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>tal<span class='match'>lie<\/span>s<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>sie<\/span>ves<\/li>\n  <li>gooseber<span class='match'>rie<\/span>s<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li>raspber<span class='match'>rie<\/span>s<\/li>\n  <li>va<span class='match'>rie<\/span>ties<\/li>\n  <li>declivi<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li><span class='match'>fie<\/span>ldlark<\/li>\n  <li>lof<span class='match'>tie<\/span>r<\/li>\n  <li>extremi<span class='match'>tie<\/span>s<\/li>\n  <li>sars<span class='match'>fie<\/span>ld<\/li>\n  <li>alig<span class='match'>hie<\/span>ri<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>barn<span class='match'>fie<\/span>ld<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>ber<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>cost<span class='match'>lie<\/span>st<\/li>\n  <li>orange<span class='match'>fie<\/span>ry<\/li>\n  <li>enti<span class='match'>tie<\/span>s<\/li>\n  <li>possibili<span class='match'>tie<\/span>s<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>misc<span class='match'>hie<\/span>f<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>jes<span class='match'>sie<\/span><\/li>\n  <li>je<span class='match'>wie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>belf<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li>testi<span class='match'>fie<\/span>d<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li><span class='match'>pie<\/span>rrepaul<\/li>\n  <li>k<span class='match'>rie<\/span>gfried<\/li>\n  <li>cou<span class='match'>rie<\/span>r<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>rcingly<\/li>\n  <li><span class='match'>rie<\/span>nzi<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>shef<span class='match'>fie<\/span>ld<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>authori<span class='match'>tie<\/span>s<\/li>\n  <li>ser<span class='match'>rie<\/span>d<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li><span class='match'>lie<\/span>utenantcolonel<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li><span class='match'>die<\/span>tary<\/li>\n  <li>ac<span class='match'>hie<\/span>vements<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>kie<\/span>rnan<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>count<span class='match'>rie<\/span>s<\/li>\n  <li>gra<span class='match'>zie<\/span>r<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li>re<span class='match'>cei<\/span>vergeneral<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>bul<span class='match'>kie<\/span>r<\/li>\n  <li>courte<span class='match'>sie<\/span>s<\/li>\n  <li>fren<span class='match'>zie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>imp<span class='match'>lie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>skiv<span class='match'>vie<\/span>s<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>s<span class='match'>kie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>obe<span class='match'>die<\/span>nt<\/li>\n  <li>colo<span class='match'>nie<\/span>s<\/li>\n  <li>tongue<span class='match'>tie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>potte<span class='match'>rie<\/span>s<\/li>\n  <li>tanne<span class='match'>rie<\/span>s<\/li>\n  <li>pelt<span class='match'>rie<\/span>s<\/li>\n  <li>hob<span class='match'>bie<\/span>s<\/li>\n  <li>du<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>c<span class='match'>hie<\/span>ftain<\/li>\n  <li>cheva<span class='match'>lie<\/span>r<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>ved<\/li>\n  <li>hollyber<span class='match'>rie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>con<span class='match'>cei<\/span>ved<\/li>\n  <li>scari<span class='match'>fie<\/span>d<\/li>\n  <li>cur<span class='match'>rie<\/span>d<\/li>\n  <li>s<span class='match'>hie<\/span>lings<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>sars<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ldmarshal<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>corner<span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>ju<span class='match'>lie<\/span>t<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>facili<span class='match'>tie<\/span>s<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>ju<span class='match'>rie<\/span>s<\/li>\n  <li>indust<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>mie<\/span>n<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>s<span class='match'>hie<\/span>ld<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>corde<span class='match'>lie<\/span>rs<\/li>\n  <li><span class='match'>kie<\/span>ran<\/li>\n  <li>li<span class='match'>lie<\/span>s<\/li>\n  <li>ve<span class='match'>nie<\/span>nt<\/li>\n  <li><span class='match'>kie<\/span>rnan<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>reci<span class='match'>pie<\/span>nt<\/li>\n  <li>s<span class='match'>lie<\/span>ve<\/li>\n  <li>s<span class='match'>lie<\/span>ve<\/li>\n  <li>s<span class='match'>lie<\/span>ve<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>ordina<span class='match'>rie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>beau<span class='match'>tie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li><span class='match'>pie<\/span>rcing<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>un<span class='match'>die<\/span>s<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>nigh<span class='match'>tie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>un<span class='match'>tie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>ve<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>wy<span class='match'>lie<\/span>’s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>pin<span class='match'>nie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>stu<span class='match'>die<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>con<span class='match'>cei<\/span>ved<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>formali<span class='match'>tie<\/span>s<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li>gir<span class='match'>lie<\/span><\/li>\n  <li>trans<span class='match'>pie<\/span>rced<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>gab<span class='match'>rie<\/span>l<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>pret<span class='match'>tie<\/span>r<\/li>\n  <li>dain<span class='match'>tie<\/span>r<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>misc<span class='match'>hie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>ti<span class='match'>die<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>de<span class='match'>cei<\/span>ver<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>i<span class='match'>vie<\/span>d<\/li>\n  <li>ea<span class='match'>sie<\/span>r<\/li>\n  <li>wy<span class='match'>lie<\/span><\/li>\n  <li>co<span class='match'>pie<\/span>d<\/li>\n  <li>tran<span class='match'>sie<\/span>nt<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>ros<span class='match'>sie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>unsul<span class='match'>lie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>month<span class='match'>lie<\/span>s<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>linge<span class='match'>rie<\/span><\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>rosa<span class='match'>rie<\/span>s<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>drim<span class='match'>mie<\/span>’s<\/li>\n  <li>neck<span class='match'>tie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>kid<span class='match'>die<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>ba<span class='match'>bie<\/span>s<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>car<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>hub<span class='match'>bie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>chande<span class='match'>lie<\/span>rs<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>p<span class='match'>rie<\/span>st’s<\/li>\n  <li>gab<span class='match'>rie<\/span>l<\/li>\n  <li><span class='match'>cei<\/span>ling<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>pork<span class='match'>pie<\/span><\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>fril<span class='match'>lie<\/span>s<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>p<span class='match'>rie<\/span>st’s<\/li>\n  <li>f<span class='match'>rie<\/span>d<\/li>\n  <li>sa<span class='match'>pie<\/span>nce<\/li>\n  <li>stu<span class='match'>die<\/span>d<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li>o’s<span class='match'>hie<\/span>ls<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>partu<span class='match'>rie<\/span>nt<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>wa<span class='match'>rie<\/span>st<\/li>\n  <li>hea<span class='match'>vie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>massp<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>misbe<span class='match'>lie<\/span>ving<\/li>\n  <li><span class='match'>nie<\/span><\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>lie<\/span>ge<\/li>\n  <li><span class='match'>hie<\/span>d<\/li>\n  <li>good<span class='match'>lie<\/span>st<\/li>\n  <li><span class='match'>mie<\/span>n<\/li>\n  <li>f<span class='match'>rie<\/span>ndship<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>potheca<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>g<span class='match'>rie<\/span>ved<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>sh<span class='match'>rie<\/span>king<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd’s<\/li>\n  <li>g<span class='match'>rie<\/span>ved<\/li>\n  <li>p<span class='match'>lie<\/span>d<\/li>\n  <li>ve<span class='match'>nie<\/span>t<\/li>\n  <li>avent<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span>u<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>obe<span class='match'>die<\/span>nce<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>ky<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>o<span class='match'>rie<\/span>nt<\/li>\n  <li>atroci<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>e<span class='match'>tie<\/span>nne<\/li>\n  <li>apple<span class='match'>pie<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>flatte<span class='match'>rie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>con<span class='match'>cei<\/span>ve<\/li>\n  <li>good<span class='match'>lie<\/span>st<\/li>\n  <li>s<span class='match'>hie<\/span>ld<\/li>\n  <li>s<span class='match'>hie<\/span>ld<\/li>\n  <li>de<span class='match'>cei<\/span>ved<\/li>\n  <li>g<span class='match'>rie<\/span>vous<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li>d<span class='match'>rie<\/span>r<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>queeri<span class='match'>tie<\/span>s<\/li>\n  <li>boo<span class='match'>kie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>con<span class='match'>cei<\/span>ve<\/li>\n  <li>port<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>cour<span class='match'>tie<\/span>rs<\/li>\n  <li>co<span class='match'>pie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>proclivi<span class='match'>tie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>ved<\/li>\n  <li>inconve<span class='match'>nie<\/span>nt<\/li>\n  <li><span class='match'>die<\/span>t<\/li>\n  <li>chil<span class='match'>lie<\/span>s<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li>s<span class='match'>hie<\/span>lded<\/li>\n  <li><span class='match'>pie<\/span>bald<\/li>\n  <li>eulo<span class='match'>gie<\/span>s<\/li>\n  <li>analo<span class='match'>gie<\/span>s<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li>ral<span class='match'>lie<\/span>d<\/li>\n  <li>con<span class='match'>cei<\/span>t<\/li>\n  <li>live<span class='match'>lie<\/span>st<\/li>\n  <li>sa<span class='match'>lie<\/span>nt<\/li>\n  <li>ac<span class='match'>hie<\/span>ved<\/li>\n  <li><span class='match'>bie<\/span>n<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>tyran<span class='match'>nie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>butterf<span class='match'>lie<\/span>s<\/li>\n  <li>prop<span class='match'>rie<\/span>ties<\/li>\n  <li>sal<span class='match'>lie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>en<span class='match'>cei<\/span>nte<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>prop<span class='match'>rie<\/span>ties<\/li>\n  <li>p<span class='match'>lie<\/span>rs<\/li>\n  <li>rea<span class='match'>die<\/span>st<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>testi<span class='match'>fie<\/span>d<\/li>\n  <li>dundrea<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>semina<span class='match'>rie<\/span>s<\/li>\n  <li>vota<span class='match'>rie<\/span>s<\/li>\n  <li>re<span class='match'>lie<\/span>ve<\/li>\n  <li>a<span class='match'>lie<\/span>n<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>be<span class='match'>lie<\/span><\/li>\n  <li>de<span class='match'>nie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>ty<\/li>\n  <li><span class='match'>tie<\/span>s<\/li>\n  <li>seed<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>o<span class='match'>rie<\/span>nt<\/li>\n  <li>ea<span class='match'>sie<\/span>r<\/li>\n  <li>exempli<span class='match'>fie<\/span>d<\/li>\n  <li>con<span class='match'>cei<\/span>ved<\/li>\n  <li>classi<span class='match'>fie<\/span>d<\/li>\n  <li>master<span class='match'>pie<\/span>ce<\/li>\n  <li>be<span class='match'>lie<\/span>fs<\/li>\n  <li>abnormali<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>obe<span class='match'>die<\/span>nce<\/li>\n  <li>b<span class='match'>rie<\/span>fly<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>bando<span class='match'>lie<\/span>rwise<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>stu<span class='match'>die<\/span>d<\/li>\n  <li>bri<span class='match'>die<\/span><\/li>\n  <li>bri<span class='match'>die<\/span><\/li>\n  <li>pasture<span class='match'>fie<\/span>lds<\/li>\n  <li>magni<span class='match'>fie<\/span>d<\/li>\n  <li>s<span class='match'>kie<\/span>s<\/li>\n  <li>bullockbef<span class='match'>rie<\/span>nding<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>d<\/li>\n  <li>misc<span class='match'>hie<\/span>vously<\/li>\n  <li>po<span class='match'>sie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>bre<span class='match'>vie<\/span>r<\/li>\n  <li>car<span class='match'>rie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>myste<span class='match'>rie<\/span>s<\/li>\n  <li>orange<span class='match'>fie<\/span>ry<\/li>\n  <li>reci<span class='match'>pie<\/span>nt<\/li>\n  <li>lof<span class='match'>tie<\/span>st<\/li>\n  <li>va<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>unfructi<span class='match'>fie<\/span>d<\/li>\n  <li>prophe<span class='match'>sie<\/span>d<\/li>\n  <li>ba<span class='match'>bie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>delive<span class='match'>rie<\/span>s<\/li>\n  <li>ear<span class='match'>lie<\/span>r<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>signi<span class='match'>fie<\/span>s<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>stu<span class='match'>die<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>cher<span class='match'>rie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>tude<\/li>\n  <li>ser<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>die<\/span>t<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>circumam<span class='match'>bie<\/span>nt<\/li>\n  <li>fructi<span class='match'>fie<\/span>d<\/li>\n  <li>dad<span class='match'>die<\/span>s<\/li>\n  <li>jere<span class='match'>mie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>brol<span class='match'>lie<\/span>s<\/li>\n  <li>toot<span class='match'>sie<\/span>s<\/li>\n  <li>prai<span class='match'>rie<\/span><\/li>\n  <li>time<span class='match'>pie<\/span>ce<\/li>\n  <li>mince<span class='match'>pie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>jesi<span class='match'>fie<\/span>d<\/li>\n  <li><span class='match'>hie<\/span>lentman’s<\/li>\n  <li>sh<span class='match'>rie<\/span>ks<\/li>\n  <li>compag<span class='match'>nie<\/span><\/li>\n  <li>pox<span class='match'>fie<\/span>nd<\/li>\n  <li>put<span class='match'>tie<\/span>st<\/li>\n  <li>coo<span class='match'>kie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>hor<span class='match'>nie<\/span>s<\/li>\n  <li>piccanin<span class='match'>nie<\/span>s<\/li>\n  <li>dar<span class='match'>kie<\/span>s<\/li>\n  <li><span class='match'>tie<\/span>ns<\/li>\n  <li><span class='match'>tie<\/span>ns<\/li>\n  <li>gra<span class='match'>die<\/span>nt<\/li>\n  <li>jap<span class='match'>pie<\/span>s<\/li>\n  <li>do<span class='match'>wie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>pal<span class='match'>sie<\/span>d<\/li>\n  <li>egre<span class='match'>die<\/span>ntem<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>spa<span class='match'>nie<\/span>l<\/li>\n  <li>hur<span class='match'>rie<\/span>s<\/li>\n  <li>t<span class='match'>hie<\/span>ves<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>har<span class='match'>rie<\/span>rs<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>rcely<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li>bri<span class='match'>die<\/span><\/li>\n  <li>bri<span class='match'>die<\/span><\/li>\n  <li>bloo<span class='match'>die<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>ze<\/li>\n  <li>hur<span class='match'>rie<\/span>dly<\/li>\n  <li>chris<span class='match'>tie<\/span>s<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>pret<span class='match'>tie<\/span>st<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>one<span class='match'>pie<\/span>ce<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>polo<span class='match'>nie<\/span>s<\/li>\n  <li>had<span class='match'>die<\/span>s<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li>scarf<span class='match'>tie<\/span><\/li>\n  <li><span class='match'>fie<\/span>ldglasses<\/li>\n  <li>bando<span class='match'>lie<\/span>r<\/li>\n  <li>re<span class='match'>lie<\/span>ving<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>spa<span class='match'>nie<\/span>l<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>pluc<span class='match'>kie<\/span>st<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>sto<span class='match'>rie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ver<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>car<span class='match'>rie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>c<span class='match'>rie<\/span>r<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>ret<span class='match'>rie<\/span>ve<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>c<span class='match'>lie<\/span>nt<\/li>\n  <li>familiari<span class='match'>tie<\/span>s<\/li>\n  <li>c<span class='match'>lie<\/span>nt’s<\/li>\n  <li>c<span class='match'>lie<\/span>nt’s<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>c<span class='match'>lie<\/span>nt<\/li>\n  <li>c<span class='match'>lie<\/span>nt<\/li>\n  <li>app<span class='match'>lie<\/span>s<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>mon<span class='match'>sie<\/span>ur<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>t<span class='match'>hie<\/span>f<\/li>\n  <li>dar<span class='match'>bie<\/span>s<\/li>\n  <li>extremi<span class='match'>tie<\/span>s<\/li>\n  <li>ear<span class='match'>lie<\/span>st<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>mie<\/span>n<\/li>\n  <li>time<span class='match'>pie<\/span>ce<\/li>\n  <li>time<span class='match'>pie<\/span>ce<\/li>\n  <li>c<span class='match'>rie<\/span>r<\/li>\n  <li>hypertrop<span class='match'>hie<\/span>d<\/li>\n  <li><span class='match'>tie<\/span>d<\/li>\n  <li>toadbel<span class='match'>lie<\/span>d<\/li>\n  <li>pop<span class='match'>pie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>hea<span class='match'>vie<\/span>r<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>o<span class='match'>rie<\/span>nt<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>hie<\/span>rushaloim<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>fusi<span class='match'>lie<\/span>rs<\/li>\n  <li>fusi<span class='match'>lie<\/span>rs<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>far<span class='match'>rie<\/span>rs<\/li>\n  <li>lapida<span class='match'>rie<\/span>s<\/li>\n  <li>ho<span class='match'>sie<\/span>rs<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>balco<span class='match'>nie<\/span>s<\/li>\n  <li>territo<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>ge<\/li>\n  <li>vi<span class='match'>zie<\/span>r<\/li>\n  <li>embo<span class='match'>die<\/span>d<\/li>\n  <li><span class='match'>yie<\/span>ld<\/li>\n  <li>coun<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>pop<span class='match'>pie<\/span>s<\/li>\n  <li>ene<span class='match'>mie<\/span>s<\/li>\n  <li>gra<span class='match'>zie<\/span>rs<\/li>\n  <li><span class='match'>tie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>pal<span class='match'>sie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>pan<span class='match'>sie<\/span>s<\/li>\n  <li>hy<span class='match'>gie<\/span>ne<\/li>\n  <li>de<span class='match'>cei<\/span>ver<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>fun<span class='match'>nie<\/span>st<\/li>\n  <li>las<span class='match'>sie<\/span><\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li>do<span class='match'>wie<\/span><\/li>\n  <li><span class='match'>fie<\/span>ndish<\/li>\n  <li>ear<span class='match'>lie<\/span>st<\/li>\n  <li>ci<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>pa<span class='match'>tie<\/span>nt’s<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>d<span class='match'>rie<\/span>d<\/li>\n  <li>count<span class='match'>rie<\/span>s<\/li>\n  <li>compa<span class='match'>nie<\/span>s<\/li>\n  <li>beacons<span class='match'>fie<\/span>ld<\/li>\n  <li>vingtetu<span class='match'>nie<\/span>me<\/li>\n  <li>vingtetu<span class='match'>nie<\/span>me<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>flat<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>fril<span class='match'>lie<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>g<span class='match'>rie<\/span>ve<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>preoccu<span class='match'>pie<\/span>d<\/li>\n  <li>spa<span class='match'>nie<\/span>l<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>tapest<span class='match'>rie<\/span>d<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>vie<\/span>nt<\/li>\n  <li><span class='match'>sie<\/span>urs<\/li>\n  <li><span class='match'>rie<\/span>n<\/li>\n  <li>occu<span class='match'>pie<\/span>s<\/li>\n  <li>gil<span class='match'>lie<\/span>’s<\/li>\n  <li><span class='match'>pie<\/span><\/li>\n  <li>snap<span class='match'>pie<\/span>st<\/li>\n  <li>do<span class='match'>wie<\/span><\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>tie<\/span>d<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>ni<span class='match'>xie<\/span>’s<\/li>\n  <li>back<span class='match'>vie<\/span>w<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>linge<span class='match'>rie<\/span><\/li>\n  <li>pan<span class='match'>nie<\/span>r<\/li>\n  <li>de<span class='match'>cei<\/span>ve<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>extendi<span class='match'>fie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>car<span class='match'>rie<\/span>s<\/li>\n  <li>inter<span class='match'>vie<\/span>w<\/li>\n  <li>impa<span class='match'>tie<\/span>ntly<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>fie<\/span>rcely<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li>wor<span class='match'>rie<\/span>s<\/li>\n  <li>pret<span class='match'>tie<\/span>r<\/li>\n  <li>dain<span class='match'>tie<\/span>r<\/li>\n  <li>genito<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>ra<span class='match'>pie<\/span>r<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>rcing<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>min<span class='match'>nie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>per<span class='match'>cei<\/span>ves<\/li>\n  <li>expe<span class='match'>rie<\/span>nced<\/li>\n  <li>man<span class='match'>fie<\/span>ld’s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>rcing<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>p<span class='match'>lie<\/span>rs<\/li>\n  <li>linge<span class='match'>rie<\/span><\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>naugh<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>d’o<span class='match'>lie<\/span>r<\/li>\n  <li>conve<span class='match'>nie<\/span>nces<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>tie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>rcer<\/li>\n  <li>fowling<span class='match'>pie<\/span>ce<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>menf<span class='match'>rie<\/span>nds<\/li>\n  <li>groce<span class='match'>rie<\/span>s<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>bo<span class='match'>wie<\/span>knife<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>min<span class='match'>nie<\/span><\/li>\n  <li>sto<span class='match'>rie<\/span>s<\/li>\n  <li>prop<span class='match'>rie<\/span>tary<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>facul<span class='match'>tie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>ho<span class='match'>sie<\/span>ry<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>birdc<span class='match'>hie<\/span>f<\/li>\n  <li>watercar<span class='match'>rie<\/span>r<\/li>\n  <li>mucosi<span class='match'>tie<\/span>s<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>ri<span class='match'>vie<\/span>ra<\/li>\n  <li>swee<span class='match'>tie<\/span>s<\/li>\n  <li>apolo<span class='match'>gie<\/span>s<\/li>\n  <li>car<span class='match'>rie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>re<span class='match'>cei<\/span>pt<\/li>\n  <li>strawber<span class='match'>rie<\/span>s<\/li>\n  <li>digni<span class='match'>fie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>hur<span class='match'>rie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>clowne<span class='match'>rie<\/span>s<\/li>\n  <li>nudi<span class='match'>tie<\/span>s<\/li>\n  <li>contra<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>boo<span class='match'>kie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>impa<span class='match'>tie<\/span>ntly<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>kerc<span class='match'>hie<\/span>f<\/li>\n  <li>abili<span class='match'>tie<\/span>s<\/li>\n  <li>cava<span class='match'>lie<\/span>rs<\/li>\n  <li>cava<span class='match'>lie<\/span>rs<\/li>\n  <li>cava<span class='match'>lie<\/span>rs<\/li>\n  <li>sh<span class='match'>rie<\/span>ks<\/li>\n  <li>tric<span class='match'>kie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>lie<\/span>s<\/li>\n  <li>hur<span class='match'>rie<\/span>s<\/li>\n  <li>per<span class='match'>cei<\/span>ves<\/li>\n  <li>rep<span class='match'>lie<\/span>s<\/li>\n  <li>hur<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>handsomemar<span class='match'>rie<\/span>dwomanrubbedagainstwidebehindinclonskea<\/li>\n  <li>drim<span class='match'>mie<\/span>’s<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>vie<\/span>ille<\/li>\n  <li>me<span class='match'>die<\/span>val<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>ret<span class='match'>rie<\/span>ved<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>t<span class='match'>rie<\/span>s<\/li>\n  <li>terri<span class='match'>fie<\/span>d<\/li>\n  <li>trop<span class='match'>hie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>rce<\/li>\n  <li>fusi<span class='match'>lie<\/span>rs<\/li>\n  <li>halber<span class='match'>die<\/span>rs<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>sh<span class='match'>rie<\/span>ks<\/li>\n  <li>t<span class='match'>hie<\/span>ves<\/li>\n  <li>ey<span class='match'>rie<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li><span class='match'>fie<\/span>ldaltar<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>hten<span class='match'>gie<\/span>r<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>sol<span class='match'>die<\/span>r<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>ret<span class='match'>rie<\/span>ver<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>inju<span class='match'>rie<\/span>s<\/li>\n  <li>g<span class='match'>rie<\/span>f<\/li>\n  <li>t<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>bob<span class='match'>bie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>rce<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>expe<span class='match'>die<\/span>nt<\/li>\n  <li>prop<span class='match'>rie<\/span>ty<\/li>\n  <li>prelimina<span class='match'>rie<\/span>s<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>far<span class='match'>rie<\/span>r’s<\/li>\n  <li>a<span class='match'>mie<\/span>ns<\/li>\n  <li>a<span class='match'>mie<\/span>ns<\/li>\n  <li>commodi<span class='match'>tie<\/span>s<\/li>\n  <li>facul<span class='match'>tie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>ape<span class='match'>rie<\/span>nt<\/li>\n  <li>be<span class='match'>lie<\/span>ver<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>bra<span class='match'>zie<\/span>r<\/li>\n  <li>bra<span class='match'>zie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>an<span class='match'>xie<\/span>ty<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>proclivi<span class='match'>tie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>m’conac<span class='match'>hie<\/span><\/li>\n  <li><span class='match'>lie<\/span>u<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>pen<span class='match'>nie<\/span>s<\/li>\n  <li>bra<span class='match'>zie<\/span>r<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>a<span class='match'>pie<\/span>ce<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>veri<span class='match'>fie<\/span>d<\/li>\n  <li>sker<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>ndliness<\/li>\n  <li>abili<span class='match'>tie<\/span>s<\/li>\n  <li>expe<span class='match'>rie<\/span>nced<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>diversi<span class='match'>fie<\/span>d<\/li>\n  <li>commodi<span class='match'>tie<\/span>s<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>jar<span class='match'>vie<\/span>s<\/li>\n  <li>dissatis<span class='match'>fie<\/span>d<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>murp<span class='match'>hie<\/span>s<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>s<span class='match'>hie<\/span>ling<\/li>\n  <li>sto<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>be<span class='match'>lie<\/span>ves<\/li>\n  <li>jar<span class='match'>vie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>shan<span class='match'>tie<\/span>s<\/li>\n  <li>o<span class='match'>sie<\/span>r<\/li>\n  <li>did<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ver<\/li>\n  <li>f<span class='match'>rie<\/span>nd’s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>opportuni<span class='match'>tie<\/span>s<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li>t<span class='match'>rie<\/span>ste<\/li>\n  <li>de<span class='match'>fie<\/span>d<\/li>\n  <li>va<span class='match'>rie<\/span>ty<\/li>\n  <li>eigh<span class='match'>tie<\/span>s<\/li>\n  <li>comp<span class='match'>lie<\/span>d<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>expe<span class='match'>rie<\/span>nced<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>fluster<span class='match'>fie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li><span class='match'>vie<\/span>wing<\/li>\n  <li>authori<span class='match'>tie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>acq<span class='match'>uie<\/span>sced<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>app<span class='match'>lie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>expe<span class='match'>rie<\/span>nced<\/li>\n  <li>unbe<span class='match'>lie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li>forge<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>quali<span class='match'>fie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>d<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd’s<\/li>\n  <li>sto<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>jar<span class='match'>vie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>identi<span class='match'>fie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>rs<\/li>\n  <li>va<span class='match'>rie<\/span>ty<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>q<span class='match'>uie<\/span>tus<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>petri<span class='match'>fie<\/span>d<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li><span class='match'>pie<\/span>rs<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>bra<span class='match'>zie<\/span>r<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>g<span class='match'>rie<\/span>vances<\/li>\n  <li>quanti<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>count<span class='match'>rie<\/span>s<\/li>\n  <li>chum<span class='match'>mie<\/span>s<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li>propensi<span class='match'>tie<\/span>s<\/li>\n  <li>inju<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>ndlier<\/li>\n  <li>rea<span class='match'>die<\/span>st<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>vaga<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>b<span class='match'>rie<\/span>fly<\/li>\n  <li>seven<span class='match'>tie<\/span>s<\/li>\n  <li>noto<span class='match'>rie<\/span>ties<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>improp<span class='match'>rie<\/span>ty<\/li>\n  <li>un<span class='match'>tie<\/span>d<\/li>\n  <li>expe<span class='match'>rie<\/span>nces<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>obseq<span class='match'>uie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>fil<span class='match'>lie<\/span>s<\/li>\n  <li>hea<span class='match'>vie<\/span>r<\/li>\n  <li>fusi<span class='match'>lie<\/span>r<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>prop<span class='match'>rie<\/span>tor<\/li>\n  <li>week<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>tie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>p<span class='match'>rie<\/span>sts<\/li>\n  <li>a<span class='match'>die<\/span>u<\/li>\n  <li>pre<span class='match'>mie<\/span>r<\/li>\n  <li>t<span class='match'>hie<\/span>very<\/li>\n  <li><span class='match'>vie<\/span>wing<\/li>\n  <li>apolo<span class='match'>gie<\/span>s<\/li>\n  <li>makebe<span class='match'>lie<\/span>ve<\/li>\n  <li>t<span class='match'>rie<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>nite<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li>ear<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>agg<span class='match'>rie<\/span>ved<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>du<span class='match'>tie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>pi<span class='match'>tie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>casual<span class='match'>tie<\/span>s<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>eventuali<span class='match'>tie<\/span>s<\/li>\n  <li>wor<span class='match'>rie<\/span>d<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li>beau<span class='match'>tie<\/span>s<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>c<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>que<span class='match'>rie<\/span>d<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li><span class='match'>nie<\/span>nte<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>bra<span class='match'>zie<\/span>r<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li><span class='match'>yie<\/span>lded<\/li>\n  <li>con<span class='match'>cei<\/span>ts<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>indust<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ter<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>nice<span class='match'>tie<\/span>s<\/li>\n  <li>festivi<span class='match'>tie<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>pa<span class='match'>tie<\/span>nt<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>ene<span class='match'>mie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>ndship<\/li>\n  <li><span class='match'>die<\/span>t<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>disbe<span class='match'>lie<\/span>f<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li><span class='match'>die<\/span>tary<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>vie<\/span>ws<\/li>\n  <li>bloom<span class='match'>fie<\/span>ld<\/li>\n  <li>bloom<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>certi<span class='match'>fie<\/span>d<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>scent<\/li>\n  <li>per<span class='match'>cei<\/span>ve<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>d’o<span class='match'>lie<\/span>r<\/li>\n  <li>ric<span class='match'>hie<\/span><\/li>\n  <li>xa<span class='match'>vie<\/span>r<\/li>\n  <li>stu<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>extremi<span class='match'>tie<\/span>s<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>ving<\/li>\n  <li>gra<span class='match'>die<\/span>nt<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>watercar<span class='match'>rie<\/span>r<\/li>\n  <li>q<span class='match'>uie<\/span>scence<\/li>\n  <li>promonto<span class='match'>rie<\/span>s<\/li>\n  <li>tributa<span class='match'>rie<\/span>s<\/li>\n  <li>ed<span class='match'>die<\/span>s<\/li>\n  <li>exempli<span class='match'>fie<\/span>d<\/li>\n  <li>gul<span class='match'>lie<\/span>s<\/li>\n  <li>proper<span class='match'>tie<\/span>s<\/li>\n  <li>va<span class='match'>rie<\/span>ty<\/li>\n  <li>estua<span class='match'>rie<\/span>s<\/li>\n  <li>tanne<span class='match'>rie<\/span>s<\/li>\n  <li>aquaci<span class='match'>tie<\/span>s<\/li>\n  <li>hy<span class='match'>gie<\/span>ne<\/li>\n  <li><span class='match'>die<\/span>tary<\/li>\n  <li>quali<span class='match'>tie<\/span>s<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>justi<span class='match'>fie<\/span>d<\/li>\n  <li>semisolidi<span class='match'>fie<\/span>d<\/li>\n  <li>prove<span class='match'>nie<\/span>nces<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>difficul<span class='match'>tie<\/span>s<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>ingre<span class='match'>die<\/span>nts<\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>whit<span class='match'>tie<\/span>r<\/li>\n  <li>jes<span class='match'>sie<\/span><\/li>\n  <li>difficul<span class='match'>tie<\/span>s<\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li>con<span class='match'>cei<\/span>ving<\/li>\n  <li>smith<span class='match'>fie<\/span>ld<\/li>\n  <li><span class='match'>fie<\/span>ldglasses<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li>ter<span class='match'>rie<\/span>r<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li>ac<span class='match'>hie<\/span>ve<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li>ear<span class='match'>lie<\/span>r<\/li>\n  <li><span class='match'>vie<\/span>nna<\/li>\n  <li>g<span class='match'>rie<\/span>r<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>a<span class='match'>rie<\/span>s<\/li>\n  <li>orre<span class='match'>rie<\/span>s<\/li>\n  <li>ac<span class='match'>hie<\/span>ved<\/li>\n  <li>possibili<span class='match'>tie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li>anniversa<span class='match'>rie<\/span>s<\/li>\n  <li>hur<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>re<span class='match'>lie<\/span>ved<\/li>\n  <li>t<span class='match'>hie<\/span>f<\/li>\n  <li>possibili<span class='match'>tie<\/span>s<\/li>\n  <li>stu<span class='match'>die<\/span>s<\/li>\n  <li>certi<span class='match'>fie<\/span>d<\/li>\n  <li>ac<span class='match'>hie<\/span>vement<\/li>\n  <li>va<span class='match'>rie<\/span>ty<\/li>\n  <li>prop<span class='match'>rie<\/span>tress<\/li>\n  <li>disoccu<span class='match'>pie<\/span>d<\/li>\n  <li><span class='match'>hie<\/span>roglyphics<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>imp<span class='match'>lie<\/span>d<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>modi<span class='match'>fie<\/span>d<\/li>\n  <li><span class='match'>hie<\/span>roglyphs<\/li>\n  <li>identi<span class='match'>tie<\/span>s<\/li>\n  <li>do<span class='match'>wie<\/span><\/li>\n  <li>al<span class='match'>lie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>re<span class='match'>cei<\/span>ve<\/li>\n  <li><span class='match'>hie<\/span>rarchy<\/li>\n  <li>rep<span class='match'>lie<\/span>d<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>memo<span class='match'>rie<\/span>s<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>augu<span class='match'>rie<\/span>s<\/li>\n  <li>abnormali<span class='match'>tie<\/span>s<\/li>\n  <li>exempli<span class='match'>fie<\/span>d<\/li>\n  <li>necessi<span class='match'>tie<\/span>s<\/li>\n  <li>m<span class='match'>oie<\/span>ty<\/li>\n  <li>modi<span class='match'>fie<\/span>d<\/li>\n  <li>rati<span class='match'>fie<\/span>d<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>prop<span class='match'>rie<\/span>tors<\/li>\n  <li>au<span class='match'>die<\/span>nce<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>ago<span class='match'>nie<\/span>s<\/li>\n  <li>facto<span class='match'>rie<\/span>s<\/li>\n  <li>mala<span class='match'>die<\/span>s<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li>cavi<span class='match'>tie<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>ea<span class='match'>sie<\/span>r<\/li>\n  <li>ina<span class='match'>lie<\/span>nably<\/li>\n  <li>vani<span class='match'>tie<\/span>s<\/li>\n  <li>vani<span class='match'>tie<\/span>s<\/li>\n  <li>vani<span class='match'>tie<\/span>s<\/li>\n  <li>discove<span class='match'>rie<\/span>s<\/li>\n  <li>ver<span class='match'>rie<\/span>r<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>bo<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>f<\/li>\n  <li>affini<span class='match'>tie<\/span>s<\/li>\n  <li>supp<span class='match'>lie<\/span>d<\/li>\n  <li>aun<span class='match'>gie<\/span>r<\/li>\n  <li>trajecto<span class='match'>rie<\/span>s<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>per<span class='match'>cei<\/span>ving<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>app<span class='match'>lie<\/span>d<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>mantel<span class='match'>pie<\/span>ce<\/li>\n  <li>time<span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>pie<\/span>rglass<\/li>\n  <li>beau<span class='match'>tie<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>victo<span class='match'>rie<\/span>s<\/li>\n  <li>ho<span class='match'>zie<\/span>r’s<\/li>\n  <li>bloom<span class='match'>fie<\/span>ld<\/li>\n  <li>bre<span class='match'>vie<\/span>r<\/li>\n  <li>par<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>ho<span class='match'>zie<\/span>r’s<\/li>\n  <li>neck<span class='match'>tie<\/span><\/li>\n  <li>sa<span class='match'>lie<\/span>nt<\/li>\n  <li>pa<span class='match'>tie<\/span>ntly<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>unoccu<span class='match'>pie<\/span>d<\/li>\n  <li>locali<span class='match'>tie<\/span>s<\/li>\n  <li>me<span class='match'>die<\/span>val<\/li>\n  <li>o<span class='match'>rie<\/span>ntal<\/li>\n  <li>re<span class='match'>cei<\/span>ver<\/li>\n  <li>chande<span class='match'>lie<\/span>r<\/li>\n  <li>f<span class='match'>rie<\/span>ze<\/li>\n  <li><span class='match'>tie<\/span>rod<\/li>\n  <li>hy<span class='match'>gie<\/span>nic<\/li>\n  <li>necessa<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>bie<\/span>nnial<\/li>\n  <li>invento<span class='match'>rie<\/span>d<\/li>\n  <li>facili<span class='match'>tie<\/span>s<\/li>\n  <li>ac<span class='match'>hie<\/span>ving<\/li>\n  <li><span class='match'>fie<\/span>ldwork<\/li>\n  <li>master<span class='match'>pie<\/span>ces<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>hie<\/span>rarchical<\/li>\n  <li>animosi<span class='match'>tie<\/span>s<\/li>\n  <li>ear<span class='match'>lie<\/span>st<\/li>\n  <li>disbe<span class='match'>lie<\/span>f<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li>da<span class='match'>nie<\/span>l<\/li>\n  <li>f<span class='match'>rie<\/span>ndship<\/li>\n  <li>theo<span class='match'>rie<\/span>s<\/li>\n  <li>o’b<span class='match'>rie<\/span>n<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li>securi<span class='match'>tie<\/span>s<\/li>\n  <li>occu<span class='match'>pie<\/span>r<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>reposito<span class='match'>rie<\/span>s<\/li>\n  <li>melon<span class='match'>fie<\/span>lds<\/li>\n  <li>proper<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>vie<\/span>w<\/li>\n  <li><span class='match'>die<\/span>t<\/li>\n  <li>multip<span class='match'>lie<\/span>d<\/li>\n  <li>galle<span class='match'>rie<\/span>s<\/li>\n  <li>gra<span class='match'>zie<\/span>rs<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>c<span class='match'>hie<\/span>fly<\/li>\n  <li>lique<span class='match'>fie<\/span>d<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>cemete<span class='match'>rie<\/span>s<\/li>\n  <li>ate<span class='match'>lie<\/span>r<\/li>\n  <li>prop<span class='match'>rie<\/span>tor<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li>expe<span class='match'>rie<\/span>nce<\/li>\n  <li>impa<span class='match'>tie<\/span>nce<\/li>\n  <li>be<span class='match'>lie<\/span>fs<\/li>\n  <li>be<span class='match'>lie<\/span>fs<\/li>\n  <li>be<span class='match'>lie<\/span>fs<\/li>\n  <li><span class='match'>vie<\/span>nna<\/li>\n  <li>accompa<span class='match'>nie<\/span>d<\/li>\n  <li>expe<span class='match'>rie<\/span>nces<\/li>\n  <li>indigni<span class='match'>tie<\/span>s<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>multip<span class='match'>lie<\/span>d<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>par<span class='match'>tie<\/span>s<\/li>\n  <li>locali<span class='match'>tie<\/span>s<\/li>\n  <li>petri<span class='match'>fie<\/span>d<\/li>\n  <li>divini<span class='match'>tie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>occu<span class='match'>pie<\/span>d<\/li>\n  <li>unoccu<span class='match'>pie<\/span>d<\/li>\n  <li>ho<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>kie<\/span>rnan’s<\/li>\n  <li>b<span class='match'>rie<\/span>f<\/li>\n  <li>insen<span class='match'>tie<\/span>nt<\/li>\n  <li>divini<span class='match'>tie<\/span>s<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>fusi<span class='match'>lie<\/span>rs<\/li>\n  <li>a<span class='match'>mie<\/span>ns<\/li>\n  <li>a<span class='match'>mie<\/span>ns<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li>va<span class='match'>rie<\/span>d<\/li>\n  <li>re<span class='match'>cei<\/span>ved<\/li>\n  <li><span class='match'>fie<\/span>ld<\/li>\n  <li>ene<span class='match'>mie<\/span>s<\/li>\n  <li>inju<span class='match'>rie<\/span>s<\/li>\n  <li>a<span class='match'>lie<\/span>nation<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li>contra<span class='match'>rie<\/span>ties<\/li>\n  <li>inci<span class='match'>pie<\/span>nt<\/li>\n  <li><span class='match'>kie<\/span>rnan<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>sa<span class='match'>lie<\/span>nt<\/li>\n  <li>per<span class='match'>cei<\/span>ved<\/li>\n  <li>se<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>car<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>c<span class='match'>rie<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>john<span class='match'>nie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>de<span class='match'>cei<\/span>ver<\/li>\n  <li>pop<span class='match'>pie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>mis<span class='match'>sie<\/span>s<\/li>\n  <li>co<span class='match'>pie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span>ut<\/li>\n  <li>re<span class='match'>vie<\/span>w<\/li>\n  <li>firef<span class='match'>lie<\/span>s<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>q<span class='match'>uie<\/span>t<\/li>\n  <li><span class='match'>tie<\/span><\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>handkerc<span class='match'>hie<\/span>fs<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>li<span class='match'>lie<\/span>s<\/li>\n  <li>misc<span class='match'>hie<\/span>f<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>tit<span class='match'>tie<\/span>s<\/li>\n  <li>re<span class='match'>lie<\/span>ved<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li>sent<span class='match'>rie<\/span>s<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>wil<span class='match'>kie<\/span><\/li>\n  <li>centu<span class='match'>rie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>gilles<span class='match'>pie<\/span><\/li>\n  <li><span class='match'>die<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nd<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>be<span class='match'>lie<\/span>ved<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>galle<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li><span class='match'>lie<\/span><\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li><span class='match'>lie<\/span>utenant<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>tan<span class='match'>gie<\/span>r<\/li>\n  <li>handkerc<span class='match'>hie<\/span>f<\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li>ma<span class='match'>rie<\/span><\/li>\n  <li>beau<span class='match'>tie<\/span>s<\/li>\n  <li>sol<span class='match'>die<\/span>rs<\/li>\n  <li><span class='match'>die<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>q<span class='match'>uie<\/span>tly<\/li>\n  <li>re<span class='match'>lie<\/span>f<\/li>\n  <li><span class='match'>sie<\/span>rra<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>la<span class='match'>die<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>ry<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>g<span class='match'>aie<\/span>ty<\/li>\n  <li>drim<span class='match'>mie<\/span>s<\/li>\n  <li><span class='match'>tie<\/span>d<\/li>\n  <li>pa<span class='match'>tie<\/span>nce<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>na<span class='match'>pie<\/span>r<\/li>\n  <li>drim<span class='match'>mie<\/span>s<\/li>\n  <li>de<span class='match'>cei<\/span>tful<\/li>\n  <li><span class='match'>lie<\/span>s<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>ba<span class='match'>bie<\/span>s<\/li>\n  <li>master<span class='match'>pie<\/span>ce<\/li>\n  <li><span class='match'>die<\/span>s<\/li>\n  <li>jo<span class='match'>sie<\/span><\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>ndship<\/li>\n  <li>fami<span class='match'>lie<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ce<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>mar<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li>gip<span class='match'>sie<\/span>s<\/li>\n  <li>bloom<span class='match'>fie<\/span>ld<\/li>\n  <li>stu<span class='match'>die<\/span>s<\/li>\n  <li>satis<span class='match'>fie<\/span>d<\/li>\n  <li>bu<span class='match'>rie<\/span>d<\/li>\n  <li>f<span class='match'>rie<\/span>nds<\/li>\n  <li><span class='match'>sie<\/span>te<\/li>\n  <li><span class='match'>bie<\/span>n<\/li>\n  <li>t<span class='match'>rie<\/span>d<\/li>\n  <li>stu<span class='match'>die<\/span>s<\/li>\n  <li><span class='match'>pie<\/span>ta<\/li>\n  <li>be<span class='match'>lie<\/span>ve<\/li>\n  <li>f<span class='match'>rie<\/span>ndly<\/li>\n  <li><span class='match'>cei<\/span>ling<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li>cher<span class='match'>rie<\/span>s<\/li>\n  <li><span class='match'>fie<\/span>lds<\/li>\n  <li>p<span class='match'>rie<\/span>st<\/li>\n  <li><span class='match'>pie<\/span>r<\/li>\n  <li>t<span class='match'>rie<\/span>ste<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

Words that do not comply with the rule:


```r
str_view(new_string, 
         "(cie|[^c]ei)", ## "cie" or "ei" not preceded by "c" 
         match = TRUE)
```

<!--html_preserve--><div id="htmlwidget-74b4306b9e10e30cabbe" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-74b4306b9e10e30cabbe">{"x":{"html":"<ul>\n  <li><span class='match'>dei<\/span><\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ling<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>rd<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fl<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>nac<span class='match'>hei<\/span>nander<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>prophe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>made<span class='match'>lei<\/span>ne<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>conspira<span class='match'>cie<\/span>s<\/li>\n  <li>v<span class='match'>iei<\/span>lle<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>nebe<span class='match'>nei<\/span>nander<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>rss<span class='match'>eei<\/span>ss<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fars<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>trim<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>gh<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>spr<span class='match'>eei<\/span>sh<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>vor<span class='match'>rei<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>gei<\/span>sha<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>xlip<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>penny<span class='match'>wei<\/span>ght<\/li>\n  <li>penny<span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>un<span class='match'>fei<\/span>gned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>paper<span class='match'>wei<\/span>ght<\/li>\n  <li>e<span class='match'>lei<\/span>son<\/li>\n  <li>e<span class='match'>lei<\/span>son<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>vice<span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>wei<\/span>ghtcarrying<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ties<\/li>\n  <li>in<span class='match'>vei<\/span>gling<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ling<\/li>\n  <li><span class='match'>vei<\/span>ning<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sur<span class='match'>fei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>ncarnation<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>mei<\/span>ster<\/li>\n  <li>al<span class='match'>bei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ls<\/li>\n  <li>brillian<span class='match'>cie<\/span>s<\/li>\n  <li>fourhundredan<span class='match'>dei<\/span>ghth<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sur<span class='match'>fei<\/span>t<\/li>\n  <li>ra<span class='match'>lei<\/span>gh<\/li>\n  <li><span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>mei<\/span>nherr<\/li>\n  <li>so<span class='match'>cie<\/span>tate<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>unfan<span class='match'>cie<\/span>d<\/li>\n  <li>b<span class='match'>lei<\/span>btreu<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ngless<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>heavy<span class='match'>wei<\/span>ghts<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>kei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbours<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>didd<span class='match'>lei<\/span>ddle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>he<span class='match'>rei<\/span>nafter<\/li>\n  <li>he<span class='match'>rei<\/span>nafter<\/li>\n  <li>he<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>fers<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>nei<\/span>ll’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>ntist<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>ninet<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>excellen<span class='match'>cie<\/span>s<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>ueberallge<span class='match'>mei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>hei<\/span>la<\/li>\n  <li>decen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>bac<span class='match'>lei<\/span>s<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sove<span class='match'>rei<\/span>gns<\/li>\n  <li>welter<span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>wetts<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>rai<span class='match'>mei<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>rei<\/span>llys<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>mei<\/span>la<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>ja<span class='match'>nei<\/span>ro<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>effica<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>bel<span class='match'>lei<\/span>sle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ned<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>eyebrow<span class='match'>lei<\/span>ne<\/li>\n  <li>s<span class='match'>cie<\/span>ntifically<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gner<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>nforced<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>eyebrow<span class='match'>lei<\/span>ne<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>mer<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ghs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>teratedly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li>how<span class='match'>bei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>agr<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>dei<\/span>parae<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>sei<\/span>ze<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>whe<span class='match'>rei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>fer<\/li>\n  <li>fan<span class='match'>cie<\/span>d<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li><span class='match'>dei<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>extravagan<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>sei<\/span>ze<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>fa<span class='match'>cie<\/span><\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>p<span class='match'>lei<\/span>ades<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>gning<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>pregnan<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>ntious<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li><span class='match'>dei<\/span>ne<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>lei<\/span>th<\/li>\n  <li><span class='match'>dei<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>o’<span class='match'>bei<\/span>rne’s<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>dei<\/span><\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>wei<\/span>ghted<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li>maf<span class='match'>fei<\/span><\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>thick<span class='match'>vei<\/span>led<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>bloemfon<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>wei<\/span>rd<\/li>\n  <li>r<span class='match'>hei<\/span>ms<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fa<span class='match'>cie<\/span><\/li>\n  <li>o<span class='match'>bei<\/span>sance<\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>edel<span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>ple<span class='match'>bei<\/span>an<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>the<span class='match'>rei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>rloom<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>fan<span class='match'>cie<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>twent<span class='match'>yei<\/span>ght<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>hei<\/span>ghts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>insuffi<span class='match'>cie<\/span>nt<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>cie<\/span>nces<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li><span class='match'>wei<\/span>ss<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>laem<span class='match'>lei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gneth<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>lei<\/span><\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>bag<span class='match'>wei<\/span>ghted<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>tipt<span class='match'>oei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>led<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>transparen<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>coo<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>un<span class='match'>vei<\/span>led<\/li>\n  <li>fl<span class='match'>eei<\/span>ng<\/li>\n  <li>for<span class='match'>fei<\/span>ts<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>ndeer<\/li>\n  <li>fo<span class='match'>rei<\/span>gns<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>ls<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>cor<span class='match'>bei<\/span>lle<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>remer<span class='match'>cie<\/span>z<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>rei<\/span>ne<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>v<span class='match'>iei<\/span>lle<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gneth<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>nei<\/span>ghs<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>uns<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbourhood<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>fo<span class='match'>rei<\/span>gners<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>rdlooking<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li><span class='match'>rei<\/span>gned<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>zed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbours<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>contingen<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ghbourhood<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o’<span class='match'>nei<\/span>ll<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>fan<span class='match'>cie<\/span>d<\/li>\n  <li><span class='match'>lei<\/span>sure<\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>rs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>profi<span class='match'>cie<\/span>ncy<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>sove<span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ghing<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>ntly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>constituen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>listig<span class='match'>kei<\/span>t<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>so<span class='match'>cie<\/span>ty’s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>self<span class='match'>wei<\/span>ghing<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>gla<span class='match'>cie<\/span>rs<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>pro<span class='match'>tei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>fahren<span class='match'>hei<\/span>t<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>p<span class='match'>rei<\/span>ndicative<\/li>\n  <li><span class='match'>lei<\/span>nster<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>ring<span class='match'>wei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>ntific<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>ka<span class='match'>lei<\/span>doscopes<\/li>\n  <li><span class='match'>sei<\/span>zes<\/li>\n  <li><span class='match'>nei<\/span>ghbour<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>defi<span class='match'>cie<\/span>nt<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>defi<span class='match'>cie<\/span>ncies<\/li>\n  <li>profi<span class='match'>cie<\/span>ncy<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>defi<span class='match'>cie<\/span>ncy<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cu<span class='match'>nei<\/span>form<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>cie<\/span>nce<\/li>\n  <li>contingen<span class='match'>cie<\/span>s<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>sei<\/span>smic<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li><span class='match'>bei<\/span>ngs<\/li>\n  <li><span class='match'>wei<\/span>ghed<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>rhisnothis<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li><span class='match'>hei<\/span>gho<\/li>\n  <li>fahren<span class='match'>hei<\/span>t<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>nonpa<span class='match'>rei<\/span>l<\/li>\n  <li>defi<span class='match'>cie<\/span>nt<\/li>\n  <li>suffi<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>rs<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>spe<span class='match'>cie<\/span>s<\/li>\n  <li>fo<span class='match'>rei<\/span>gn<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>spe<span class='match'>cie<\/span><\/li>\n  <li>b<span class='match'>lei<\/span>btreustrasse<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>finan<span class='match'>cie<\/span>rs<\/li>\n  <li>guggen<span class='match'>hei<\/span>m<\/li>\n  <li>agen<span class='match'>cie<\/span>s<\/li>\n  <li>effi<span class='match'>cie<\/span>nt<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li><span class='match'>fei<\/span>ntruled<\/li>\n  <li><span class='match'>rei<\/span>gn<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>an<span class='match'>cie<\/span>nt<\/li>\n  <li><span class='match'>dei<\/span>n<\/li>\n  <li>idiosyncra<span class='match'>cie<\/span>s<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>cassio<span class='match'>pei<\/span>a<\/li>\n  <li>strain<span class='match'>vei<\/span>ned<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>so<span class='match'>cie<\/span>ty’s<\/li>\n  <li>o’<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>onomatop<span class='match'>oei<\/span>c<\/li>\n  <li>onomatop<span class='match'>oei<\/span>c<\/li>\n  <li>nes<span class='match'>cie<\/span>nt<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>rei<\/span>terated<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>vei<\/span>n<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>l<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>s<span class='match'>eei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>bloemfon<span class='match'>tei<\/span>n<\/li>\n  <li><span class='match'>hei<\/span>ght<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>vei<\/span>ns<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>re<span class='match'>vei<\/span>lle<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>wei<\/span>ght<\/li>\n  <li><span class='match'>rei<\/span>ns<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>fei<\/span>n<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>so<span class='match'>cie<\/span>ty<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li><span class='match'>bei<\/span>ng<\/li>\n  <li>o<span class='match'>rei<\/span>lly<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>at<span class='match'>hei<\/span>sts<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>cons<span class='match'>cie<\/span>nce<\/li>\n  <li><span class='match'>nei<\/span>ther<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n  <li>t<span class='match'>hei<\/span>r<\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

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
##        description
##              <chr>
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

<!--html_preserve--><div id="htmlwidget-b744065ccce6217b42cc" style="width:960px;height:auto;" class="str_view html-widget"></div>
<script type="application/json" data-for="htmlwidget-b744065ccce6217b42cc">{"x":{"html":"<ul>\n  <li>10 MO F FELL OUT OF SHOPPING CART;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>8YOF <span class='match'>FRACTURE<\/span>D FINGER FELL OFF HER BIKE<\/li>\n  <li>41YO HISP MALE POKED R INDEX FINGER WITH A SCREWDRIVER DX CLOSED <span class='match'>FRACTURE<\/span> OF HAND, FELON<\/li>\n  <li>5 YR M FELL OFF FENCE;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>FELL AND INJURED R ANKLE AT SKATE RINK   <span class='match'>FRACTURE<\/span> R ANKLE 30YOM<\/li>\n  <li>13YOM FOUND DOWN WHILE SNOWBOARDING, UNWITNESSED TRAUMA, PT AMNESTIC, D X HEAD INJURY, PELVIC <span class='match'>FRACTURE<\/span><\/li>\n  <li>16YOM WAS ELBOWED IN FACE WHILE PLAYING FOOTBALL NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>40YOM WITH <span class='match'>FRACTURE<\/span> TO THUMB AFTER GETTING IT CAUGHT IN TABLE SAW AT HO ME.<\/li>\n  <li>22YOM GOT HIT IN CHEST WITH BASEBALL PLAAYING DX: RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>81YOF FELL FROM A CHAIR ONTO RIGHT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>63YOF AT BROTHERS HOME MISSED A STEP LANDED ON R KNEE DX FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>20 YO M PT WAS FISHING AND WALKED INTO A TREE BRANCH CUTTING HIS RT SID E FACE AND PAIN FACE. DX ORBITAL WALL <span class='match'>FRACTURE<\/span> ADMITTED<\/li>\n  <li>PT JAMMED LEFT THUMB ON BASKETBALL.  D:  SPRAIN LEFT THUMB / <span class='match'>FRACTURE<\/span> L EFT HAND<\/li>\n  <li>7 YOM WHOSE CARETAKER REPORTS PT SUS INJURY OF THE LEFT ELBOW WHENHE FE LL FROM A ***. DX ELBOW <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>27 YOM <span class='match'>FRACTURE<\/span>D LT. FOREARM- REPORTS FELL OFF BIKE TODAY & LANDED ON L T. ARM ON THE CURB WHILE DRINKING ETOH.*<\/li>\n  <li>FELL OVER RUG <span class='match'>FRACTURE<\/span>D HUMERUS<\/li>\n  <li>PT RAN TOES UNDER CABINET WHILE IN WHEELCHAIR AND CUT AND <span class='match'>FRACTURE<\/span>D 3RD TOE, RIGHT, OPEN. 63 YOF*<\/li>\n  <li>90 YOF WHO HAD A MECHANICAL FALL TRIPPED ON A WATER HOSE INJURING RT LO WER TRUNK- DX- <span class='match'>FRACTURE<\/span> RT LOWER TRUNK<\/li>\n  <li>8YOM INJURED RIGHT INDEX FINGER PLAYING FOOTBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 YR M HIT WITH BALL;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>11YOF- WAS RUNNING THROUGH HOME TRIPPED ONTO A BOX FOOSH ONTO ARMS NOW LEFT FOREARM PAIN. DX LEFT RADIUS ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>20 YOF PRESENT TO ER AFTER A INJURY TO NOSE WHILE PLAYING SOFTBALL TODA Y- DX- <span class='match'>FRACTURE<\/span> FACE (NOSE)<\/li>\n  <li>HURT IN GYMNASTICS . <span class='match'>FRACTURE<\/span> L HAND<\/li>\n  <li>10YR F FELL FROM SKATEBOARD; DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YO F PT WAS PLAYING ON SCOOTER AND JUMPED OFF TWISTING LT FOOT. PAINF UL. DX <span class='match'>FRACTURE<\/span> LT FOOT<\/li>\n  <li>44YOF SLIPPED ON RUG AND FELL TO FLOOR ONTO HIP DX: HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>30YO HISP MALE ATTEMPTED TO STEP INTO VAN & TRIPPED OVER SHOELACES& FEL L LANDED ON R HAND DX CLOSED <span class='match'>FRACTURE<\/span> OF HAND<\/li>\n  <li>7YR F FELL OFF SLIDE;DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>57YOF WITH <span class='match'>FRACTURE<\/span> TO MID AND LOW BACK AFTER TRIPPING ON RUG AND FALLI NG AGAINST THE DOOR OF THE HOUSE. DX FRACTURE.<\/li>\n  <li>13YOM PLAYING FOOTBALL AND TACKLED SUSTAINED A HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>56 YOM FELL FROM LADDER ABOUT TWO FEET ONTO CONCRETE <span class='match'>FRACTURING<\/span> HIS LEFT SHOULDER<\/li>\n  <li>17 YOF DROPED A BOWLING BALL ON HER TOE/TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M FELL WHEN ROLLERSKATING;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>11 YOM RIDING A BIKE, LOST CONTROL AND RAN INTO A WALL.  DX: CONCUSSION , <span class='match'>FRACTURE<\/span> ORBIT.<\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D WRIST FROM FOOTBALL<\/li>\n  <li>89YOF GOING INTO THE KITCHEN LOST BALANCE FELL TO THE FLOOR INJURING LT HIP;HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YOM PLAYING AT HOME JUMPED OFF A BOX AND FELL <span class='match'>FRACTURING<\/span> RIGHT ELBOW<\/li>\n  <li>FINGER CAUGHT IN BATHROOM DOOR 23 MO OLD F OPEN <span class='match'>FRACTURE<\/span> L 3RD FINGER #<\/li>\n  <li>FELL ON KITCHEN FLOOR <span class='match'>FRACTURE<\/span> RIBS 96 YO F #<\/li>\n  <li>PT WAS PLAYING SOCCER & FELL INJURING WRIST  DX; <span class='match'>FRACTURE<\/span>D LEFT WRIST<\/li>\n  <li>75 YO F RAN INTO TELEVISION, FELL IN FLOOR AT HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YOM FELL OFF SKATEBOARD AND TWISTED ANKLE ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>15YOM PLAYING ORGANIZED BASKETBALL YESTERDAY WHEN HE JAMMED RT INDEX FINGER ON ANOTHER PLAYER;FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YR M PLAYING SOCCER;DX TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>17 YR M HIT WHEN PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D NOSE<\/li>\n  <li>PT PRESENT TO ER AFTER STATNDING ON A WOODEN CONTAINER FELL DOWN AND IN JURED SHOULDER- DX- SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>86YOM COMPRESSION <span class='match'>FRACTURE<\/span> LUMBAR SPINE FELL HITTING THE FLOOR AT THE N URSING HOME PT ADMITTED*<\/li>\n  <li>FELL OFF BED ONTO TOY AT HOME.  DX SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>14YOM WAS TACKLED TO GROUND WHILE PLAYING FOOTBALL AT SCHOOL CLOSED HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>23YOF FELL ON STAIRS CAUSING DX <span class='match'>FRACTURE<\/span> TOE<\/li>\n  <li>FELL TO FLOOR AT HOME <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>4YOM HAD A BBQ GRILL FALL ON LEFT MIDDLE FINGER, <span class='match'>FRACTURE<\/span> OF LEFT MIDDLE FINGER AND NAIL AVULSION<\/li>\n  <li>38YOF STRUCK A TREE WHILE RIDING BIKE SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>34 YOF FELL ON ICY STEPS REINJURING LOW BACK SACRAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>STUBBED TOE ON TABLE AT HOME TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>95 YOF CLOSED HEAD INJURY & <span class='match'>FRACTURE<\/span>D RT. HIP- REPORTS FELL & HIT HEAD ON METAL SHELF WHILE USING WALKER TO TRANSFER TO BED AT HOME. + LAC.*<\/li>\n  <li>6 YR M FELL ON DECORATIVE YARD EQUIPMENT;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>PT FELL OUT OF BED STRUCK FACE ON THE FLOOR AT THE NURSING HOME SUSTAIN ED A FACIAL MANDIBLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>62YOM FELL WHILE CLIMBING INTO TREE STAND AND INJURED LOWER BACK.  LUMB ER VERTEBRAL COMPRESSION <span class='match'>FRACTURE<\/span>*<\/li>\n  <li>59 YO F FELL IN FLOOR AT NURSING HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span>D WRIST 5 YO F FELL OFF SCOOTER<\/li>\n  <li>46YOF WAS PLAYING WITH HER KIDS AND CAUGHT FINGER IN SHIRT WHEN PULLING ON IT, LEFT RING FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>39 YOM REPORTS 3 DAYS AGO HE WAS DOING A BACK FLIP AND HIT HIS RT FOOT ON THE EDGE OF A COUCH. DX 4TH AND 5TH TOE <span class='match'>FRACTURE<\/span>S%<\/li>\n  <li>72 YOM, TRIPPED OVER SHOES,FELL, <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>25 YOM GOT ELBOWED TO NOSE WHEN DOING MARTIAL ARTS NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>SLIPPED OFF PORCH AT HOME.  DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>34YOM C/O LOW BACK PAIN. PT STATES HE WAS INVOLVED IN AN ATV ROLLOVER W RECK. PT WAS THE DRIVER DX: <span class='match'>FRACTURE<\/span>*<\/li>\n  <li>67 YOM, FELL INTO DOOR, <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>17 YOM FELL PLAYING BASKETBALL <span class='match'>FRACTURE<\/span>D LEFT WRIST<\/li>\n  <li>9YOM FELL OFF THE SKATEBOARD AND INJURED RIGHT FOREARM, RIGHT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>45 YOM BIKE WRECK, HURT ARM. DX ULNA <span class='match'>FRACTURE<\/span><\/li>\n  <li>34 YOF PUNCHED A WALL LAST NIGHT WHILE ARGUING WITH HER BF. DX HAND <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>12YOM FELL FROM THE MONKEY BARS LANDING ON L ARM, C/O PAIN, DX <span class='match'>FRACTURE<\/span> TO L RADIUS AND ULNA<\/li>\n  <li>10 Y/O BM WAS PLAYING FOOTBALL AT SCHOOL SUSTAINED A <span class='match'>FRACTURE<\/span> TO LOWER LEG<\/li>\n  <li>16YOF WITH <span class='match'>FRACTURE<\/span>D NOSE DURING CHEERLEADING<\/li>\n  <li>25YOF BANGED SHOULDER ON CABINET AT HOME CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>2 YO F PER MOM PT FELL OUT OF HER CRIB ONTO THE FLOOR LANDING ON RT FOREARM DEFORMITY. DX <span class='match'>FRACTURE<\/span> RT FOREARM<\/li>\n  <li>6 Y/O WM FELL OFF COUNTER HIT FLOOR AND <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>PT WENT TO SIT ON A CHAIR WITH INDEX FINGER UNDER THE CHAIR CHAIR CRUNC HED DOWN ONTO TIP OF FINGER <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>16 YR M PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>5YR M FELL OFF SLIDE; DX DX TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOF WAS RUNNING DOWN THE STEPS AT HOME MISSED TWO STEPS TWISTING RT FOOT;FOOT <span class='match'>FRACTURE<\/span><\/li>\n  <li>15 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>62YOF FELL WHILE JOGGING YESTERDAY RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span>D FINGER ON A GRINDER<\/li>\n  <li>13YOM RIDER OF A BICYCLE AND HIT BY A CAR <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>5 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>53 YOF FELL DOWN STEPS <span class='match'>FRACTURING<\/span> LEFT ANKLE<\/li>\n  <li>76 Y/O FEMALE WAS ON A STEP LADDER CLEANING CABINETS & LOST BALANCE FALLING ON ARM  DX: <span class='match'>FRACTURE<\/span>D RIGHT FOREARM<\/li>\n  <li>34YOM ANGRY AND PUNCHED A DRESSER <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>9YOF FELL OFF THE MONKEY BARS AND <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>77YOF CAUGHT TOE ON CARPET AND FELL ON LEFT KNEE, PAIN ABOVE LEFT KNEE, FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS TALKING ON PHONE AND TRIPPED AND FELL OVER CURB. <span class='match'>FRACTURE<\/span> RADIUS W/ULNA, LEFT, CLOSED. 59 YOF*<\/li>\n  <li>37 YOM INJURED FINGER PLAYING BASKETBALL, JAMMED. DX-RIGHT 4TH DIGIT <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YR F FELL IN AMUSEMENT BOUNCE HOUSE;DX <span class='match'>FRACTURE<\/span> D LOWER ARM<\/li>\n  <li>47YOF C/O WRIST PAIN , STS SHE FELL HIT WRIST ON CABINET LANDING ON KIT CHEN FLOOR @ HOME DX RIGHT RADIUS & ULNA <span class='match'>FRACTURE<\/span>S ~<\/li>\n  <li>75 YOM WAS WALKING AND HIS PANTS GOT CAUGHT ON THE CHAIR AND HE FELL DO WN/FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>71YOF TRIPEPD OVER A BOX AT HOME AND FELL ONTO HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>58 YO F FELL OFF BICYCLE. DX PATELLA <span class='match'>FRACTURE<\/span> WITH EFFUSION<\/li>\n  <li>30YOF WITH <span class='match'>FRACTURE<\/span> TO ANKLE AFTER SLIPPING ON WET DANCE FLOOR AT BAR. HAS THREE SHOTS AND ONE BEER. DX FRACTURE.<\/li>\n  <li>9YR F FELL TO BATHROOM TILE FLOOR;DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT CLOSED LEFT FIFTH FINGER IN DOOR    <span class='match'>FRACTURE<\/span> FINGER  46YOM<\/li>\n  <li>10YOM HURT WRIST DURING FALL FROM SKATEBOARD DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>3YOM PT COMPLAINING OF TRIPPING OVER DOG GETTING TANGLED IN LEASH FRACT URE FEMUR DX <span class='match'>FRACTURE<\/span>#<\/li>\n  <li>9 YR M FELL ON SKATEBOARD;DX <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li>14 YOM PLAYING BASKETBALL, ATTEMPTING TO DEFLECT BASKETBALL AND BALL JA MMED FINGER.  DX: <span class='match'>FRACTURE<\/span> FINGER.<\/li>\n  <li>LOW BACK INJURY FROM SLIDING OFF BED. DX-LEFT HIP STRAIN, LEFT KNEE STRAIN, L4 COMPRESSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YR M FELLON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>5YOF C/O LEG PAIN AFTER FALL FROM TRAMPOLINE, DX TIBIA FIBULA <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT JAMMED RIGHT FIFTH TOE AGAINST A DOOR FRAME AT HOME <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>60YOF <span class='match'>FRACTURE<\/span>D ELBOW FACIAL CONTUSION PUTTING A BLANKET ON HORSE, IT S TARTED KICKING AROUND IN THE STALL *<\/li>\n  <li>73 YOF SLIPPED AND FELL ON FLOOR SUSTAINING LUMBAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>51YOM FELL OFF BIKE WHILE RIDING IN RACE CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YOF <span class='match'>FRACTURE<\/span>D RT. 5TH TOE S/P HITTING TOE ON THE BOTTOM OF A DOOR AT A RESTAURANT.*<\/li>\n  <li>73 YO M, C/O LT SHOULDER PAIN AFTER FALLING OUT OF BED LAST NIGHT, DX C LAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>52 YOF WAS ROLLER SKATING - FELL AND INJURED LOWER ARM. <span class='match'>FRACTURE<\/span>, LEFT LOWER ARM<\/li>\n  <li>TACKLED PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>9 YOF WHILE BATHING WAS BEING PUT IN TUB WHEN SHE FLUNG ARM OUT TO SIDE .  DX: <span class='match'>FRACTURE<\/span> HUMERUS.<\/li>\n  <li>PT WAS PUTTING UP YARD SALE SIGN, TRIPPED AND FELL. <span class='match'>FRACTURE<\/span> NASAL BONE . 67 YOF*<\/li>\n  <li>91 YOF HAD MECHANICAL FALL AT HOME WHILE MOVING FROM THE BED TO TOILET. DX LEFT ANKLE <span class='match'>FRACTURE<\/span>, FALL%<\/li>\n  <li>PT STATES WAS WALKING AND TRIPPED AND FELL ON FLOOR AT NURSING HOME DX: RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL DOWN STEPS AT FRIENDS HOME   <span class='match'>FRACTURE<\/span> DISTAL FIBULA  22YOF<\/li>\n  <li>14 YOF FINGER CAUGHT BETWEEN 2 XYLEPHONES.  DX: <span class='match'>FRACTURE<\/span> FINGER.<\/li>\n  <li>56 YOM FELL DOWN STAIRS AT HOME <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>15YOM <span class='match'>FRACTURE<\/span>D FOREARM, SPRAINED WRIST FELL OFF HIS BIKE ONTO CONCRETE *<\/li>\n  <li>12YOM- PT KICKED @ A METAL POLE  NOW RIGHT FOOT /BIG TOE WITH PAIN. DX RIGHT GREAT TOE <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>72YOM WAS TURKEY HUNTING TRIPPED OVER A WIRE THAT SENT HIM INTO A METAL FENCE INJURED RIBS;RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YR M FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>PT HAS A KNEE <span class='match'>FRACTURE<\/span> AND TODAY WHILE GETTING INTO THE SHOWER FELL ON THE SAME KNEE- FX KNEE<\/li>\n  <li>4YOF FELL OFF A SWINGSET AND SUSTAINED A FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YOM INJURED ANKLE AND FOOT, INVERTED WHILE ROLLER SKATING. DX-LEFT ANKLE SPRAIN, LEFT FOOT AVULSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOF <span class='match'>FRACTURE<\/span>D RADIU& ULNA INJURED DOING A BACKFLIP IN GYMNASTICS CLASS *<\/li>\n  <li>18 YOM FELL SKATEBOARDING TO CLASS AND FELL <span class='match'>FRACTURING<\/span> HIS RIGHT WRIST<\/li>\n  <li>5 YR F HURT WITH BOWLING BALL;DX FINGER <span class='match'>FRACTURE<\/span>D<\/li>\n  <li>6 YO M PLAYING TUG-OF-WAR LOST HIS BALANCE FALLING AND TWISTING LT THIG H, HEARD A POP. SEVERE PAIN. DX <span class='match'>FRACTURE<\/span> LT THIGH ADMITTED<\/li>\n  <li>1 MO M FELL FROM CARSEAT TO DRIVEWAY;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>16YOM <span class='match'>FRACTURE<\/span>D HAND INJURED PLAYING FOOTBALL<\/li>\n  <li>^33 YOM HELPING FRIEND WITH GRANITE COUNTER TOP, THINKS MOVEMENT OFTRUC K CAUSED COUNTER TOP TO FALL OVER A BIT, SUSTAINED <span class='match'>FRACTURE<\/span>D TOES<\/li>\n  <li>72 YOF SLIPPED ON WET FLOOR AT CASINO AND FELL <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>12 YR M PLAYING BASKETBALL;DX <span class='match'>FRACTURE<\/span>D FOOT<\/li>\n  <li>29YOF CLOSED FINGER IN DOOR FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM PLAYING SOCCER AND <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>7YOM FELL OFF SKATEBOARD AT HOME INJURING RT WRIST 2 DAYS AGO C/O SWELLING. DX - DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>SLAMMED FINGER IN DOOR AT HOME FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>2YR F FELL OFF BED;DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>3YOF- PT FELL DOWN ONTO RIGHT FOREARM WHILE GETTING OFF TRAMPOLINE. FELL ONTO THE GROUND. DX- RIGHT RADIUS/ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>7 MO F FELL IN FLOOR AT HOME. DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>13YOM WITH <span class='match'>FRACTURE<\/span>D WRIST IN BASEBALL<\/li>\n  <li>68 YOM USING CIRCULAR SAW, INJURY TO HAND. DX OPEN HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YR F FELL OFF SCOOTER;DX <span class='match'>FRACTURE<\/span>D  FINGER<\/li>\n  <li>29 YOM FELL DOWN STEPS AND TWISTED LEFT FOOT <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>FOOT INJURY FROM RUNNING IN SLIPPERS AND FELL. DX-CALCANIUS <span class='match'>FRACTURE<\/span>, LACERATION RIGHT HEEL<\/li>\n  <li>52YOM FELL TWISTED ANKLE PLAYING GOLF DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>WAS PLAYING HOCKEY, ON SPORT'S FIELD, & RAN HIS SHOULDER INTO THE GLASS AFTER ANOTHER PLAYER COLLIDED WITH HIM.    DX; RT CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6YOM FOREARM <span class='match'>FRACTURE<\/span> WHEN FELL FROM LADDER OF ***<\/li>\n  <li>FELL AGAINST METAL HAND RAIL IN BATHROOM. <span class='match'>FRACTURE<\/span> ONE RIB, CLOSED. 82 YOF*<\/li>\n  <li>18YOM <span class='match'>FRACTURE<\/span>D FOOT JUMPING ON TRAMPOLINE HIT FOOT ON SRPINGS*<\/li>\n  <li>66YOM MOVING GARBAGE CANS ON HIS DECKING AND FELL TO CONCRETE <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>PT WAS AT CHEERLEADING PRACTICE ATTEMPTED BACK FLIP HYPEREXTEND NECK  A ND FELL   <span class='match'>FRACTURE<\/span> CERVICAL SPINE  14YOF<\/li>\n  <li>93 Y/O FEMALE FELL & PASSED OUT ONTO FLOOR AT HOME DX: MUTLIPLE RIB <span class='match'>FRACTURE<\/span>S<\/li>\n  <li>FELL DOWN 4 STAIRS;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>45 YOF FELL INTO SWIMMING POOL AT BORGATA TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>25 YOM FELL PLAYING SOCCER SUSTAINING A <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li>16 YR F CLOSED FINGER IN DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D LOWER AMR<\/li>\n  <li>46YOF WALKING DOWN A FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D LEFT FOOT<\/li>\n  <li>SLIPPED ON STAIRS. DX-<span class='match'>FRACTURE<\/span> L FOOT, METATARSAL #<\/li>\n  <li>55 YOF TRIPPED OVER A CORD AT HOME AND FELL <span class='match'>FRACTURING<\/span> LEFT FOOT AND SPRAINING THE RIGHT FOOT<\/li>\n  <li>21YOF FELL OFF A HORSE AND <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>12YOM FELL FROM SKATEBOARD DX: CLAVICAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOM FELL BACKWARDS WHILE PLAYING FOOTBALL AT SCHOOL AND ANOTHER PLAYER FELL ON PTS ARM;DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>91 YO F PT WAS FOUND ON FLOOR SHE FELL OUT OF HER WHEEL CHAIR IN THE NURSING HOME LANDED ON LT HIP. DX <span class='match'>FRACTURE<\/span> LT HIP ADMIT<\/li>\n  <li>57YOF FELL DOWN A FLIGHT OF STAIRS AT HOME COMPRESSION <span class='match'>FRACTURE<\/span> TO LOWE R BACK<\/li>\n  <li>8 YR F JUMPED OFF TABLE;DX <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>34YOM KICKED A DOOR WITH RIGHT GREAT TOE ACCIDENTLY <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>89YOM HAD A SYNCOPAL EVENT AND FELL FACE FIRST TO THE FLOOR AT HOME NAS AL <span class='match'>FRACTURE<\/span> ADMITTED FOR SYNCOPE<\/li>\n  <li>7 YR M JUMPED OFF COUCH;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>40YOF FELL OFF BIKE LAST NIGHT FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>61YOF WITH <span class='match'>FRACTURE<\/span>D KNEE, FELL IN RESTAURANT ON FLOOR<\/li>\n  <li>93 YO F PT TRIPPED AND FELL ONTO HER GRANITE FIREPLACE LANDING ON HER R T SIDE. HIP NAD RT KNEE PAIN. DX RT HIP <span class='match'>FRACTURE<\/span> ADMITTED<\/li>\n  <li>73YOF FELL OFF THE EDGE OF HER BED AND <span class='match'>FRACTURE<\/span>D RIGHT ANKLE<\/li>\n  <li>4 YO F FELL OUT OF BED AT GRANDMOTHER'S HOUSE. DX RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>74 YOF SLIPPED ON FLOOR OF GROCERY STORE AND FELL SUSTAINING A DISLOCAT ED SHOULDER AND <span class='match'>FRACTURE<\/span>D KNEE<\/li>\n  <li>3 YO F FELL OUT OF BED, HURT ARM. DX ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>80 YOM <span class='match'>FRACTURE<\/span>D A HIP BY FALLING FROM WHEELCHAIR TO CARPETED FLOOR AT HOME.<\/li>\n  <li>13YOF HIT LEFT TOE ON CONCRETE FLOOR WHEN RUNNING AWAY FROM DOG, LEFT GREAT TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>55 Y/O W/M <span class='match'>FRACTURE<\/span>D WRIST AND ABRASION TO LOWER LEG WHEN FELL OFF LADDER WHEN IT COLLAPSED AT HOME.<\/li>\n  <li>PT FELL OFF MONKEY BARS AT SCHOOL, RIGHT WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>38YOM TWISTED RIGHT ANKLE WHILE PLAYING BASKETBALL ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF- PT FELL 2 FT FROM A 2 STORY BEDROOM WINDOW IN MOM ROOM WITH NO SCREEN LANDED ONTO ROCKS NOW FOOT PAIN. DX LEFT FOOT <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>4 YR F JUMPING ON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>100 YOF FELL IN BATHROOM INTO THE TUB LANDED ON LEFT SIDE. DX FALL RIB <span class='match'>FRACTURE<\/span> *<\/li>\n  <li>60YOF GETTING INTO A SWIMMING POOL AND FELL <span class='match'>FRACTURE<\/span>D FOREARM<\/li>\n  <li>63 YOM FELL WHILE JOGGING <span class='match'>FRACTURING<\/span> LEFT SHOULDER<\/li>\n  <li>45 YOM FELL THROUGH CEILING ONTO CONRETE FLOOR OF GARAGE SUSTAINING LUMBAR COMPRESSION <span class='match'>FRACTURE<\/span>, FOOT AND ELBOW CONTUSIONS<\/li>\n  <li>PT FELL AT A LOCAL BAR AND HIT FACE ON THE FLOOR    <span class='match'>FRACTURE<\/span> NASAL BONE S  67YOM<\/li>\n  <li>FELL OFF BUNKBED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>7YR F TOY CAR GOT FLIPPED ONTO PT BY SOME KIDS;DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL FROM SCOOTER C/O ANKLE SWELLING DX   ANKLE <span class='match'>FRACTURE<\/span>***<\/li>\n  <li>7YOF- PT FELL ONTO OUTSTRETCHED HAND/ARM WHILE PLAYING ON A DECK. NOW HAS PAIN TO R ARM. DX- RIGHT DISTAL RADIUS <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>91 YO M FELL ONTO A HARD WOODEN CHAIR AGAINST HIS LT SIDE OF HIS CHEST. PAINFUL CHEST AREA. DX <span class='match'>FRACTURE<\/span> RIBS<\/li>\n  <li>8 Y/O F  F ELL ON TRAMPOLINE <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>16YOM PLAYING FOOTBALL AND INJURED TOE,DEFORMITY;TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS ON SOFTBALL FIELD- WAS HIT TO MOUTH ACCIDENTLLY BY A BAT MOUTH INJURY- DX <span class='match'>FRACTURE<\/span>D TOOTH,CONTUSION TOOTH-LIP ABRASIONS.<\/li>\n  <li>8 Y/O F  FELL OFF SCOOTER <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>4YOM HURT FINGER FELL FROM SCOOTER DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>48 YOM DROPPED A DOOR ON HIS FOOT. DX-TOE <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>13YOM <span class='match'>FRACTURE<\/span>D FOOT INJURED WHEN SOMEONE FELL ON HIS FOOT WHILE PLAYIN G FOOTBALL<\/li>\n  <li>FELL ONTO CARPETED FLOOR TRYING TO MOVE VACUUM CLEANER   <span class='match'>FRACTURE<\/span> FEMUR 77YOF<\/li>\n  <li>93 YO F PT SLIPPED WHILE IN THE BATHTUB HITTING FACE ON EDGE OF TUB DX FACIAL <span class='match'>FRACTURE<\/span>S ADMITTED<\/li>\n  <li>79 YOF SUS <span class='match'>FRACTURE<\/span>D RIB DUE TO A FALL IN THE BATHTUB%<\/li>\n  <li>31YOF STUBBED RIGHT FOOT AGAINST A GLASS TABLE, RIGHT BIG TOE <span class='match'>FRACTURE<\/span> AND FOOT CONTUSION<\/li>\n  <li>FELL OUT OF TREEHOUSE TO GROUND;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>5YOF WAS CLIMBING OVER A CHILD GATE, & FELL ONTO HER OUTSTRETCHED LT HAND/ ARM.   DX; SUPRACONDYLAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>80 YO F PT TRIPPED AT HOME FALLING ONTO THE FLOOR HURTING HER RT WRIST DEFORMITY, DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>11YOM- YESTERDAY PT WAS PLAYING BASKETBALL FINGER WAS JAMMED BY BALL HAS SWELLING TO L 5TH FINGER. DX- LEFT 5TH FINGER <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>15YOF WAS PLAYING RUGBY, & GOT LT 2ND FINGER BENT BACK DX; LT 2ND FINGER PHALANX <span class='match'>FRACTURE<\/span><\/li>\n  <li>7 YO M, C/O RT HAND PAIN 1 DAY S/P LID OF DESK FELL ONTO HAND AT SCHOOL , SWELLING, TENDERNESS, DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS INVOLVED IN BICYCLE VS AUTOMOBILE ACCIDENT, WAS EJECTED OVER HANDLEBARS, C/O BACK DISCOMFORT. DX-COMPRESSION <span class='match'>FRACTURE<\/span>-T12<\/li>\n  <li>3YOM WAS RUNNING AT HOME SLIPPED ON TILE FLOOR AND FELL <span class='match'>FRACTURE<\/span>D RIGHT LOWER ARM<\/li>\n  <li>22 MOF FELL FROM STEP STOOL.  DX: <span class='match'>FRACTURE<\/span> HUMERUS.<\/li>\n  <li>8 YR M FELL PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>27YOF RIDING ATV, RAN INTO A TREE AND THE ATV TURNED OVER ON THE PT. DX.   <span class='match'>FRACTURE<\/span>D SHOULDER.<\/li>\n  <li>11YOM PLAYING DODGE BALL AT SCHOO, TWO DAYS AGO AND <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>FELL OFF OF A LADDER HURT WRIST   <span class='match'>FRACTURE<\/span> DISTAL RADIUS  17YOM<\/li>\n  <li>8 YO M FELL OFF TRAMPOLINE AT HOME. DX RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YR M FELL OFF PLAYGROUND EQUIPMENT;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>11 YR F FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D WRIST<\/li>\n  <li>11YOF WITIH <span class='match'>FRACTURE<\/span>D FINGER FROM SOCCER<\/li>\n  <li>19YO WHITE MALE AT PARK PLAYING BASKETBALL, JUMPED UP LANDED WRG ROLLED R ANKLE DX R ANKLE <span class='match'>FRACTURE<\/span>, R ANKLE DISLOCATION<\/li>\n  <li>12YOM WAS RIDING HIS SCOOTER AND FELL OFF HURTING HIS L LEG DX <span class='match'>FRACTURE<\/span> TO L TIBIA<\/li>\n  <li>19YOM FELL OFF BIKE MANDIBLE <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span> THUMB - 10 YO MALE IS A CATCHER AND HAS BEEN PLAYING ORGANIZED BASEBALL ALL DAY - NOW STATES LEFT THUMB IS VERY PAINFUL<\/li>\n  <li>12 YOM WAS ROLLERSKATING FELL AND TWISTED HIS LOWER LEG TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL OFF STEP STOOL;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>4YOM FELL DOWN A FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>5YOM PLAYING FOOTBALL AT SCHOOL AND <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>34YOF FELL SNOWBOARDING, INJURED RT WRIST   DX: RT RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>46YOM TRYING TO CARRY A BUNCH OF BAGS DOWN HIS STEPS,SLIPPED INJURED UPPER ARM AND RIBS;RIB CONTUSION AND HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>21YOF STUBBED RIGHT 4TH TOE ON A PLASTIC BIN THIS AM C/O TOE PAIN. DX: PHALANX <span class='match'>FRACTURE<\/span> OF TOE<\/li>\n  <li>13 YOM PLAYING SOCCER TWISTED RIGHT FOOT SUSTAINING A <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM <span class='match'>FRACTURE<\/span>D CLAVICLE FLIPPED OFF HIS MOTOCROSS BIKE ON THE TRACK WA S WEARING A HELMET<\/li>\n  <li>67YOF INJURED RIGHT MIDDLE FINGER WHILE BOWLING FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>3 YO F FELL OFF SLIDE LADDER. DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>57 YOM INJURED TOE HITTING INTO COUCH 4 DAYS AGO. DX-LEFT 5TH TOE PROXIMAL PHALYNX <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM PLAYING SOCCER AND <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>10 YO M PER MOTHER PT WAS PLAYING FOOTBALL WHEN HE WAS TACKLED FALLING ONTO HIS RT WRIST,+DEFORMITY. DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>86 Y/O FEMALE FELL YESTERDAY & INJURED WRIST ON FLOOR AT *** VILLAGE  D X: <span class='match'>FRACTURE<\/span>D RIGHT WRIST<\/li>\n  <li>PT FELL TO THE FLOOR AT THE NURSING HOME AND <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>42YO FEMALE WITH RIB <span class='match'>FRACTURE<\/span> FROM FALL DOWN STEPS<\/li>\n  <li>6YOF FELL FROM MONKEY BARS AND INJURED LEFT ELBOW, LEFT ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>10YOM WITH <span class='match'>FRACTURE<\/span>D WRIST WHILE SNOWBOARDING<\/li>\n  <li>PT LOST BALANCE AND FELL ON FLOOR AT *** DX: RIGHT PELVIC <span class='match'>FRACTURE<\/span> DX: RIGHT PELVIC FRACTURE<\/li>\n  <li>14 YOM INJURED RIGHT HAND PLAYING BASKETBALL.  DX: <span class='match'>FRACTURE<\/span> HAND.<\/li>\n  <li>5YOM WITH LOWER LEG PAIN AFTER FALL AT DAYCARE FROM PLAYGROUND POLE DXT IBIA <span class='match'>FRACTURE<\/span> **<\/li>\n  <li>CLOSED FINGER IN DOOR.   <span class='match'>FRACTURE<\/span> PHALANX      56YOF<\/li>\n  <li>24 YO M PT WAS GOING SLOW DOWN HILL ON A ATV WHEN HE FELL OFF LANDING ON LT ARM. PAINFUL. DX <span class='match'>FRACTURE<\/span> LT FOREARM<\/li>\n  <li>FELL OFF COUCH, AT HOME, & JAMMED THUMB INTO FLOOR DX; SALTER HARRIS II <span class='match'>FRACTURE<\/span> OF RT THUMB<\/li>\n  <li>73 YO F FELL AT MAILBOX, LANDED ON HIP AT HOME. DX HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YO F BIKE WRECK, HURT ARM. DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YR F FELL OFF SLIDE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>14 YOM JUMPED A FENCE AND HURT LEFT SHOULDER <span class='match'>FRACTURE<\/span> HUMERAL HEAD<\/li>\n  <li>46YOM STUBBED LEFT FIFTH TOE ON THE DINING ROOM TABLE LEG <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>26 YOM INJURED HAND FROM PLAYING VOLLEYBALL, HIT CONCRETE FLOOR. DX-BOXER <span class='match'>FRACTURE<\/span> 5TH METACARPAL RIGHT HAND<\/li>\n  <li>13 YO M PLAYING FOOTBALL WHEN HE WAS TACKLED AND FELL TO THE GROUND ON OUTSTRETCHED RT ARM. DX <span class='match'>FRACTURE<\/span> RT WRIST<\/li>\n  <li>87YOF FELL TO THE FLOOR ONTO HIP PELVIC <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM SUS <span class='match'>FRACTURE<\/span>D WRIST WHEN FELL FORWARD WHILE PLAYING FOOTBALL%<\/li>\n  <li>88YOF FELL TO THE FLOOR AT HOME LANDED ONTO SHOULDER AND <span class='match'>FRACTURE<\/span>D HUME RUS<\/li>\n  <li>69YOF RIDING BICYCLE AND FELL OFF ONTO RIGHT KNEE AND <span class='match'>FRACTURE<\/span>D FEMUR<\/li>\n  <li>4YOM; PT FELL FROM MOMS BED, LANDED ON SHOULDER.  D:  FALL / <span class='match'>FRACTURE<\/span> C LAVICLE<\/li>\n  <li>56 YOM C/O INVOLVED IN A MOTOR VEHICLE ACCIDENT THE PT WAS RIDING BICYC LE WITH INJURY TO FACE DX- FACE <span class='match'>FRACTURE<\/span><\/li>\n  <li>19YOM FELL OFF BIKE IN THE STREET AND INJURED LEFT KNEE, LEFT KNEE <span class='match'>FRACTURE<\/span><\/li>\n  <li>5YOM FELL OFF *** & INJURED HIS RT FOREARM, +SLIGHT DEFORMITY DX - ACUT E RT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>17 YOM PLAYING FOOTBALL GAME <span class='match'>FRACTURE<\/span>D RIGHT FOOT<\/li>\n  <li>*58YOF,FELL AND BROKE HIP IN SLIP AND FALL GOING DOWN STAIRS IN *** ISL AND,DX:<span class='match'>FRACTURE<\/span> HIP<\/li>\n  <li>PELVIC FX.  68YOF FELL TO FLOOR AT NURSING HOME AND <span class='match'>FRACTURE<\/span>D PELVIC.<\/li>\n  <li>36 YOM DROPPED A DUMBBELL ON FOOT. DX GREAT TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>15YOM FELL TO RIGHT SHOULDER WHILE SKATING AT RINK SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL ON MONKEY BARS AT HOME. <span class='match'>FRACTURE<\/span> RADIUS. 6 YOF*<\/li>\n  <li>50YOM WAS CLEANING UP LEAVES UNDER DECK AT HOME & HIT CHEST ON DECK MULTIPLE RIB <span class='match'>FRACTURE<\/span>S<\/li>\n  <li>PT FELL DOWN THE SLIDE AT SCHOOL AND INJURED ANKLE DX: <span class='match'>FRACTURE<\/span>D RIGHT ANKLE<\/li>\n  <li>26 YOM FELL OUT OF SHOWER AND INJURED HAND DX  <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YOF FELL OFF BIKE YESTERDAY AND INJURED RIGHT THUMB <span class='match'>FRACTURE<\/span> THUMB<\/li>\n  <li>93YOF LIVES AT *** ACCIDENTLY FELL TODAY STRIKING THE FLOOR, INJURED LT HIP;HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YOM SUSTAINED RT 5TH DIGIT INJURY WHILE AT SCHOOL DURING A TETHER BA LL EXERCISE. DX- FINGER <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>59YOF <span class='match'>FRACTURE<\/span>D LEFT FIFTH TOE STRUCK A PIECE OF FURNITURE<\/li>\n  <li>13YOF <span class='match'>FRACTURE<\/span>D RADIUS FELL WHILE ***<\/li>\n  <li>53 YOM WAS SKIING YESTERDAY AND FELL BACKWARDS SUSTAINING A <span class='match'>FRACTURE<\/span>D RIB<\/li>\n  <li>9YO F TRIPPED FELL DOWN STEPS, HURT ANKLE. DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>82YOF FELL TO FLOOR CAUSING DX <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>PT WITIH <span class='match'>FRACTURE<\/span>D ANKLE FROM FALL DOWN STEPS<\/li>\n  <li>14YOM WITH <span class='match'>FRACTURE<\/span> TO UPPER ARM AFTER WRECKING DIRTBIKE AFTER GOING OV ER A JUMP. WEARING HELMET.<\/li>\n  <li>8 YO M PT WAS AT GRANDMAS HOUSE SPINNING ON A SWIVEL DESK CHAIR AND FEL L OFF LANDING ON LT WRIST. DX <span class='match'>FRACTURE<\/span> LT WRIST<\/li>\n  <li>10YOM WITH <span class='match'>FRACTURE<\/span>D WRIST, FELL OFF MONKEY BARS<\/li>\n  <li>16YOM SLIPPED WHILE STEPPING OUT OF THE SHOWER AND HIT R SIDE OF FACE O N TILE FLOOR, PT IN A LOT OF PAIN, DX <span class='match'>FRACTURE<\/span> TO JAW<\/li>\n  <li>4 YOF SUS <span class='match'>FRACTURE<\/span>D TOE AFTER HITTING IT INTO THE WALL%<\/li>\n  <li>11YOM TIBIA/ FIBULA <span class='match'>FRACTURE<\/span> AFTER FALL IN FOOTBALL<\/li>\n  <li>9YOM WAS SKATEBOARDING AND FELL ONTO L WRIST, C/O PAIN, DX <span class='match'>FRACTURE<\/span> TO L RADIUS<\/li>\n  <li>UNHELMETED PT RIDING MOTOR SCOOTER WHEN HE WAS GOING TOO FAST DOWN A HI LL & WAS GRAZED BY A CAR @ UNK SPEED.DX:KNEE <span class='match'>FRACTURE<\/span>,KNEE SPRAIN,CONTU<\/li>\n  <li>86 YOF FELL TO FLOOR AT HOME<span class='match'>FRACTURE<\/span> HIP<\/li>\n  <li>60YOM WITH <span class='match'>FRACTURE<\/span>D RIB PLAYING BASKETBALL<\/li>\n  <li>23MOF <span class='match'>FRACTURE<\/span>D HUMERUS HIT BY A SWING*<\/li>\n  <li>10YR F FELL IN PE ACTIVITY;DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>50 YOF SUS A FALL TRYING TO GET OUT OF BED, NOW C/O RT LEG PAIN. DX RT FEMORAL NECK <span class='match'>FRACTURE<\/span>, FALL%<\/li>\n  <li>34 YOF REPORTS INJURING RT HAND WHEN SHE HIT A WALL AFTER HER DOG HAD DIED LAST NIGHT. DX HAND <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>5 YR M FELL ON TRAMPOLINE;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>53YO FEMALE WITH <span class='match'>FRACTURE<\/span>D ANKLE FELL DOWN A STEP<\/li>\n  <li>2YOM FOREARM <span class='match'>FRACTURE<\/span> AFTER FALL FROM BIKE<\/li>\n  <li>69YOF FELL OFF HER PORCH ONTO GRASS SUSTAINED A HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D ANKLE FROM FALL ONTO FLOOR<\/li>\n  <li>A 22 YOM WAS HIT IN THE FACE WITH A BEER BOTTLE. DX: NASAL <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>2 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>49 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY FALLING DOWN STAIRS.<\/li>\n  <li>11YR M PLAYING SOCCER; HIT FINGER ON ANOTHER PLAYER'S SHIN GUARD;DX F INGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL OFF A THREE WHEELED BIKE LANDING ONTO RIGHT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>3 YR F GOT HAND CAUGHT IN CLOSET DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>7 YOF, FELL OFF OF SWING, <span class='match'>FRACTURE<\/span> ARM<\/li>\n  <li>34 YO F FELL OFF PORCH, HURT WRIST. DX WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>13MOF WAS SLIDING DOWN A SLIDE WHILE SITTING ON SISTER'S LAP WHEN LEG G OT CAUGHT; TIBIA <span class='match'>FRACTURE<\/span><\/li>\n  <li>66YO WHITE MALE AT HOME FELL 10 FEET FROM LADDER OPEN RIGHT PROXIMAL ULNA/OLECRANON <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOM JUMPING ON A TRAMPOLINE AT HOME AND FELL OFF <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>12 Y/O M  FELL PLAYING DODGEBALL <span class='match'>FRACTURE<\/span> RADIUS<\/li>\n  <li><span class='match'>FRACTURE<\/span>D RIB 31 YO M FRACTURED RIB WHEN FELL ON BED<\/li>\n  <li>WRESTLING AND FELL TO FLOOR;DX <span class='match'>FRACTURE<\/span>D LOWER LEG<\/li>\n  <li>38YOM SUSTAINED A HAND <span class='match'>FRACTURE<\/span> KICKED IN THE RIGHT HAND DURING KARATE PRACTICE<\/li>\n  <li>41YOF SLAMMED FINGER IN DRESSER DRAWER DX <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>4MOF FELL DOWN STAIRS WHILE BEING CARRIED, PT LANDED ON L LEG, LEG BRUI SED, DX <span class='match'>FRACTURE<\/span> TO L FIBULA AND TIBULA<\/li>\n  <li>PT WALKING DOWN A FLIGHT OF STAIRS WHILE WEARING A PAIR OF HIGH HEELED SHOES AND FELL <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>*30 YOM, PT STATES HE TWISTED HIS FOOT WHEN GOING DOWN STAIRS. DX; RT A NKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>58YOM <span class='match'>FRACTURE<\/span>D FINGER INJURED WHEN CATCHING A THROWN FOOTBALL WHEN PLA YING WITH HIS SON*<\/li>\n  <li>55YOF HAD SOMEONE PULL LEAF BLOWER OUT OF HAND & INJ FINGER FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>41YOM FELL DOWN A FLIGHT OF CONCRETE STAIRS AND <span class='match'>FRACTURE<\/span>D LEFT GREAT T OE<\/li>\n  <li>33 YOF WAS VACUUMING UNDER HER COUCH AND HIT HER TOE AGAINST LEG OF COU CH AND SUSTAINED A TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT WAS @ THE MALL, FELL OFF A 3 FT SLIDE FELL ONTO OUTSTRETCHED ARM. DX LEFT RADIAL ULNA <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>PT FELL OFF A 6 FOOT FENCE INJURYING RIGHT ANKLE, <span class='match'>FRACTURE<\/span> OF RIGHT ANKLE<\/li>\n  <li>30YOF TRIPPED ON STAIRS AND TWISTED RIGHT ANKLE ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>63 YOM CUTTING TREE DOWN, FELL ROLLED DOWN HILL, HURT . DX H IP <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YR M FELL OFF SWING;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>82YOF PT SLIPPED ON BATHROOM FLOOR GETTING OFF TOILET INJURING R. LET. DX: CLOSED TIBIA/FIBULA <span class='match'>FRACTURE<\/span>. $<\/li>\n  <li>PT FELL IN THE BATHROOM AND HIT HER SIDE ON THE SINK AFTER GETTING DIZZY, DX: CONTUSION TO RIB, ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>70YOM FELL FROM TOP OF 5FT LADDER SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li>4 YOM SITTING ON A KITCHEN STOOL WHEN IT TIPPED OVER PINNING L FOOT BET WEEN RUNG OF STOOL AND FLOOR DX CLOSED <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>24YOM TRIMMING A TREE LIMB AND IT FELL ONTO CHEST RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>86 YOF <span class='match'>FRACTURE<\/span>D NASAL BONES & FRACTURED LT. KNEE S/P FALLING FORWARD O NTO FLOOR.*<\/li>\n  <li>46 YOF WEARING HIGH HEELED SHOES, CAUGHT ON CARPETING AND FELL SUSTAINI NG A <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>7 Y/O WF FELL OFF BICYCLE <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>PT FELL WHILE PLAYING TENNIS AND LANDED ONTO LEFT HIP <span class='match'>FRACTURE<\/span>D HIP<\/li>\n  <li>HAND CAUGHT IN HANDRAIL.  DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>86 YOF TRIPPED ON STEPS, FELL INTO WALL AT HOME. DX FEMUR <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF FELL OFF ROPE SWING DX <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>24YOF UNRESTRAIONED FS PASSENGER IN AN MVC SWERVED TO AVOID A BUCKET IN THE STREET AND CRASHED OPEN <span class='match'>FRACTURE<\/span> TO WRIST<\/li>\n  <li>11 YOF INJURED RT LITTLE FINGER WHEN SHE WAS PLAYING BASKETBALL AT HER FRIEND'S HOUSE THIS EVENING. DX FINGER <span class='match'>FRACTURE<\/span>%<\/li>\n  <li>FL96 Y/O W/FM <span class='match'>FRACTURE<\/span>D LOWER LEG WHEN GOT UP TO ANSWER PHONE AND FELL ONTO THE FLOOR BETWEEN BED AND THE TABLE AT ASSISTED LIVING FACILITY.<\/li>\n  <li>73YOM C/O ARM PAIN. STS HIT AN ALUMINUM SINK. ADMITS TO DRINKING TODAY. ETOH 256. DX UNLA <span class='match'>FRACTURE<\/span><\/li>\n  <li>14 YOM PLAYING SOCCER COLLIDED HEAD TO HEAD WITH ANOTHER PLAYER SUSTAINING A CONCUSSION AND FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>12YO BLACK MALE FELL IN FOOTBALL PRACTICE AT SCHOOL,TWISTED L HAND DX RADIUS & ULNA <span class='match'>FRACTURE<\/span><\/li>\n  <li>33YOM PT COMPLAINING OF RIB PAIN FELL ON STEPS AT HOME <span class='match'>FRACTURE<\/span>D RIB DX FRACTURE#<\/li>\n  <li>14YOF TRIPPED OVER A STEP AND FELL ON LEFT SHOULDER, LEFT CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6YOF HURT WRIST FELL FROM CHAIR DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>9 YOF WAS JUMPING DOWN STEPS AND FELL SUSTAINING A <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>82 YOF FELL OUT OF BED THIS MORNING AT NURSING HOME SUSTAINING <span class='match'>FRACTURE<\/span> D HIP<\/li>\n  <li>23YOM INJURED FINGER WHILE PLAYING FOOTBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>88YOM FELL BACKWARD WHILE TRYING TO OPEN DOOR HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>32YOM FELL OFF AN ATV ON LEFT ARM, LEFT FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>79 YO M PT WAS LIFTING A PROPANE TANK AND FELT SUDDEN PAIN IN HIS UPPER BACK. DX <span class='match'>FRACTURE<\/span> THORACIC SPINE<\/li>\n  <li>89YOF <span class='match'>FRACTURE<\/span>D TOE WITH LACERATION WINDOW BROKE AT NURSING HOME FELL O N PTS FOOT*<\/li>\n  <li>13 YR M FELL OFF TOP BLEACHER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>14  Y/O M    FELL ON TRAMPOLINE <span class='match'>FRACTURE<\/span> FOOT<\/li>\n  <li>10YR M FELL OFF SCOOTER; DX TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>72YOM AT HOME IN THE GARAGE STANDING ON A WOODEN SHELVE & IT BROKE CAUS ED PT TO FALL DX LIP LACERATION, RIB <span class='match'>FRACTURE<\/span>, SKIN TEAR, MECHANICAL FA<\/li>\n  <li>13YOM GOT FINGER HIT PLAYING BASKETBALL DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>44 YR OLD MALE STUMBLED GETTING OUT OF BED AND STRUCK SHOULDER ON WALL  AT HOME  DX: <span class='match'>FRACTURE<\/span>D SHOULDER<\/li>\n  <li>FELL WHILE OUT WALKING AND HURT HAND <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>35 YO F HIT TREE WHILE SLEDDING. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>7YOM WITH <span class='match'>FRACTURE<\/span>D ELBOW IN FALL FROM SCOOTER<\/li>\n  <li>49 YOM PRESENT TO ER WITH INJURY TO WRIST AFTER HE FELL FROM BICYCLE - DX- <span class='match'>FRACTURE<\/span> WRIST<\/li>\n  <li>7 YOM FELL FROM PORCH AT HOME <span class='match'>FRACTURING<\/span> HIS LEFT WRIST<\/li>\n  <li>11YOM C/O FINGER PAIN PLAYING FOOTBALL, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>33YOF WITH WRIST <span class='match'>FRACTURE<\/span> FROM FALL WHILE ICE SKATING<\/li>\n  <li>29 YOM WAS SEXIN HIS GIRL AND SHE FELL ON HIS ARM AND IT HIT THE HEATER AND SHE IS NOT SMALL  -  <span class='match'>FRACTURE<\/span> ELBOW<\/li>\n  <li>6 Y/O F  FELL OFF MONKEY BARS <span class='match'>FRACTURE<\/span> RADIUS<\/li>\n  <li>5YOM GOT LEFT THIRD FINGER CAUGHT IN THE WHEEL OF A SHOPPING CART AT ** * <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>13 YO F INJURY TO HAND SKIING. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>65 YOF INJURED UPPER ARM, FELL FROM HORSE. DX-ACUTE LEFT HUMERUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>FELL OFF MONKEYBARS;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>41YOF <span class='match'>FRACTURE<\/span>D FIBULA ROLLED ANKLE WHEN PLAYING VOLLEYBALL<\/li>\n  <li>12YOM AT SCHOOL PLAYING FOOTBALL - HURT L HAND DX BUCKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT GOT UP IN THE MIDDLE OF THE NIGHT AND TRIPPED OVER A DOG TO THE FLOO R AND <span class='match'>FRACTURE<\/span>D RIGHT LOWER ARM<\/li>\n  <li>39YOM AT THE HOSPITAL AND RECEIVED NEWS ABOUT A FAMILY DEATH AND PUNCHE D A WALL <span class='match'>FRACTURE<\/span>D HAND<\/li>\n  <li><span class='match'>FRACTURE<\/span> FOOT - 48 YO FEMALE STATES SHE TWISTED HER FOOT COMING OF THE LAST STEP OF A SET OF STAIRS AT HOME EARLIER TODAY<\/li>\n  <li>5 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>32YOM <span class='match'>FRACTURE<\/span>D HAND PT HAD A SEIZURE HAND HIT THE BEDPOST CAUSING INJU RY*<\/li>\n  <li>5 YOF INJURED WRIST, FALL FROM SKATEBOARD. DX-FALL, RIGHT WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>11YOF WITH <span class='match'>FRACTURE<\/span>D WRIST SNOWBOARDING<\/li>\n  <li>14YOM GOT FINGER BENT BACK PLAYING FOOTBALL DX: FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT FELL ON OUTSTRETCHED ARM WHILE ***, NOW W/PAIN, SWELLING AND DEFORMI TY TO WRIST; DISTAL RADIAL <span class='match'>FRACTURE<\/span>, ULNAR STYLOID FRACTURE<\/li>\n  <li>WAS MAD AT CHILD AND PUNCHED A WALL AT HOME, HAS HAND <span class='match'>FRACTURE<\/span>.<\/li>\n  <li>75YOM FELL TO THE FLOOR AT THE NURSING HOME AND <span class='match'>FRACTURE<\/span>D RIGHT HIP<\/li>\n  <li>46YO WHITE FEMALE FELL IN A STORE,BATHROOM DOOR CAUGHT ON FLIP FLOP HEMATOMA R FOREHEAD, DX L TIBIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>38 YO F WEARING FLIP FLOPS, SLIPPED ON FROSTY GROUND. DX ANKLE <span class='match'>FRACTURE<\/span> S<\/li>\n  <li>13YOM RIDER OF A *** BIKE ON A TRACK AND FELL OFF <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>49 YOF FELL TO MARBLE FLOOR IN CASINO HIP <span class='match'>FRACTURE<\/span><\/li>\n  <li>47 YO F PT WAS OUTSIDE WALKING TO LOSE WEIGHT WHEN SHE HAD SEVERE RT HE EL PAIN, INCREASING PAIN. DX <span class='match'>FRACTURE<\/span> RT HEEL SPUR<\/li>\n  <li>45 YOM TRIPPED AND FELL DOWN STAIRS AND INJURED TOE DX  <span class='match'>FRACTURE<\/span><\/li>\n  <li>12 YR M PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li><span class='match'>FRACTURE<\/span> RT.ELBOW.PT.REFERS TRIP FALLING DOWN ON FLOOR AT HOME.<\/li>\n  <li>51 YO M, C/O RT 4TH FINGER PAIN, PT WAS CARRYING A LUGGAGE DOWN STAIRS WHEN HE FELL AND JAMMED HIS FINGER, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>68 YOF HAD A MECHANICAL FALL WITH INJURY UPPER LEG WHEN SHE HIT THE FLO OR AND WAS UNABLE TO GET UP- DX- <span class='match'>FRACTURE<\/span> RT UPPER LEG<\/li>\n  <li>81 YOF FELL ON FLOOR OF NURSING HOME SUSTAINING A LUMBAR <span class='match'>FRACTURE<\/span><\/li>\n  <li>92YOF DAUGHTER HEARD MOTHER FALL ONTO THE FLOOR IN BEDROOM INJURED LT FEMUR ABOVE KNEE;UPPER LEG <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT BECAME DIZZY , FELL AND HIT HARDWOOD FLOOR   <span class='match'>FRACTURE<\/span> LEFT ANKLE  72 YOM<\/li>\n  <li>25 YOM PLAYING *** *** COLLIDED WITH ANOTHER PLAYER TWISTINGHIS RI GHT ANKLE, DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>87YOF FELL OUT OF BED TO FLOOR AT NURSING HOME LUMBAR SPINE COMPRESSION <span class='match'>FRACTURE<\/span><\/li>\n  <li>2YOF <span class='match'>FRACTURE<\/span>D TIB. FELL ON TRAMPOLINE AT HOME<\/li>\n  <li>6 YOF SUS <span class='match'>FRACTURE<\/span>D WRIST DUE TO FALL OFF OF MONKEY BARS%<\/li>\n  <li>6 Y/O W/M <span class='match'>FRACTURE<\/span>D LOWER ARM WHEN CLIMBED ON MATTRESS THAT WAS LEAN- ING AGAINST WALL AND FELL ON CERAMIC TILE FLOOR AT HOME.<\/li>\n  <li>12YOM FELL IN A *** AT SCHOOL, PT C/O L ELBOW PAIN, DX <span class='match'>FRACTURE<\/span> TO L HU MERUS<\/li>\n  <li>24 YO M RUNNING WIRES THRU SHELVES OF ENTERTAINMENT CENTER, GIRLFRIEND SLIPPED AND DROPPED ENTERTAINMENT CENTER ON HAND. DX HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>23 YO M PT WAS RIDING HIS BICYCLE AND HIT A METAL POLE WITH HIS HAND, SEVERE PAIN. DX <span class='match'>FRACTURE<\/span> RT HAND<\/li>\n  <li>11YOM FELL WHILE PLAYING BASKETBALL DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>79 Y/O F  TRIP/FALL TO FLOOR TRIP OVER CARPET <span class='match'>FRACTURE<\/span> HUMERUS,  LS  STRAIN<\/li>\n  <li>57YOF GETTING OUT OF BED AND FELL ONTO BUTTOCKS COMPRESSION <span class='match'>FRACTURE<\/span> TO LOWER BACK<\/li>\n  <li>12 YOM FELL PLAYING FOOTBALL.  DX: <span class='match'>FRACTURE<\/span> RADIUS.<\/li>\n  <li>76 Y/O F FELL OFF CHAIR TO FLOOR LS COMP <span class='match'>FRACTURE<\/span><\/li>\n  <li>10YOM FELL OFF OF BLEACHERS AND HAD IMMEDIATE PAIN AND DEFORMITY TO L FOREARM, DX <span class='match'>FRACTURE<\/span> TO  TO L LOWER ARM<\/li>\n  <li>16 Y/O MALE FELL OFF BICYCLE & INJURED HAND ON STREET DX: <span class='match'>FRACTURE<\/span>D RIGHT HAND<\/li>\n  <li>13 Y/O M  FELL OFF SKATEBOARD <span class='match'>FRACTURE<\/span> CLAVICLE<\/li>\n  <li>88 YOF DX: HIP <span class='match'>FRACTURE<\/span>, CLSD. PATIENT FELL WHILE GETTING OUT OF A BOOT H @ RESTAURANT, 6\" STEP DOWN FROM BOOTH*<\/li>\n  <li>14 YR M PLAYING FOOTBALL;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>63YOF TRIPPED OVER CARPET TWISTED ANKLE DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>10 MO F FELL FROM 4 FT COUNTER AT HOME;DX <span class='match'>FRACTURE<\/span>D SKULL<\/li>\n  <li>SLAMMED FINGER IN DOOR;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>*17 YOM,PT WAS RUNNING & KICKED WOODEN DOOR W/ LEFT 5TH TOE. DX; LT 5TH TOE <span class='match'>FRACTURE<\/span><\/li>\n  <li>6 YOM COUSIN PUSHED CART TOWARDS HIM  HITTING HIS LEFT FOREARM ONTO HAN DLEBAR OF SHOPPING CART.  DX: <span class='match'>FRACTURE<\/span> RADIUS.<\/li>\n  <li>9 YR M FELL IN AMUSEMENT BOUNCE HOUSE;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>*14 YOM, PT DROPPED 35 LB WT ON HIS FINGER. DX; LEFT 3RD DIGIT <span class='match'>FRACTURE<\/span><\/li>\n  <li>TRIPPED OVER A *** WHILE DOING YARD WORK. <span class='match'>FRACTURE<\/span> NASAL BONES,CLOSED. 80 YOM*<\/li>\n  <li>FELL OFF LADDER;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>45 YOM FELL INTO COFFEE TABLE <span class='match'>FRACTURE<\/span> RIB<\/li>\n  <li>59YOF TRIPPED ON A BOX AS SHE WAS WALKING DOWN THE STEPS OF HER TRAILER <span class='match'>FRACTURE<\/span>D ANKLE<\/li>\n  <li>23 YOM INJURED HAND PUNCHING WALL. DX-RIGHT HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>9YOF FELL OFF HER SCOOTER AND SUSTAINED A LOWER ARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>HIT HAND ON DRESSER HAND <span class='match'>FRACTURE<\/span><\/li>\n  <li>24  Y/O M  PUNCHED WALL <span class='match'>FRACTURE<\/span> HAND<\/li>\n  <li>13YOM JAMMED RIGHT MIDDLE FINGER WHILE PLAYING BASKETBALL FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>77YOF PT COMPLAINING OF FALLING AT HOME FROM BATHTUB INJURED RADIUS, RA DIUS <span class='match'>FRACTURE<\/span> DX RADIUS FRACTURE#<\/li>\n  <li>12YOM COLLIDED WITH ANOTHER PLAYER WHILE PLAYING FOOTBALL, FACIAL TRAUMA, NASAL <span class='match'>FRACTURE<\/span>, AND ACUTE CLOSED HEAD INJURY<\/li>\n  <li>14MOM SHUT HIS HAND IN CABINET DOOR, DX FINGER <span class='match'>FRACTURE<\/span><\/li>\n  <li>42 YOF INJURED HAND FROM TURING WRENCH AND FELT POP. DX-RIGHT HAND 4TH METACARPAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>12YOF HURT WRIST FELL OFF FURNITURE DOLLY DX: WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>33 YOF W / RT 11TH RIB <span class='match'>FRACTURE<\/span> REPORTS FELL GOING UP THE STEPS 2 DAYS AGO & HURT SITE. +DIFFICULTY BREATHING.%<\/li>\n  <li>23YOM PLAYING VOLLEYBALL HAD FINGER BENT BACK DX <span class='match'>FRACTURE<\/span> FINGER<\/li>\n  <li>31 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY TWISTING IT ON STEPS AT HOME.<\/li>\n  <li>5YOF DOING GYMNASTICS <span class='match'>FRACTURE<\/span>D ELBOW WHILE TUMBLING<\/li>\n  <li>15 YOM FELL OFF BIKE AND HIT FACE <span class='match'>FRACTURE<\/span> TOOTH<\/li>\n  <li>21YOF SUSTAINED FOOT <span class='match'>FRACTURE<\/span> WHEN ACCIDENTALLY FELL DOWN THE STAIRS@<\/li>\n  <li>47YOF FELL GETTING OUT OF THE SHOWER ONTO OUTSTRETCHED RIGHT LOWER ARM <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>FELL TO TILE FLOOR;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>30YOM FELL DOWN A  FLIGHT OF STAIRS AND <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>76YOM NASAL <span class='match'>FRACTURE<\/span> TRYING TO PULL A NAIL OUT OVERHEAD WITH A HAMMER H IT SELF IN THE FACE WITH THE HAMMER<\/li>\n  <li>9YOM FELL WHILE RIDING SKATEBOARD AND LANDED IN STREET ELBOW <span class='match'>FRACTURE<\/span><\/li>\n  <li>71YOF TRYING TO GET DOG COLLAR ON THE DOG AND THE DOG TOOK OFF- FINGER CAUGHT <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>18 Y/O FEMALE HIT IN NOSE WITH BASKETBALL YESTERDAY DX: NASAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>4YOF FELL AGAINST A TABLE AND SUSTAINED A CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT PLAYING SOFTBALL JUMPED OVER A FENCE TO GET THE BALL AND <span class='match'>FRACTURE<\/span>D R IGHT ANKLE<\/li>\n  <li>10YOM FELL OFF A SLIDING BOARD AND SUSTAINED A WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>62 YO F PT TRIPPED ON THE STAIRS HITTING RT 2ND TOE, HEARD A SNAP DX <span class='match'>FRACTURE<\/span> RT 2ND TOE<\/li>\n  <li>34 YOM FELL DOWN STAIRS YESTERDAY <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>18 YOF <span class='match'>FRACTURE<\/span>D AN ANKLE BY FALLING FROM A BUNK BED TO THE FLOOR AT HO ME.<\/li>\n  <li>PT WITH ANKLE <span class='match'>FRACTURE<\/span> FROM VOLLEYBALL<\/li>\n  <li>14YOM WAS PLAYING INDOOR SOCCER,DOVE FOR BALL,STRUCK SHOULDER; SHOULDER <span class='match'>FRACTURE<\/span><\/li>\n  <li><span class='match'>FRACTURE<\/span> RT.HIP.92YOF.PT.WAS BOUGHT TO THE ER,DUE TO FALL FROM BED.<\/li>\n  <li>7 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D FINGER<\/li>\n  <li>10YOF FOREARM <span class='match'>FRACTURE<\/span> WHEN FELL OFF BIKE FOUND IN STREET WAS WEARING H ELMET<\/li>\n  <li>14YOM WAS HIT IN NOSE WITH HELMET WHILE PLAYING LACROSSE NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>11 YR M PLAYING VOLLEYBALL;DX <span class='match'>FRACTURE<\/span>D FOOT<\/li>\n  <li>12 YOF <span class='match'>FRACTURE<\/span> TO RIGHT THIRD FINGER S/P FELL AFTER HER BROTHER WAS RI DING A BICYCLE TOO CLOSE TO HER$<\/li>\n  <li>47 YOM SUSTAINED A LOWER LEG <span class='match'>FRACTURE<\/span> WHILE MOVING A DOGHOUSE<\/li>\n  <li>6 YR M FELL 4FT FROM PORCH;DX <span class='match'>FRACTURE<\/span>D CLAVICLE<\/li>\n  <li>81YOF GETTING ITEMS FROM HER MAILBOX AND LOST BALANCE AND FELL TO HER D RIVEWAY <span class='match'>FRACTURE<\/span>D LOWER BACK<\/li>\n  <li>37 YOM FELL OUT OF SHOWER, HIT CHEST ON TOILET. DX RIB <span class='match'>FRACTURE<\/span><\/li>\n  <li>5 YO F, C/O LEFT SHOULDER PAIN, FELL OUT OF BED IN THE MIDDLE OF THE NI GHT, DX CLAVICLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>PT DROPPED A LADDER ONTO RIGHT GREAT TOE AT HOME AND <span class='match'>FRACTURE<\/span>D TOE<\/li>\n  <li>2 YR F ROLLED OFF PORCH ;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>19YOF FELL TWISTED LEG PLAYING SOCCER DX: LOWER LEG <span class='match'>FRACTURE<\/span><\/li>\n  <li>11YOF ACCIDENTLY HIT L WRIST OFF OF TABLE, PT C/O PAIN, DX <span class='match'>FRACTURE<\/span> TOL WRIST<\/li>\n  <li><span class='match'>FRACTURE<\/span> HAND - 41 YO MALE PRESENTS WITH RIGHT HAND PAIN AFTER PUNCHING A WALL 1 HOUR PTA<\/li>\n  <li>11 YOF TWISTED ANKLE ON STEP AT SCHOOL <span class='match'>FRACTURE<\/span> ANKLE<\/li>\n  <li>58 YOM <span class='match'>FRACTURE<\/span>D A TOE BY STRIKING AGAINST FURNITURE AT HOME.<\/li>\n  <li>6 YO F, C/O RT ARM PAIN, AROUND 2:10PM WAS IN BALLET CLASS WHEN SHE FEL L ON EXTENDED WRIST, DX FOREARM <span class='match'>FRACTURE<\/span><\/li>\n  <li>85YOF WAS HOME LOST BALANCE IN BATHROOM,FELL STRUCK SINK THEN BATHTUB WITH LT WRIST;WRIST <span class='match'>FRACTURE<\/span><\/li>\n  <li>33 YO M PT WAS RIDING HIS BICYCLE IN A PARKING LOT WHILE ALCOHOL INTOXI CATED AND FELL OVER HITTING FACE ON PAVEMENT.DX FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>18 YOM INJURED FIBULA PLAYING FOOTBALL. DX-RIGHT FIBULA <span class='match'>FRACTURE<\/span><\/li>\n  <li>HIP INJURY FROM TURNED FROM HIS WALKER TO GET IN BED, FOUND HIMSELF ON BEDROOM CARPET FLOOR, HIT BACK OF HEAD ON NIGHT STAND.DX-<span class='match'>FRACTURE<\/span> HI<\/li>\n  <li>PT FELL YEST ON TILE FLOOR THAT MOM HAD RECENTLY MOPPED, NOW W/SWELLING TO WRIST AND CRYING W/TOUCH OF ARM; DISTAL RADIUS <span class='match'>FRACTURE<\/span><\/li>\n  <li>74 YOM CLOSED HEAD INJURY & <span class='match'>FRACTURE<\/span>D LT. CLAVICLE- REPORTS LEANING BAC K IN CHAIR & CHAIR TIPPED OVER & HE FELL, HITTING HEAD 30 MIN AGO.*<\/li>\n  <li>PT WITH <span class='match'>FRACTURE<\/span>D WRIST FROM FALL OFF MONKEY BARS<\/li>\n  <li>14 YR M CRASHED ATV;DX <span class='match'>FRACTURE<\/span>D SHOULDER<\/li>\n  <li>16 YO M PLAYING BASKETBALL WHEN ANOTHER PLAYER CAME DOWN STEPPING ON PT 'S RT ANKLE. UNABLE TO WALK ON IT. DX <span class='match'>FRACTURE<\/span> RT ANKLE ADMITTED<\/li>\n  <li>PLAYING SOCCER;DX <span class='match'>FRACTURE<\/span> DHOULDER<\/li>\n  <li>PAIN TO ANKLE TWISTED GOING DOWN STEPS DX: ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>81 YOF <span class='match'>FRACTURE<\/span>D LT. HUMERUS S/P TRIPPED ON LAST STEP & FELL ON LT. SID E WHILE COMING UP STEPS TO DECK @ HOME THIS AM.*<\/li>\n  <li>47YOF SLIPPED IN BATHROOM AND FELL INTO WALL AT HOME NASAL BONE <span class='match'>FRACTURE<\/span><\/li>\n  <li>73 YOF <span class='match'>FRACTURE<\/span> TO HIPS. REPORTS FELL OUT OF A BED 2 DAYS AGO.$<\/li>\n  <li>26YOF <span class='match'>FRACTURE<\/span>D TOE FELL DOWN STEPS LANDED ON UNEVEN DRIVEWAY*<\/li>\n  <li>PT WAS WALKING WITH A WALKER AND FELL AT HOME <span class='match'>FRACTURE<\/span>D IP<\/li>\n  <li>85 YO F PT WAS STEPPING INTO SHOWER SLIPPED AND FELL ONTO LT HIP, SEVER E PAIN. DX <span class='match'>FRACTURE<\/span> LT HIP ADMIT<\/li>\n  <li>11 YR M FELL IN FLOOR;DX <span class='match'>FRACTURE<\/span>D LOWER ARM<\/li>\n  <li>FELL OFF BIKE;DX <span class='match'>FRACTURE<\/span>D THUMB<\/li>\n  <li>3YOF LEG PAIN AFTER JUMPING ON A TRAMPOLINE WITH HER AUNT HX OF TIBIAL <span class='match'>FRACTURE<\/span> JUNE 10TH*<\/li>\n  <li>14 YO F, C/O LEFT FOOT PAIN AFTER GETTING IT CAUGHT IN SWEATSHIRT AND F ALLING DOWN STAIRS AT SCHOOL, DX ANKLE <span class='match'>FRACTURE<\/span><\/li>\n  <li>30YOM FELL OFF A BICYCLE AND <span class='match'>FRACTURE<\/span>D RIGHT WRIST<\/li>\n  <li>4 YR M FELL OFF BED;DX <span class='match'>FRACTURE<\/span>D ELBOW<\/li>\n  <li>67 YOM SUSTAINED MUTIPLE LT RIB <span class='match'>FRACTURE<\/span>S AFTER FALLING FROM HIS LADDER AND LANDING ON HIS STEPS<\/li>\n  <li>51YOM <span class='match'>FRACTURE<\/span>D RADIUS ABRASION TO LEG FELL OFF BIKE GOING DOWN HILL*<\/li>\n  <li>18YOM HIT BEDFRAME DX <span class='match'>FRACTURE<\/span> HAND<\/li>\n  <li>8 YOM, FELL OFF SKATEBOARD, <span class='match'>FRACTURE<\/span> ELBOW<\/li>\n  <li>16 YOM W/ <span class='match'>FRACTURE<\/span>D R ANKLE JUMPED INTO POOL AND HIT THE BOTTOM DX: NON DISPLACED FRACTURE R ANKLE<\/li>\n  <li>76YOM FELL IN HIS DRIVEWAY WHILE GETTING THE MAIL FELL ONTO FACE FACIAL <span class='match'>FRACTURE<\/span><\/li>\n  <li>37 YOF FELL ON STEPS WHILE SHOVELING SNOW.  DX:  <span class='match'>FRACTURE<\/span> DISTAL RADIUS<\/li>\n  <li>13 YOF PASSENGER ON 4-WHEELER; DRIVER LOST CONTROL; WRECKED DX:  WRIST <span class='match'>FRACTURE<\/span><\/li>\n<\/ul>"},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

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
##                                                description gender
##                                                      <chr>  <chr>
## 1     10 MO F FELL OUT OF SHOPPING CART;DX FRACTURED SKULL      f
## 2                  75YOF WITH LAC TO FINGER FROM METAL CAN      f
## 3                  8YOF FRACTURED FINGER FELL OFF HER BIKE      f
## 4 9 YOM TACKLED DURING FOOTBALL PRACTICE.  DX: CONCUSSION.      m
## 5     PT WAS HIT ON RT SIDE WHILE PLAYING FOOTBALL DX: CHI   <NA>
## # ... with 1 more variables: age <dbl>
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
  
