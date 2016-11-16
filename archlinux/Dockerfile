#
# A arch VM-like image, with ssh access
#

FROM base/archlinux
MAINTAINER Wang <momocraft@gmail.com>

RUN                                            \
    pacman -Sy --noconfirm                  && \
    pacman -S archlinux-keyring --noconfirm && \
    pacman -Su --noconfirm                  && \
    update-ca-trust                         && \
    pacman-db-upgrade                       && \
    pacman -Syu --no-confirm

VOLUME /home

# RUN sshd as pid1
RUN 
