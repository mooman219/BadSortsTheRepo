import random
import time

def isSorted(numbers):
    length = len(numbers)
    for num, item in enumerate(numbers):
        if (num + 1) == length:
            return True
        elif item > numbers[num + 1]:
            return False

def taco(numbers):
    length = len(numbers)
    index = random.randint(0,(length-1))
    num = numbers.pop(index)
    length = len(numbers)
    index = random.randint(0,(length-1))
    numbers.insert(index,num)

def loop(numbers):
    count = 0
    pcount = 0
    while(isSorted(numbers) == False):
        taco(numbers)
        #print(str(numbers))
        count+=1;
        pcount+=1;
        if(pcount==1000000):
            pcount = 0
            print("current count is: " + str(count))
    print("final count: " + str(count))
    print("You did it!!! " + str(numbers))

def main():
    sortMe = [random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100),\
    random.randint(0,100),random.randint(0,100),random.randint(0,100),random.randint(0,100)]
    print("Starting List: " + str(sortMe))
    time.sleep(1)
    print("Ready?")
    time.sleep(1)
    print("Set.")
    time.sleep(1)
    print("go!")
    time.sleep(1)
    loop(sortMe)
main()
