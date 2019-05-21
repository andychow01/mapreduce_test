#!/usr/bin/env python

import sys

cur_userid = None

for line in sys.stdin:
    userid = line.strip()
    if cur_userid == None:
        cur_userid = userid
    if userid != cur_userid:
        print "%s" % cur_userid
        cur_userid = userid

print "%s" % cur_userid

