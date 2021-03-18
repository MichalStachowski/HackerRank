# https://www.hackerrank.com/challenges/py-collections-ordereddict/problem

from collections import OrderedDict

my_dict = OrderedDict()
n = int(input())
for i in range(n):
    name_and_price = input().split()
    price = int(name_and_price[-1])
    name = ' '.join(name_and_price[:-1])

    if name in my_dict:
        my_dict[name] += price
    else: 
        my_dict[name] = price
    
for name, price in my_dict.items():
    print(name, price)
