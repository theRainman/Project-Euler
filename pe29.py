# -*- coding: utf-8 -*-
"""
Created on Sat Nov  4 23:42:12 2017

@author: chris
"""

import numpy as np
print(np.power(2,1/3))
def isinteger(x): return np.equal(np.mod(x, 1), 0) #https://stackoverflow.com/questions/934616/how-do-i-find-out-if-a-numpy-array-contains-integers
print(isinteger(np.power(4,1/3)))
w, h = 8, 5;
Matrix = [['FALSE' for x in range(w)] for y in range(h),dtype=bool] 
print(Matrix)