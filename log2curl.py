#!/usr/bin/env python
import os
import sys; reload(sys); sys.setdefaultencoding('utf-8')
import numpy as np

from collections import Counter
url="http://138.201.82.175/prefix?term=minoti"

try:
    host=sys.argv[1]
    pass
except Exception as e:
    host="138.201.82.175"
    pass

times=[]
codes=[]
for line in sys.stdin:
    parts=line.split('/')
    url=parts[0]+"//"+host+"/"+parts[3]
    output=os.popen("""curl -s -w '%{time_total}  %{http_code} %{url_effective}\n' -o /dev/null """+url)
    time_total,http_code,url_effective = output.read().split()
    print "%s" % ( url_effective)
    times.append(float(time_total)*1000)
    codes.append(int(http_code))

print "requests: %s" % len(times)
sys.stderr.write(("\nmsecs/first-response: %0.2f mean, %0.2f max, %0.2f min\n" % (np.percentile(times,50),np.amax(times),np.min(times))))


codes_output=Counter(codes)
codes_output.keys()
print "HTTP response codes:"
for key, value in codes_output.items():
    print "\tcode %s: %i \n" %( key,value )
