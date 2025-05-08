
class user:
    name = "shubham kumar"
    age = 22

print(user)
print(user.name)
print(user.age)
print("-"*20)
# object
user2 = user()
print(user2.name)
print(user2.age)

user2.name= "Harsh"
user2.age = 26
print(user2.name)
print(user2.age)


print("-"*20)

user3 = user
user3.name = "Amit"
user3.age = 21
user3.status = "employed"

print(user3)
print(user3.name)
print(user3.age)
print(user3.status)

print("*"*20)

class mathematics:
    name = "shubham"

    def greet(self): # here we can use anythinh like helo but for naming convention
        print("hello")
        #print(name)
        print(self.name)
        return "hii"

    def factorial(self,n):
        s =1
        for i in range(1,n+1):
            s = s*i

        return s

    def self_mul(self,s):
        
        return [s*i for i in range(1,6)]

    def list_mul(self,l1,l2):
        return [l1[i]*l2[i] for i in range (len(l1))]
        

m1 = mathematics()
print(m1.greet())
print(m1.name)
print("-"*20)

print(m1.self_mul(1))



print("-"*20)

print(m1.factorial(6))
print("-"*20)

l1= [1,2,3,4,5]
l2 = [1,2,3,4,5]
print(m1.list_mul([1,2,3,4,5],[1,2,3,4,5]))
print(m1.list_mul(l1,l2))
print("*"*20)
