
<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Data-Prep" data-toc-modified-id="Data-Prep-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Data Prep</a></span></li><li><span><a href="#OLS" data-toc-modified-id="OLS-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>OLS</a></span></li></ul></div>

__File Info:__

Date: 20181029

Author: Stephanie Langeland 

File Name: 07_OLS_sklearn.ipynb

Version: 01

Previous Version/File: None

Dependencies: None

Purpose: OLS models using scikit-learn.

Input File(s): None

Output File(s): None

Required by: 
- A beginner's guide to Python.
- Ordinary Least Squares Section: http://scikit-learn.org/stable/modules/linear_model.html

Status: Complete

Machine: Dell Latitude - Windows 10

Python Version: Python 3

# Data Prep


```python
## Import packages:
from sklearn.datasets import load_boston
import pandas as pd
from sklearn.model_selection import train_test_split
import statsmodels.api as sm
```


```python
boston = load_boston()

boston.keys()
```




    dict_keys(['data', 'target', 'feature_names', 'DESCR', 'filename'])




```python
bos = pd.DataFrame(
    boston.data,
    columns = boston.feature_names
)

bos["PRICE"] = boston.target

bos.head()
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
      <th>CRIM</th>
      <th>ZN</th>
      <th>INDUS</th>
      <th>CHAS</th>
      <th>NOX</th>
      <th>RM</th>
      <th>AGE</th>
      <th>DIS</th>
      <th>RAD</th>
      <th>TAX</th>
      <th>PTRATIO</th>
      <th>B</th>
      <th>LSTAT</th>
      <th>PRICE</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.00632</td>
      <td>18.0</td>
      <td>2.31</td>
      <td>0.0</td>
      <td>0.538</td>
      <td>6.575</td>
      <td>65.2</td>
      <td>4.0900</td>
      <td>1.0</td>
      <td>296.0</td>
      <td>15.3</td>
      <td>396.90</td>
      <td>4.98</td>
      <td>24.0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.02731</td>
      <td>0.0</td>
      <td>7.07</td>
      <td>0.0</td>
      <td>0.469</td>
      <td>6.421</td>
      <td>78.9</td>
      <td>4.9671</td>
      <td>2.0</td>
      <td>242.0</td>
      <td>17.8</td>
      <td>396.90</td>
      <td>9.14</td>
      <td>21.6</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.02729</td>
      <td>0.0</td>
      <td>7.07</td>
      <td>0.0</td>
      <td>0.469</td>
      <td>7.185</td>
      <td>61.1</td>
      <td>4.9671</td>
      <td>2.0</td>
      <td>242.0</td>
      <td>17.8</td>
      <td>392.83</td>
      <td>4.03</td>
      <td>34.7</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.03237</td>
      <td>0.0</td>
      <td>2.18</td>
      <td>0.0</td>
      <td>0.458</td>
      <td>6.998</td>
      <td>45.8</td>
      <td>6.0622</td>
      <td>3.0</td>
      <td>222.0</td>
      <td>18.7</td>
      <td>394.63</td>
      <td>2.94</td>
      <td>33.4</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.06905</td>
      <td>0.0</td>
      <td>2.18</td>
      <td>0.0</td>
      <td>0.458</td>
      <td>7.147</td>
      <td>54.2</td>
      <td>6.0622</td>
      <td>3.0</td>
      <td>222.0</td>
      <td>18.7</td>
      <td>396.90</td>
      <td>5.33</td>
      <td>36.2</td>
    </tr>
  </tbody>
</table>
</div>




```python
## X Variable dataframe:
bos_X = bos.drop(
    "PRICE",
    axis = 1
)


## training and testing data:

X_train, X_test, Y_train, Y_test = train_test_split(
    bos_X,
    bos.PRICE,
    test_size = 0.33, ## randomly select 33% of the data 
    random_state = 5 ## equivalent is set.seed in R
)

print(
    "X_train dimensions: ",
    X_train.shape,
    "\n",
    "X_test dimensions: ",
    X_test.shape,
    "\n",
    "Y_train dimensions: ",
    Y_train.shape,
    "\n",
    "Y_test dimensions: ",
    Y_test.shape
)
```

    X_train dimensions:  (339, 13) 
     X_test dimensions:  (167, 13) 
     Y_train dimensions:  (339,) 
     Y_test dimensions:  (167,)
    

# OLS


```python
## use statsmodels bc sklearn doesn't have the summary output functionality:

## OLS model:
bos_OLS = sm.OLS(
    bos["PRICE"], ## Y
    bos_X ## Xs
) 

## Full fit of the model:
bos_fit = bos_OLS.fit()

## model output:
print(
    bos_fit.summary()
)
```

                                OLS Regression Results                            
    ==============================================================================
    Dep. Variable:                  PRICE   R-squared:                       0.959
    Model:                            OLS   Adj. R-squared:                  0.958
    Method:                 Least Squares   F-statistic:                     891.3
    Date:                Fri, 02 Nov 2018   Prob (F-statistic):               0.00
    Time:                        14:43:06   Log-Likelihood:                -1523.8
    No. Observations:                 506   AIC:                             3074.
    Df Residuals:                     493   BIC:                             3128.
    Df Model:                          13                                         
    Covariance Type:            nonrobust                                         
    ==============================================================================
                     coef    std err          t      P>|t|      [0.025      0.975]
    ------------------------------------------------------------------------------
    CRIM          -0.0929      0.034     -2.699      0.007      -0.161      -0.025
    ZN             0.0487      0.014      3.382      0.001       0.020       0.077
    INDUS         -0.0041      0.064     -0.063      0.950      -0.131       0.123
    CHAS           2.8540      0.904      3.157      0.002       1.078       4.630
    NOX           -2.8684      3.359     -0.854      0.394      -9.468       3.731
    RM             5.9281      0.309     19.178      0.000       5.321       6.535
    AGE           -0.0073      0.014     -0.526      0.599      -0.034       0.020
    DIS           -0.9685      0.196     -4.951      0.000      -1.353      -0.584
    RAD            0.1712      0.067      2.564      0.011       0.040       0.302
    TAX           -0.0094      0.004     -2.395      0.017      -0.017      -0.002
    PTRATIO       -0.3922      0.110     -3.570      0.000      -0.608      -0.176
    B              0.0149      0.003      5.528      0.000       0.010       0.020
    LSTAT         -0.4163      0.051     -8.197      0.000      -0.516      -0.317
    ==============================================================================
    Omnibus:                      204.082   Durbin-Watson:                   0.999
    Prob(Omnibus):                  0.000   Jarque-Bera (JB):             1374.225
    Skew:                           1.609   Prob(JB):                    3.90e-299
    Kurtosis:                      10.404   Cond. No.                     8.50e+03
    ==============================================================================
    
    Warnings:
    [1] Standard Errors assume that the covariance matrix of the errors is correctly specified.
    [2] The condition number is large, 8.5e+03. This might indicate that there are
    strong multicollinearity or other numerical problems.
    
