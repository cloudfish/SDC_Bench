# Experimental Procedure

## 1. Steps to Set Cache Waymask

- execute the script `load-dsid.sh`
- `cd /sys/fs/cgroup/dsid`
- separate programs into two groups through PID : `echo PID > test-{1,2}/tasks`
- set the two groups' dsid : `echo {1,2} > test-{1,2}/dsid-dsid.set`
- set the waymasks:  `echo waymask {waymask} > test-{1,2}/dsid-dsid.cache`


## 2. Steps to Configure The Token Bucket Algorithm

- `cd /sys/fs/cgroup/dsid`
- set the maximum number of tokens in the token bucket: `echo sizes 0x800 > test-2/dsid-dsid.mem`
- set the number of tokens generated at one time: `echo inc 0x8 > test-2/dsid-dsid.mem`
- set the frequency(how many the machine cycles) of token generation: `echo freq 0x80 > test-2/dsid-dsid.mem`
