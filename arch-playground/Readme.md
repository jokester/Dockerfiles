# Arch-playground

Docker image for a lightweight ArchLinux playground

- Take advantage of Arch's latest packages (rolling update <3 )
- While keep host in a stable state: in worst case we can just discard the container and start over

This image is intended for interactive sessions rather than services. The only daemon is `sshd` at pid=1.

<!--
### Build the image

It is advised to build locally: Arch's packages are frequently updated.

    # git clone https://github.com/jokester/Dockerfiles /tmp/jokester-Dockerfiles
    # docker build -tag=arch-playground /tmp/jokester-Dockerfiles/arch-playground
-->

### Start and configure

##### Start container

    # docker run --detach --name=arch-p   -p 60022:22 -v /arch-home:/home --hostname=arch-p1 jokester/arch-playground
                                          ^expose sshd                    ^set hostname
                          ^container name             ^persistent volume for $HOME           ^the image just built

##### Configure

To configure the playground, start a shell with root in container:

    # docker exec -it arch-p sh --login -i
    [root@arch-p1 /]#

and set what you need.

A few examples are listed below:

1. set root password

```
[root@arch-p1 /]# passwd
New password:
Retype new password:
passwd: password updated successfully
```

2. create new user and set password

```
[root@arch-p1 /]# useradd -m newuser
[root@arch-p1 /]# passwd newuser
New password:
Retype new password:
passwd: password updated successfully
```

##### SSH into the playground and ta-da!

```
$ ssh newuser@localhost -p 60022
(if you are prompted the host key, type `yes`)
newuser@localhost's password:
[newuser@arch-p1 ~]$
```

## Dockerfile

[Dockerfile](https://github.com/jokester/Dockerfiles)

