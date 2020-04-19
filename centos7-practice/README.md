# Creating Linux vm for practicing various commands ( Included Docker-ce )
**Pre-Requisite**

>Vagrant\
>Oracle VirtualBox\
>Enable Virtual Technology in BIOS Settings

**Vagrant Installation Validation**
```
C:\Users\Lenovo>vagrant -v
Vagrant 2.2.7  --> Depends on installer version
```

**Bring the VMs running**
```
vagrant up
```
**List the Vagrant VM's**
```
vagrant status
```
**Connect server using name** 
```
vagrant.exe ssh centos7-practice
```
**Default user will be vagrant - use sudo or change to root for administrator commands**
```
[vagrant@centor7-practice ~]$ sudo systemctl status docker
● docker.service - Docker Application Container Engine
   Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; vendor preset: disabled)
   Active: active (running) since Sun 2020-04-12 17:16:15 UTC; 11min ago
     Docs: https://docs.docker.com
 Main PID: 5893 (dockerd)
    Tasks: 10
   Memory: 42.5M
   CGroup: /system.slice/docker.service
           └─5893 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205062181Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205081110Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock 0  <nil>...}" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205124860Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.234266079Z" level=info msg="Loading containers: start."
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.400903861Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip ...ed IP address"
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.475836880Z" level=info msg="Loading containers: done."
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.500260176Z" level=info msg="Docker daemon" commit=afacb8b graphdriver(s)=overlay2 version=19.03.8
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.501210732Z" level=info msg="Daemon has completed initialization"
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.543045555Z" level=info msg="API listen on /var/run/docker.sock"
Apr 12 17:16:15 centor7-practice systemd[1]: Started Docker Application Container Engine.
Hint: Some lines were ellipsized, use -l to show in full.
[vagrant@centor7-practice ~]$ sudo su -
[root@centor7-practice ~]# systemctl status docker
● docker.service - Docker Application Container Engine
   Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; vendor preset: disabled)
   Active: active (running) since Sun 2020-04-12 17:16:15 UTC; 11min ago
     Docs: https://docs.docker.com
 Main PID: 5893 (dockerd)
    Tasks: 10
   Memory: 42.5M
   CGroup: /system.slice/docker.service
           └─5893 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205062181Z" level=info msg="scheme \"unix\" not registered, fallback to default scheme" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205081110Z" level=info msg="ccResolverWrapper: sending update to cc: {[{unix:///run/containerd/containerd.sock 0  <nil>...}" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.205124860Z" level=info msg="ClientConn switching balancer to \"pick_first\"" module=grpc
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.234266079Z" level=info msg="Loading containers: start."
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.400903861Z" level=info msg="Default bridge (docker0) is assigned with an IP address 172.17.0.0/16. Daemon option --bip ...ed IP address"
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.475836880Z" level=info msg="Loading containers: done."
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.500260176Z" level=info msg="Docker daemon" commit=afacb8b graphdriver(s)=overlay2 version=19.03.8
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.501210732Z" level=info msg="Daemon has completed initialization"
Apr 12 17:16:15 centor7-practice dockerd[5893]: time="2020-04-12T17:16:15.543045555Z" level=info msg="API listen on /var/run/docker.sock"
Apr 12 17:16:15 centor7-practice systemd[1]: Started Docker Application Container Engine.
Hint: Some lines were ellipsized, use -l to show in full.
```
**Delete the VM or VM's from running or delete**
```
vagrant destroy centos7-practice
```
