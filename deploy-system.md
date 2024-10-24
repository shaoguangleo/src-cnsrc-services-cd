# Summary

Current the infrastruture of storage, compute and network in cnSRC.


| hostname | Role    | Type | Operate System | IP        | CPU(cores) | Memory(GB) | System disk | Data disk | Computer capability | Note                 |
| ------------- | ------------ | ---------- | ---------- | --------- | ------- | -------- | ------ | ------ | ------------------------ | ------------------------ |
| g-master1-6-173 | master node | Physical Machine | centos 7.9 | 192.168.6.173 | 72      | 204      | 500G   | 1.8T   |    |                          |
| g-master2-6-171 | master node | Physical Machine | centos 7.9 | 192.168.6.171 | 62      | 204      | 500G   | 1.8T |  |                          |
| g-master3-6-14  | master node | Physical Machine | centos 7.9 | 192.168.6.14  | 32      | 125      | 300G   | 900G   |    | public IP:202.127.3.157 |
| worker-6-175   | worker node | Physical Machine | centos 7.9 | 192.168.6.175 | 32      | 754      | 557G   |        |        |                          |
| worker-6-176   | worker node | Physical Machine | centos 7.9 | 192.168.6.176 | 32      | 754      | 557G   |        |        |                          |
| worker-6-177   | worker node | Physical Machine | centos 7.9 | 192.168.6.177 | 32      | 754      | 557G   |        |        |                          |
| worker-6-178   | worker node点 | Physical Machine | centos 7.9 | 192.168.6.178 | 32      | 754      | 557G   |        |        |                          |
| node179        | standalone | Physical Machine | centos 7.9 | 192.168.6.179 | 32      | 754      | 557G   |        |        |                          |
| transfer-node | standalone | Physical Machine | centos 7.9 | chinasrc.shao.ac.cn | 88 | 692 | 500G | 256TB |  | public |

Currently, cnSRC supply a 1PB storage for SRCNet v0.1,
and 2Gbps bandwidth.