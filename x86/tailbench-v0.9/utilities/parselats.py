#!/usr/bin/python

import sys
import os
import numpy as np
from scipy import stats

class Lat(object):
    def __init__(self, fileName):
        f = open(fileName, 'rb')
        a = np.fromfile(f, dtype=np.uint64)
        self.reqTimes = a.reshape((a.shape[0]/3, 3))
        f.close()

    def parseQueueTimes(self):
        return self.reqTimes[:, 0]

    def parseSvcTimes(self):
        return self.reqTimes[:, 1]

    def parseSojournTimes(self):
        return self.reqTimes[:, 2]

if __name__ == '__main__':
    def getLatPct(latsFile):
        assert os.path.exists(latsFile)
        latsObj = Lat(latsFile)

        qTimes = [l/1e6 for l in latsObj.parseQueueTimes()]
        svcTimes = [l/1e6 for l in latsObj.parseSvcTimes()]
        sjrnTimes = [l/1e6 for l in latsObj.parseSojournTimes()]
        
        latsDir = os.path.dirname(latsFile)
        if latsDir == '':
            latsDir = './'
        f = open("%s/lats.txt" % latsDir,'w')

        f.write('%12s | %12s | %12s\n\n' \
                % ('QueueTimes', 'ServiceTimes', 'SojournTimes'))

        for (q, svc, sjrn) in zip(qTimes, svcTimes, sjrnTimes):
            f.write("%12s | %12s | %12s\n" \
                    % ('%.3f' % q, '%.3f' % svc, '%.3f' % sjrn))
        f.close()
        #p95 = stats.scoreatpercentile(sjrnTimes, 95)
        print("stats size: %d" % len(sjrnTimes))
        for user_p_num in [50, 80, 90, 95, 99]:
            p_num = stats.scoreatpercentile(sjrnTimes, int(user_p_num))
            print("user_p_num %3dth latency %.3f ms" % (int(user_p_num), p_num))
        maxLat = max(sjrnTimes)
        minLat = min(sjrnTimes)
        meanLat = np.mean(sjrnTimes)
        print("min latency %.3f ms \nmax latency %.3f ms\nmean latency %.3f ms\n" % (minLat, maxLat, meanLat))
        for user_p_num in [50, 80, 90, 95, 99]:
            p_num = stats.scoreatpercentile(sjrnTimes, int(user_p_num))
            print("%.3f" % p_num)
        maxLat = max(sjrnTimes)
        minLat = min(sjrnTimes)
        meanLat = np.mean(sjrnTimes)
        print("%.3f\n%.3f\n%.3f\n" % (minLat, maxLat, meanLat))
    
    latsFile = sys.argv[1]
    getLatPct(latsFile)
