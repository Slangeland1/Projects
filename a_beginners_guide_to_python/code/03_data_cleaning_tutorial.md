
<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Explore-the-data" data-toc-modified-id="Explore-the-data-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Explore the data</a></span></li><li><span><a href="#Traditional-Missing-Values" data-toc-modified-id="Traditional-Missing-Values-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>Traditional Missing Values</a></span></li><li><span><a href="#Unexpected-Missing-Values" data-toc-modified-id="Unexpected-Missing-Values-3"><span class="toc-item-num">3&nbsp;&nbsp;</span>Unexpected Missing Values</a></span></li><li><span><a href="#Summarizing-Missing-Values" data-toc-modified-id="Summarizing-Missing-Values-4"><span class="toc-item-num">4&nbsp;&nbsp;</span>Summarizing Missing Values</a></span></li><li><span><a href="#Replacing-Values" data-toc-modified-id="Replacing-Values-5"><span class="toc-item-num">5&nbsp;&nbsp;</span>Replacing Values</a></span></li></ul></div>

__File Info:__

Date: 20181023

Author: Stephanie Langeland 

File Name: 03_data_cleaning_tutorial.ipynb

Version: 01

Previous Version/File: None

Dependencies: None

Purpose: Data Cleaning with Python and Pandas: Detecting Missing Values

Input File(s): property data.csv

Output File(s): None

Required by: 
 - A beginner's guide to Python.
 - Tutorial: https://www.dataoptimal.com/data-cleaning-with-python-2018/

Status: Complete

Machine: Dell Latitude - Windows 10

Python Version: Python 3


```python
## import packages:
import pandas as pd
import numpy as np
```

# Explore the data 


```python
## Load data:
df = pd.read_csv(
    "C:/Users/stephanie.langeland/OneDrive - Slalom/bit_bucket/a_beginners_guide_to_python/input_output_files/property data.csv"
)

df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>PID</th>
      <th>ST_NUM</th>
      <th>ST_NAME</th>
      <th>OWN_OCCUPIED</th>
      <th>NUM_BEDROOMS</th>
      <th>NUM_BATH</th>
      <th>SQ_FT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100001000.0</td>
      <td>104.0</td>
      <td>PUTNAM</td>
      <td>Y</td>
      <td>3</td>
      <td>1</td>
      <td>1000</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100002000.0</td>
      <td>197.0</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>3</td>
      <td>1.5</td>
      <td>--</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100003000.0</td>
      <td>NaN</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>NaN</td>
      <td>1</td>
      <td>850</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100004000.0</td>
      <td>201.0</td>
      <td>BERKELEY</td>
      <td>12</td>
      <td>1</td>
      <td>NaN</td>
      <td>700</td>
    </tr>
    <tr>
      <th>4</th>
      <td>NaN</td>
      <td>203.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>3</td>
      <td>2</td>
      <td>1600</td>
    </tr>
  </tbody>
</table>
</div>



What are the features?

 - ST_NUM: Street number (should be numeric)

 - ST_NAME: Street name (should be a string)

 - OWN_OCCUPIED: Is the residence owner occupied (should be a string i.e. YES/NO)

 - NUM_BEDROOMS: Number of bedrooms (should be numeric)
   
Check the structure of the data set:


```python
df.dtypes
```




    PID             float64
    ST_NUM          float64
    ST_NAME          object
    OWN_OCCUPIED     object
    NUM_BEDROOMS     object
    NUM_BATH         object
    SQ_FT            object
    dtype: object



# Traditional Missing Values


```python
len(df) ## number of rows
```




    9




```python
## Look at the ST_NUM column:
print(
    df.isnull()
)
```

         PID  ST_NUM  ST_NAME  OWN_OCCUPIED  NUM_BEDROOMS  NUM_BATH  SQ_FT
    0  False   False    False         False         False     False  False
    1  False   False    False         False         False     False  False
    2  False    True    False         False          True     False  False
    3  False   False    False         False         False      True  False
    4   True   False    False         False         False     False  False
    5  False   False    False         False          True     False  False
    6  False    True    False          True         False     False  False
    7  False   False    False         False         False     False   True
    8  False   False    False         False         False     False  False
    


```python
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>PID</th>
      <th>ST_NUM</th>
      <th>ST_NAME</th>
      <th>OWN_OCCUPIED</th>
      <th>NUM_BEDROOMS</th>
      <th>NUM_BATH</th>
      <th>SQ_FT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100001000.0</td>
      <td>104.0</td>
      <td>PUTNAM</td>
      <td>Y</td>
      <td>3</td>
      <td>1</td>
      <td>1000</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100002000.0</td>
      <td>197.0</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>3</td>
      <td>1.5</td>
      <td>--</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100003000.0</td>
      <td>NaN</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>NaN</td>
      <td>1</td>
      <td>850</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100004000.0</td>
      <td>201.0</td>
      <td>BERKELEY</td>
      <td>12</td>
      <td>1</td>
      <td>NaN</td>
      <td>700</td>
    </tr>
    <tr>
      <th>4</th>
      <td>NaN</td>
      <td>203.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>3</td>
      <td>2</td>
      <td>1600</td>
    </tr>
    <tr>
      <th>5</th>
      <td>100006000.0</td>
      <td>207.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>NaN</td>
      <td>1</td>
      <td>800</td>
    </tr>
    <tr>
      <th>6</th>
      <td>100007000.0</td>
      <td>NaN</td>
      <td>WASHINGTON</td>
      <td>NaN</td>
      <td>2</td>
      <td>HURLEY</td>
      <td>950</td>
    </tr>
    <tr>
      <th>7</th>
      <td>100008000.0</td>
      <td>213.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>1</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>8</th>
      <td>100009000.0</td>
      <td>215.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>na</td>
      <td>2</td>
      <td>1800</td>
    </tr>
  </tbody>
