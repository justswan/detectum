#!/usr/bin/env python
import sys; reload(sys); sys.setdefaultencoding('utf-8')
import numpy as np

nums=[]
inreq = None
try:
    myhost=sys.argv[1]
    pass
except Exception as e:
    myhost=""
    pass

for line in sys.stdin:
    if "-   Begin          req" in line:
        inreq=True
    if inreq and "-   End" in line:
        if myhost in req_host:
            print "http://%s%s" % (req_host, req_uri)
            nums.append(req_time)
        inreq=False
    if inreq and "-   ReqHeader      Host:" in line:
        req_host = line.split()[3]
    if inreq and "-   ReqURL" in line:
        req_uri = line.split()[2]
    if inreq and "-   Timestamp      Resp:" in line:
        req_time = float(line.split()[4])*1000
sys.stderr.write(("\nmsecs/first-response: %.2f mean, %.2f max, %.2f min\n" % (np.percentile(nums,50),np.amax(nums),np.min(nums))))
