
<h1>Table of Contents<span class="tocSkip"></span></h1>
<div class="toc"><ul class="toc-item"><li><span><a href="#Import-Packages" data-toc-modified-id="Import-Packages-1"><span class="toc-item-num">1&nbsp;&nbsp;</span>Import Packages</a></span></li><li><span><a href="#Import-Data" data-toc-modified-id="Import-Data-2"><span class="toc-item-num">2&nbsp;&nbsp;</span>Import Data</a></span></li><li><span><a href="#EDA" data-toc-modified-id="EDA-3"><span class="toc-item-num">3&nbsp;&nbsp;</span>EDA</a></span></li><li><span><a href="#Plotting-Inline" data-toc-modified-id="Plotting-Inline-4"><span class="toc-item-num">4&nbsp;&nbsp;</span>Plotting Inline</a></span></li><li><span><a href="#3D-Plotting" data-toc-modified-id="3D-Plotting-5"><span class="toc-item-num">5&nbsp;&nbsp;</span>3D Plotting</a></span></li></ul></div>
<script>
  function code_toggle() {
    if (code_shown){
      $('div.input').hide('500');
      $('#toggleButton').val('Show Code')
    } else {
      $('div.input').show('500');
      $('#toggleButton').val('Hide Code')
    }
    code_shown = !code_shown
  }

  $( document ).ready(function(){
    code_shown=false;
    $('div.input').hide()
  });
</script>
<form action="javascript:code_toggle()">
  <input type="submit" id="toggleButton" value="Show Code">
</form>
__File Info:__

Date: 20181026

Author: Stephanie Langeland 

File Name: 05_plotly_tutorial.ipynb

Version: 01

Previous Version/File: None

Dependencies: None

Purpose: Learn to use Plotly for Python

Input File(s): None

Output File(s): None

Required by: 
 - A beginner's guide to Python.
 - Tutorial: https://plot.ly/python/ipython-notebook-tutorial/

Status: Complete

Machine: Dell Latitude - Windows 10

Python Version: Python 3

# Import Packages


```python
## Import necessary packages:
import pandas as pd
import numpy as np
import scipy as sp
import plotly.plotly as py
import plotly.figure_factory as ff
import pandas as pd
import plotly
import os
import plotly.graph_objs as go
```


```python
## Import API credentials:
my_username = os.environ.get('plotly_api_username')
my_api_key = os.environ.get('plotly_api_key')

plotly.tools.set_credentials_file(
    username = my_username, 
    api_key = my_api_key
)

```

# Import Data


```python
df = pd.read_csv("https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv")

table = ff.create_table(df)

py.iplot(
    table,
    filename = "jupyter-table1"
)
```

    High five! You successfully sent some data to your account on plotly. View your plot in your browser at https://plot.ly/~SLangeland/0 or inside your plot.ly account where it is named 'jupyter-table1'
    




<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://plot.ly/~SLangeland/0.embed" height="710px" width="100%"></iframe>



# EDA


```python
## Use dataframe.column_title to index the dataframe:

schools = df.School

schools[0] ## name of column 1
```




    'MIT'




```python
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
      <th>School</th>
      <th>Women</th>
      <th>Men</th>
      <th>Gap</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>MIT</td>
      <td>94</td>
      <td>152</td>
      <td>58</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Stanford</td>
      <td>96</td>
      <td>151</td>
      <td>55</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Harvard</td>
      <td>112</td>
      <td>165</td>
      <td>53</td>
    </tr>
    <tr>
      <th>3</th>
      <td>U.Penn</td>
      <td>92</td>
      <td>141</td>
      <td>49</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Princeton</td>
      <td>90</td>
      <td>137</td>
      <td>47</td>
    </tr>
  </tbody>
</table>
</div>




```python
## Std dev of each column:
df.std()
```




    Women    12.813683
    Men      25.705289
    Gap      14.137084
    dtype: float64



# Plotting Inline

Plot `Gap` by `School`:


```python
data = [
    go.Bar(
        x = df.School,
        y = df.Gap
    )
]


py.iplot(
    data, 
    filname = "jupyter-basic_bar"
)
```




<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://plot.ly/~SLangeland/26.embed" height="525px" width="100%"></iframe>



# 3D Plotting

Using Numpy and Plotly, we can make interactive 3D plots in the Notebook as well.


```python
s = np.linspace(
    0, ## start = starting value of the sequence
    2 * np.pi, ## stop (scalar) = The end value of the sequence, unless endpoint is set to False. In that case, the sequence consists of all but the last of num + 1 evenly spaced samples, so that stop is excluded. Note that the step size changes when endpoint is False
    240 ## num = Number of samples to generate. Default is 50. Must be non-negative.
)

t = np.linspace(
    0, 
    np.pi, 
    240
)


tGrid, sGrid = np.meshgrid(s, t)


r = 2 + np.sin(
    7 * sGrid + 5 * tGrid
) ## r = 2 + sin(7s+5t)


x = r * np.cos(sGrid) * np.sin(tGrid)  # x = r*cos(s)*sin(t)

y = r * np.sin(sGrid) * np.sin(tGrid)  # y = r*sin(s)*sin(t)

z = r * np.cos(tGrid)                  # z = r*cos(t)

surface = go.Surface(
    x = x, 
    y = y,
    z = z
)

data = [surface] ## makes surface a list?

layout = go.Layout(
    title = "Parametric Plot",
    scene = dict(
        xaxis = dict(
            gridcolor = "rgb(255, 255, 255)",
            zerolinecolor = "rgb(255, 255, 255)",
            showbackground = True,
            backgroundcolor = "rgb(230, 230,230)"
        ),
        yaxis = dict(
            gridcolor = "rgb(255, 255, 255)",
            zerolinecolor = "rgb(255, 255, 255)",
            showbackground = True,
            backgroundcolor = "rgb(230, 230,230)", 
        )
    )
)


fig = go.Figure(
    data = data, 
    layout = layout
)


py.iplot(
    fig, 
    filename = "jupyter-parametric_plot"
)
```




<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://plot.ly/~SLangeland/6.embed" height="525px" width="100%"></iframe>


