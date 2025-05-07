import math


# BASIC MATHS
x = 10.2
print(math.ceil(x))
print(math.floor(x))
print(math.trunc(x))
print("__"*10)


# POWER AND LOG
a = 3
print(math.exp(a))
print(math.log10(a))
print("__"*10)


# TRIGO FUNCTIONS
print(math.sin(90))
print(math.cos(0))
print(math.tan(45))
print("__"*10)

# asin and acos input range between -1 to 1
print(math.degrees(math.asin(1)))
print(math.acos(0))
print(math.atan(-0.5))
print("__"*10)

#HYPERBOLIC FUN
print(math.sinh(34))
print("__"*10)


# ANGULAR CONVERSION
print(math.degrees(math.tau))
print(math.radians(360))
print("__"*10)


# CONSTANTS
print(math.pi)
print(math.e)
print(math.tau)
print(math.inf)
print(math.nan)


print("*"*20)


import random

print(random.seed(40))
print(random.random())
print(random.randint(0,11))
print(random.choice([1,2,3,4,5,6,7,8,9,0]))
print(random.sample([1,2,3,4,5],3))

print(random.uniform(10,20))

print("*"*20)

import datetime

print(datetime.datetime.now())
print(datetime.datetime(2025,5,7,18,59,5))
print(datetime.datetime.now().strftime("%d/%m/%y  %H:%M:%S"))
d1=  datetime.datetime.now()
d2=  datetime.datetime(2002,5,10,12,20,5)
print(d1- d2)

print("*"*20)

from collections import Counter, defaultdict, OrderedDict

data = ['a', 'b', 'a', 'c', 'b', 'a',1,3,5,4,2,3,4,5,6,8,5,6,8,6]
c = Counter(data)
print(c)
print("-"*20)


d = defaultdict(int)
d['a'] +=4
print(d['a'])
print(d['b'])
print(d['c'])

print("-"*20)


o = OrderedDict()
o['five']= 5
o['one']= 1
o['two']= 2
o['three']= 3
o['three']= 4# value undated
o['four']= 4

print(o)

print("*"*20)

import string

str1 = "my name is shubham"
print(string.ascii_letters)
print(string.ascii_lowercase)
print(string.ascii_uppercase)

print("-"*20)

print(string.digits)
print(string.hexdigits) 
print(string.octdigits)
print("__"*10)
# Checking if a character is a valid hexadecimal digit
char = 'H'
if char in string.hexdigits:
    print(f"{char} is a valid hexadecimal digit.")
else:
    print(f"{char} is not a valid hexadecimal digit.")


print("__"*10)
print(string.punctuation)	
print(string.printable)
print(string.whitespace)
