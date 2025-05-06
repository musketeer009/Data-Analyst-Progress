

# Define all functions at top-level so they can be imported

def hi():
    print("Hii world")


def hello(n):
    for i in range(n):
        print(i, ":", "Hello")

def add(a, b):
    print(a, b, a + b)

def minus(a, b):
    return a, b, a - b

def arith(a, b):
    return a + b, a - b, a * b, a / b


def square(l):
    return [i ** 2 for i in l]

def cube(l):
    return [i ** 3 for i in l]

def adding_lists(l):
    sq = square(l)
    cu = cube(l)
    return [sq[i] + cu[i] for i in range(len(l))]

def greet(name):
    print("Hello", name)

  
# Code below only runs when support.py is executed directly 

if __name__ == "__main__":
    hi()
    print(arith(2, 3))
    greet("shubham")

    a = int(input("enter:"))
    b = int(input("enter:"))
    add(a,b) 
    l = [1, 2, 3, 4, 5]
    print(square(l))
    print(cube(l))
    print(adding_lists(l))


