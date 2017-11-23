print("Hello world");

def say_hello(name):
    print("Hello " + name)


say_hello("Gaby")

def greet(name):
    if(name == "Alex"):
        print("Hi, " + name)
    else:
        print("Not authorized")

greet("Alex")
greet("Zsolt")


my_list = ["Spam", "Ham", "Eggs"]
my_list.pop()
my_list.append("Cereal")
print(my_list)

favourite_foods = ["Pizza", "Cake", "Hamburger"]

for food in favourite_foods:
    print(food)

person = {
    "name": "Zsolt",
    "favourite_foods": ["Pizza", "Cake", "Burger"]
}

print(person["name"])

for food in person["favourite_foods"]:
    print(food)

# CLASSES