</table>
</div>



The missing values denoted as NaN, na, and --.  Pandas recognizes "NA" and "NaN" as missing but not the other types listed here.  Therefore, it is easiest to put these missing values in a list and ID them within `df` that way:


```python
missing_values = ["na", "--"]

df = pd.read_csv(
    "C:/Users/stephanie.langeland/OneDrive - Slalom/Misc/Personal/Coding Reference Files/Python/a_beginners_guide_to_python/input_output_files/property data.csv",
    na_values = missing_values
)

df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>PID</th>
      <th>ST_NUM</th>
      <th>ST_NAME</th>
      <th>OWN_OCCUPIED</th>
      <th>NUM_BEDROOMS</th>
      <th>NUM_BATH</th>
      <th>SQ_FT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100001000.0</td>
      <td>104.0</td>
      <td>PUTNAM</td>
      <td>Y</td>
      <td>3.0</td>
      <td>1</td>
      <td>1000.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100002000.0</td>
      <td>197.0</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>3.0</td>
      <td>1.5</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100003000.0</td>
      <td>NaN</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>NaN</td>
      <td>1</td>
      <td>850.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100004000.0</td>
      <td>201.0</td>
      <td>BERKELEY</td>
      <td>12</td>
      <td>1.0</td>
      <td>NaN</td>
      <td>700.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>NaN</td>
      <td>203.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>3.0</td>
      <td>2</td>
      <td>1600.0</td>
    </tr>
    <tr>
      <th>5</th>
      <td>100006000.0</td>
      <td>207.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>NaN</td>
      <td>1</td>
      <td>800.0</td>
    </tr>
    <tr>
      <th>6</th>
      <td>100007000.0</td>
      <td>NaN</td>
      <td>WASHINGTON</td>
      <td>NaN</td>
      <td>2.0</td>
      <td>HURLEY</td>
      <td>950.0</td>
    </tr>
    <tr>
      <th>7</th>
      <td>100008000.0</td>
      <td>213.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>1.0</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>8</th>
      <td>100009000.0</td>
      <td>215.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>NaN</td>
      <td>2</td>
      <td>1800.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
df.isnull()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>PID</th>
      <th>ST_NUM</th>
      <th>ST_NAME</th>
      <th>OWN_OCCUPIED</th>
      <th>NUM_BEDROOMS</th>
      <th>NUM_BATH</th>
      <th>SQ_FT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
    </tr>
    <tr>
      <th>1</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
    </tr>
    <tr>
      <th>2</th>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>False</td>
    </tr>
    <tr>
      <th>3</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
      <td>False</td>
    </tr>
    <tr>
      <th>4</th>
      <td>True</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
    </tr>
    <tr>
      <th>5</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>False</td>
    </tr>
    <tr>
      <th>6</th>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
    </tr>
    <tr>
      <th>7</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
    </tr>
    <tr>
      <th>8</th>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>False</td>
      <td>True</td>
      <td>False</td>
      <td>False</td>
    </tr>
  </tbody>
</table>
</div>




```python
null_count = df.isnull().sum()

null_count
```




    PID             1
    ST_NUM          2
    ST_NAME         0
    OWN_OCCUPIED    1
    NUM_BEDROOMS    3
    NUM_BATH        1
    SQ_FT           2
    dtype: int64



# Unexpected Missing Values

For example, if our feature is expected to be a string, but there’s a numeric type, then technically this is also a missing value.

Let’s take a look at the “Owner Occupied” column to see what I’m talking about:


```python
df["OWN_OCCUPIED"]
```




    0      Y
    1      N
    2      N
    3     12
    4      Y
    5      Y
    6    NaN
    7      Y
    8      Y
    Name: OWN_OCCUPIED, dtype: object



 "12" is incorrect as it should read Y/N.  This example is a little more complicated so we’ll need to think through a strategy for detecting these types of missing values. There’s a number of different approaches, but here’s the way that I’m going to work through this one.
 
1. Loop through the OWN_OCCUPIED column
2. Try and turn the entry into an integer
3. If the entry can be changed into an integer, enter a missing value
4. If the number can’t be an integer, we know it’s a string, so keep going


```python
## Detect numbers:
cnt = 0

