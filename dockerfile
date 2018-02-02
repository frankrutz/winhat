###############################################################################################
#Adopted from https://github.com/sclorg/devtoolset-container/blob/master/6-toolchain/Dockerfile
#             by Marek Polacek <polacek@redhat.com>
#plus https://hub.docker.com/r/kevensen/centos-vnc/~/dockerfile/
###############################################################################################
FROM centos:7
MAINTAINER Frank Potthast Rutz

USER root
ENV DISPLAY="" \
    HOME=/home/1001

ARG vncpassword=password

RUN yum clean all && \
    yum update -y && \
    yum install -y --setopt=tsflags=nodocs \
                   tigervnc-server \
    		   xorg-x11-server-utils \
                   xorg-x11-server-Xvfb \
                   xorg-x11-fonts-* \
                   xterm && \
                   yum clean all && \
                   rm -rf /var/cache/yum

RUN yum install -y --setopt=tsflags=nodocs \
                  openmotif \
                  xterm \
                  firefox \
                  yum clean all && \
                  rm -rf /var/cache/yum/*

RUN /bin/dbus-uuidgen --ensure
RUN useradd -u 1001 -r -g 0 -d ${HOME} -s /bin/bash -c "Kiosk User" kioskuser

ADD xstartup ${HOME}/.vnc/
RUN echo "${vncpassword}" | vncpasswd -f > ${HOME}/.vnc/passwd
# RUN /bin/echo "/usr/bin/firefox" >> /home/1001/.vnc/xstartup
RUN touch /home/1001/.Xauthority

RUN chown -R 1001:0 ${HOME} && \
    chmod 775 ${HOME}/.vnc/xstartup && \
    chmod 600 ${HOME}/.vnc/passwd

##########Firefox install mate should go here#####################################
RUN yum install -y --setopt=tsflags=nodocs \
                  firefox \
                  yum clean all && \
                  rm -rf /var/cache/yum/*

# Run firefox from xterm, since it appears to be finnicky about grabbing the X display.
RUN /bin/echo 'xterm -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" firefox & ' >> /home/1001/.vnc/xstartup 


EXPOSE 5901
WORKDIR ${HOME}
USER 1001

# Always run the WM last!
RUN /bin/echo 'mwm' >> /home/1001/.vnc/xstartup 

ENTRYPOINT ["/usr/bin/vncserver","-fg"]
