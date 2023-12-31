# Install general packages (Ubuntu)

```bash
yes | sudo apt update
yes | sudo apt install awscli
yes | sudo apt install gcc g++
yes | sudo apt-get install bpfcc-tools linux-headers-$(uname -r) # https://github.com/iovisor/bcc
yes | sudo apt install iperf
yes | sudo apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r`
yes | sudo apt install nicstat
sudo apt-get install -y bpftrace
```

https://github.com/iovisor/bcc
https://github.com/iovisor/bpftrace/blob/master/INSTALL.md#ubuntu




# Install Ebpf

```bash
cd /tmp/ && git clone https://github.com/iovisor/bcc.git && cd /tmp/bcc/ 


sudo apt install bpftrace-dbgsym # https://wiki.ubuntu.com/Debug%20Symbol%20Packages

sudo ln -s /usr/bin/bpftrace /usr/local/bin/bpftrace

```



# Enable enhanced networking 
* For new Ubuntu VMs, it will already be enabled
* Following this guide: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html
* 

```bash
$ ethtool -i ens5
driver: ena
version: 5.19.0-1025-aws
firmware-version: 
expansion-rom-version: 
bus-info: 0000:00:05.0
supports-statistics: yes
supports-test: no
supports-eeprom-access: no
supports-register-dump: no
supports-priv-flags: no
```


