###############################################################################################
#Adopted from https://github.com/sclorg/devtoolset-container/blob/master/6-toolchain/Dockerfile
#             by Marek Polacek <polacek@redhat.com>
#plus https://hub.docker.com/r/kevensen/centos-vnc/~/dockerfile/
###############################################################################################
FROM centos:7
MAINTAINER Frank Potthast Rutz

RUN yum -y update; yum clean all
RUN yum -y install x11vnc firefox xorg-x11-server-Xvfb xorg-x11-twm tigervnc-server xterm xorg-x11-font dejavu-sans-fonts dejavu-serif-fonts xdotool xeyes ; yum clean all

# Add the xstartup file into the image
ADD ./xstartup /

RUN mkdir /.vnc
RUN x11vnc -storepasswd 123456 /.vnc/passwd
RUN  \cp -f ./xstartup /.vnc/.
RUN chmod -v +x /.vnc/xstartup
RUN sed -i '/\/etc\/X11\/xinit\/xinitrc-common/a [ -x /usr/bin/xeyes ] && /usr/bin/xeyes &' /etc/X11/xinit/xinitrc

RUN yum -y install mate-terminal mate-screensaver mate-applets mate-backgrounds \
           mate-desktop mate-dictionary mate-menus-prefrences-category-menu \ 
           mate-notification-daemon mate-screenshot mate-system-log \ 
           mate-system-monitor mate-user-guide mate-utils

