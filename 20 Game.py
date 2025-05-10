class user:
     def __init__(self,name,age):
         print("welcome to game")
         print("Player", name,"is playing")
         self.name = name
         self.age= age
         self.health= 100
         self.alive = True

     def curr_health(self):
         print("current health of", self.name, "is", self.health)

     def punched(self):
         self.health-=10


     def shooted(self):
         self.health-=30

     def is_alive(self):
         if self.health<=0:
             self.alive = False
         print(self.alive)

     def info(self):
         print("User details")
         print("user name  :", self.name)
         print("user age   :", self.age)
         print("user health:", self.health)
         self.is_alive()

         
u1= user("shubham", 22)
u1.curr_health()
u1.punched()
u1.shooted()
u1.info()

print("_"*20)


u2= user("Vikash", 23)
u2.curr_health()
u2.punched()
u2.shooted()
u2.punched()
u2.info()

print("_"*20)


u1.info()
print("_"*20)


u3= user("Harsh", 20)
u3.curr_health()
u3.punched()
u3.shooted()
u3.shooted()
u3.shooted()
u3.punched()
u3.info()

print("**"*20)

class boss(user):
   
    def __init__(self,name,age):
         print("welcome to game")
         print("Player", name,"is playing")
         self.name = name
         self.age= age
         self.health= 1000
         self.alive = True
         
    def fire_ball(self):
        print("Throw fire balls")


bs= boss("Baba Yaga", 110)
bs.curr_health()
bs.punched()
bs.shooted()
bs.shooted()
bs.info()
bs.fire_ball()





