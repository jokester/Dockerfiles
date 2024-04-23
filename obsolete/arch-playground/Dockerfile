#
# A arch VM-like image, with sshd as pid=1
#

FROM base/archlinux
MAINTAINER Wang <momocraft@gmail.com>

RUN                                                            \
    pacman -Sy --noprogressbar --noconfirm                  && \
    pacman -S archlinux-keyring --noprogressbar --noconfirm && \
    pacman -Su openssh man sudo --noprogressbar --noconfirm && \
    update-ca-trust                                         && \
    pacman-db-upgrade                                       && \
    pacman -Scc --noconfirm                                 && \
    rm -f /var/cache/pacman/pkg/*                           && \
    passwd -d root

VOLUME /home

# RUN sshd as pid1
ADD init.sh /opt
ENTRYPOINT ["/opt/init.sh"]
