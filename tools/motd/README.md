# What's motd

- message displayed in your terminal when your login via ssh

# SETUP

- install figlet
```
IS_EXSIT=$(type figlet); INSTALL=$(yum --enablerepo=epel -y install figlet) ; if [ ! "${IS_EXIST}" ]; then ${INSTALL} ; fi
```

- setup
```
ln -s $(readlink -f ./update_motd_for_centos.sh) /usr/local/bin/update_motd_for_centos.sh
ln -s $(readlink -f ./update_motd.cron) /etc/cron.d/update-motd
```

- check
```
/usr/local/bin/update_motd_for_centos.sh
cat /etc/motd
```