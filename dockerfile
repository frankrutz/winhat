###############################################################################################
#Adopted from https://github.com/sclorg/devtoolset-container/blob/master/6-toolchain/Dockerfile
#             by Marek Polacek <polacek@redhat.com>
###############################################################################################

FROM centos:centos7
LABEL MAINTAINER Frank Potthast Rutz

ENV SUMMARY="winhat Developer C/C++/MSSQL/Eclipse toolset desktop container" \
    DESCRIPTION="building C/C++ applications using Red Hat \
Developer Toolset 6. Red Hat Developer Toolset is a Red Hat \
offering for developers on the Red Hat Enterprise Linux platform. \
It provides a complete set of development and performance analysis tools \
that can be installed and used on multiple versions of Red Hat \
Enterprise Linux. Executables built with the Red Hat Developer Toolset \
toolchain can then also be deployed and run on multiple versions of \
Red Hat Enterprise Linux."

yum -y groupinstall "X Window System" "Desktop" "Fonts" "General Purpose Desktop"
yum -y install xauth

#TODO install eclipse
#TODO get .ssh keys
#TODO configure git



