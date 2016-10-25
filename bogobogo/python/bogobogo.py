import random
import time

def isSorted(numbers):
    length = len(numbers)
    for num, item in enumerate(numbers):
        if (num + 1) == length:
            return True
        elif item > numbers[num + 1]:
            return False

def bogo(numbers):
    random.shuffle(numbers)
    return numbers

def bogobogo(numbers):
    index = 1
    count = 0
    if(isSorted(numbers)):
        print ("Done!!!!")
    else:
        while(index < (len(numbers) + 1)):
            count+=1
            sortMe = bogo(numbers[0:index])
            if(index==len(numbers)):
                print(sortMe)
            #print("current list: "+str(sortMe))
            if(isSorted(sortMe)):
                index+=1
            else:
                index = 1
        print("Done!!!!")
        print("Final list is: " + str(sortMe))

def main():
    sortMe = []
    count = 6
    while count:
        sortMe.append(random.randint(0,100))
        count -= 1
    print("Starting List: " + str(sortMe))
    time.sleep(1)
    print("Ready?")
    time.sleep(1)
    print("Set.")
    time.sleep(1)
    print("go!")
    time.sleep(1)
    bogobogo(sortMe)
main()
