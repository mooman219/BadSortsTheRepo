"""
sleep-sort.py
Wade Mauger
October 2015
Python 3.4

SleepSort implemented in Python.
I do what I want. 

Pass numbers to be sorted in as parameters
ex:

python3 sleep-sort.py 2 1 3

"""
import threading
import sys
from time import sleep

sort_list = []

def validate_list():
	for num in sys.argv:
		try:
			sort_list.append(int(num))
		except ValueError:
			pass


def sleep_sort(n):
	sleep(n)
	print(n, end=", ")


def main():
	validate_list()
	for num in sort_list:
		threading.Thread(target=sleep_sort, args=(num, )).start()


main()
