
__File Info:__

Date: 20181022

Author: Stephanie Langeland 

File Name: 01_tutorial.ipynb

Version: 01

Previous Version/File: None

Dependencies: None

Purpose: Learn Jupyter Notebook basics.

Input File(s): None

Output File(s): None

Required by: 
 - A beginner's guide to Python.
 - Tutorial (beginning - choosing a kernel sections): https://www.dataquest.io/blog/jupyter-notebook-tutorial/

Status: Complete

Machine: Dell Latitude - Windows 10

Python Version: Python 3


```python
import sys
import time
import numpy as np ## import the numpy library which will be referred to as "np" going forward 
```


```python
sys.version_info
```




    sys.version_info(major=3, minor=7, micro=0, releaselevel='final', serial=0)




```python
print('Hello World!')
```

    Hello World!
    


```python
time.sleep(3)
```


```python
def say_hello(recipient): ## def = define; say_hello() is the fn you're defining and "recipient" is the thing you'll pass to your say_hello() fn when you use it
    return 'Hello, {}!'.format(recipient)
```


```python
def say_hello(recipient): ## def = define; say_hello() is the fn you're defining and "recipient" is the thing you'll pass to your say_hello() fn when you use it
    return 'Hello, {}!'.format(recipient)

say_hello('Tim')
```




    'Hello, Tim!'




```python
def square(x): ## create a square() fn
    return x * x
```


```python
square(15)
```




    225




```python
x = np.random.randint(1, 10) ## Return random integers from low (inclusive) to high (exclusive).

x
```




    4




```python
y = square(x)

y
```




    16




```python
print('%d squared is %d' % (x, y))
```

    4 squared is 16
    
