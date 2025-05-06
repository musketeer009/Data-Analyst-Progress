def hi():
  print("Hii world")



def hello(n):
  for i in range(n):
    print(i, " :" ,"Hello")


def add(a,b):
  print(a,b,a+b)



def minus(a,b):
  return a, b, a-b



def arith(a,b):
  return  a+b, a-b, a*b, a/b

def square(l):
   return [i**2 for i in l]




def square(l):
   return [i**2 for i in l]

def cube(l):
   return [i**3 for i in l]

def adding_lists(l):
  sq= square(l)
  cu= cube(l)
  return [sq[i] +cu[i] for i in range(len(l))]




def greet(name):
    print("Hello", name)


