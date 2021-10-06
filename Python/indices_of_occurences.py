# https://www.hackerrank.com/challenges/defaultdict-tutorial/problem
from collections import defaultdict

d = defaultdict(list)
n, m = map(int, input().split())
for _ in range(n):
    d['A'].append(input())
for _ in range(m):
    d['B'].append(input())

for item in d["B"]:
    ocuurence_indices = [i+1 for i, x in enumerate(d["A"]) if x == item]
    out = " ".join(map(str, ocuurence_indices))
    if out == "": out = -1
    print(out)
