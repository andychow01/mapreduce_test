#!/usr/bin/env python

import sys

for line in sys.stdin:
    line = line.strip()
    fields = line.split()
    userid = fields[1]
    print "%s" % userid

# test
# echo "aa 11234 cc dd aa cc" | python dau_mapper.py



