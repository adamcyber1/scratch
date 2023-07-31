

```

 taskset -c 3 ./udpreceiver
taskset -c 4,5,6 ./udpsender 0.0.0.0:4321 0.0.0.0:4321 0.0.0.0:4321

 sudo ethtool -S ens5
 
```