for row in df["OWN_OCCUPIED"]: ## 1. Loop through the OWN_OCCUPIED column
    try: ## excpetion handling
        int(row) ## 2. Try and turn the entry into an integer
        df.loc[cnt, 'OWN_OCCUPIED'] = np.nan 
            ## ^ 3. If the entry can be changed into an integer, enter a missing value
            ## ^ .loc method. This is the preferred Pandas method for modfiying entries in place.
    except ValueError: ## if we were to try and change an entry into an integer and it couldn’t be changed, then a ValueError would be returned, and the code would stop
        pass ## 4. If the number can’t be an integer, we know it’s a string, so keep going
    cnt += 1
```


```python
df
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>PID</th>
      <th>ST_NUM</th>
      <th>ST_NAME</th>
      <th>OWN_OCCUPIED</th>
      <th>NUM_BEDROOMS</th>
      <th>NUM_BATH</th>
      <th>SQ_FT</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>100001000.0</td>
      <td>104.0</td>
      <td>PUTNAM</td>
      <td>Y</td>
      <td>3.0</td>
      <td>1</td>
      <td>1000.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>100002000.0</td>
      <td>197.0</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>3.0</td>
      <td>1.5</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>2</th>
      <td>100003000.0</td>
      <td>NaN</td>
      <td>LEXINGTON</td>
      <td>N</td>
      <td>NaN</td>
      <td>1</td>
      <td>850.0</td>
    </tr>
    <tr>
      <th>3</th>
      <td>100004000.0</td>
      <td>201.0</td>
      <td>BERKELEY</td>
      <td>NaN</td>
      <td>1.0</td>
      <td>NaN</td>
      <td>700.0</td>
    </tr>
    <tr>
      <th>4</th>
      <td>NaN</td>
      <td>203.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>3.0</td>
      <td>2</td>
      <td>1600.0</td>
    </tr>
    <tr>
      <th>5</th>
      <td>100006000.0</td>
      <td>207.0</td>
      <td>BERKELEY</td>
      <td>Y</td>
      <td>NaN</td>
      <td>1</td>
      <td>800.0</td>
    </tr>
    <tr>
      <th>6</th>
      <td>100007000.0</td>
      <td>NaN</td>
      <td>WASHINGTON</td>
      <td>NaN</td>
      <td>2.0</td>
      <td>HURLEY</td>
      <td>950.0</td>
    </tr>
    <tr>
      <th>7</th>
      <td>100008000.0</td>
      <td>213.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>1.0</td>
      <td>1</td>
      <td>NaN</td>
    </tr>
    <tr>
      <th>8</th>
      <td>100009000.0</td>
      <td>215.0</td>
      <td>TREMONT</td>
      <td>Y</td>
      <td>NaN</td>
      <td>2</td>
      <td>1800.0</td>
    </tr>
  </tbody>
</table>
</div>



# Summarizing Missing Values


```python
## Are there any missing values at all in the data set?
print(
    df.isnull().values.any()
)
```

    True
    


```python
## Total number of missing values in the entire data set:
print(
    df.isnull().sum().sum()
)
```

    11
    


```python
## Total number of missing values for each feature (column):
print(
    df.isnull().sum()
)
```

    PID             1
    ST_NUM          2
    ST_NAME         0
    OWN_OCCUPIED    2
    NUM_BEDROOMS    3
    NUM_BATH        1
    SQ_FT           2
    dtype: int64
    

# Replacing Values

Different ways to replace missing values:


```python
## Replace missing values with a number:
df["ST_NUM"].fillna(125, inplace = True)

df["ST_NUM"]
```




    0    104.0
    1    197.0
    2    125.0
    3    201.0
    4    203.0
    5    207.0
    6    125.0
    7    213.0
    8    215.0
    Name: ST_NUM, dtype: float64




```python
## Location based replacement:
df.loc[2, "ST_NUM"] = 125 ## replace the value in the 3rd row of this column

df["ST_NUM"]
```




    0    104.0
    1    197.0
    2    125.0
    3    201.0
    4    203.0
    5    207.0
    6    125.0
    7    213.0
    8    215.0
    Name: ST_NUM, dtype: float64




```python
## Replace using the median:
median = df["NUM_BEDROOMS"].median()

df["NUM_BEDROOMS"].fillna(median, inplace = True)

df["NUM_BEDROOMS"]
```




    0    3.0
    1    3.0
    2    2.5
    3    1.0
    4    3.0
    5    2.5
    6    2.0
    7    1.0
    8    2.5
    Name: NUM_BEDROOMS, dtype: float64


