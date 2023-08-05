https://metebalci.com/blog/how-a-nic-rx-works/


```

 taskset -c 3 ./udpreceiver
taskset -c 4,5,6 ./udpsender 0.0.0.0:4321 0.0.0.0:4321 0.0.0.0:4321

 sudo ethtool -S ens5
 
pstree -p 112286
udpreceiver(112286)─┬─{udpreceiver}(112287)
                    ├─{udpreceiver}(112288)
                    ├─{udpreceiver}(112289)
                    └─{udpreceiver}(112290)
                    
                    
sudo python3 ./tools/netqtop.py --name ens5 --interval 5 --throughput

htop -t --filter=udp

sudo python3 ./tools/netqtop.py --name ens5 --interval 5 --throughput
RX
 QueueID    avg_size   [0, 64)    [64, 512)  [512, 2K)  [2K, 16K)  [16K, 64K) BPS        PPS        
 0          113.65     8          9          0          0          0          386.4      3.4        
 1          0          0          0          0          0          0          0.0        0.0        
 2          52.0       3          0          0          0          0          31.2       0.6        
 3          52.0       5          0          0          0          0          52.0       1.0        
 4          0          0          0          0          0          0          0.0        0.0        
 5          60.0       4.03M      0          0          0          0          48.33M     824.91K    
 6          0          0          0          0          0          0          0.0        0.0        
 7          0          0          0          0          0          0          0.0        0.0        
 Total      60.0       4.03M      9          0          0          0          48.33M     824.9K     
-----------------------------------------------------------------------------------------------



 watch -n 1 "cat /proc/interrupts | grep ens5" # view the interrupt counters for the RX queues, they increment by like 16k a second, but we receive
 # 860k a second
 
 
 sudo ethtool -S ens5 | grep rx_cnt
     queue_0_rx_cnt: 143976
     queue_1_rx_cnt: 699764
     queue_2_rx_cnt: 26454
     queue_3_rx_cnt: 19396
     queue_4_rx_cnt: 169114
     queue_5_rx_cnt: 8291144458
     queue_6_rx_cnt: 30807
     queue_7_rx_cnt: 1832

   sudo ethtool -g ens5
Ring parameters for ens5:
Pre-set maximums:
RX:		16384
RX Mini:	n/a
RX Jumbo:	n/a
TX:		1024
Current hardware settings:
RX:		1024
RX Mini:	n/a
RX Jumbo:	n/a
TX:		1024

```

