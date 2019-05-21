#!/usr/bin/env python

import sys

cur_word = None
sum = 0

for line in sys.stdin:
    line = line.strip()
    word, count = line.split("\t", 1)
    if cur_word == None:
        cur_word = word
    if word != cur_word:
        print "%s\t%s" % (cur_word, str(sum))
        cur_word = word
        sum = 0
    sum += int(count)

print "%s\t%s" % (cur_word, str(sum))
sum = 0

