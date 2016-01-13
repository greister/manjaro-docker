FROM jonathonf/manjaro:latest
MAINTAINER Rob Eastham <rob.eastham@clearview.net>

#########################################
##        ENVIRONMENTAL CONFIG         ##
#########################################
# Set correct environment variables
ENV HOME="/root" LC_ALL="C.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

#########################################
##         RUN INSTALL                 ##
#########################################
RUN pacman --noconfirm -Syu
CMD ["echo 'Hello this is an echo echo echo...''"]

#########################################
##         EXPORTS AND VOLUMES         ##
#########################################
VOLUME /manjaro1
EXPOSE 9000/tcp 9000
EXPOSE 9001/tcp 9001
EXPOSE 22/tcp 49155
