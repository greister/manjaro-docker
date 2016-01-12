FROM yantis/wine:latest
MAINTAINER Rob Eastham <rob.eastham@clearview.net>

#########################################
##         RUN INSTALL                 ##
#########################################
RUN pacman --noconfirm -Sy archlinux-keyring
RUN pacman --noconfirm -Syu
CMD ["echo 'Hello this is an echo echo echo...''"]

#########################################
##         EXPORTS AND VOLUMES         ##
#########################################
# VOLUME /manjaro1
EXPOSE 5900/tcp 5900
EXPOSE 5901/tcp 5901
