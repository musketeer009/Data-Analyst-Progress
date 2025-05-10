class person:

    def __init__(self):
        print("init execute")
        
    def run(self):
        print("run!")

p1= person()
p2= person()
p3= person()

print("-"*20)
p1.run()
print(p3.__init__())

print("-"*20)

p1.__init__()


print("*"*20)


class people:

    def __init__(self, name, age):
        self.name= name
        self.age = age
        print("init execute")

    def run(self):
        print(self.name)
        print("run!")

q1= people("shubham",22)
q2= people("shivam",24)
q3= people("sarthak",21)

print("-"*20)
# q1()    it is a obj not func
q1.run()
q2.run()
q3.run()


