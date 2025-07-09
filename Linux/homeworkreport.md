###REPORT
###Date report:09/07/2025
###Excersice name: Excersice 1


report details:
first: create file test
```
    sudo mkdir -p /home/data/test
```
Create 3 username withname a.b.c
should have password for them
```
    sudo adduser a
    sudo adduser b
    sudo adduser c
    
```
one account should disable or lock
```

    sudo usermod -L c

```
have an account with name **exploit**( account 4th ) should have permission write data into folder **/home/b** and **/home/c** with permission **3** and **5** to write and reading data

```
    sudo adduser exploit
    sudo chmod 730 /home/b
    sudo chmod 750 /home/c

```
account a should have default shell is /bin/sh
```
    sudo usermod -s /bin/sh a

```
account a should have home directory with name /home/data/test with 750
```
    sudo chmod 750 /home/data/test

```
account exploit should have owner the home directory of account a
```
    sudo chown exploit /home/data/test

```
account b and c should have permission write data into home directory account a
```
    sudo chgrp b /home/data/test
    sudo chmod 770 /home/data/test
    sudo usermod -a -G b c