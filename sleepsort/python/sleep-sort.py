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
