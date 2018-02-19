# winhat
A cloud native RHEL devtop solution

Example setup for C++/git/eclipse/mssql/VNC

winhat is a container setup for running a red hat enterprise linux (RHEL) development desktop.
The desktop is accessed using VNC.
The setup includes running a local copy of Microsoft MSSQL DB in a linux container.

Motivation:
Easy, on-the-fly creation of a development desktop. 
Run it whereever you want ( and your security allows ).
You can even run this on your laptop, if you have Docker installed.
Resources only used when needed.

Status:
very first version, nothing works.

Prerequisites for users:
Basic knowledge of docker
Basic linux command line skills

Node requirement:
16 Gig of RAM ( estimated, exact number will follow ).



History
Started during Microsoft Ignite 2017, in cooperatio nof some people from Docker, Microsoft, SwissLife, Redhat

It can easily be adapted for other development settings.

Setup on Windows 10 Pro
# step 1 
Install the Windows subsystem for Linux:
https://docs.microsoft.com/en-us/windows/wsl/install-win10

# step 2
Install a vnc viewer:
Follow https://x.cygwin.com/docs/ug/setup.html  

# step 3
Testing the docker setup. In this example, it is done on the Google cloud.
We log into a RHEL server with external ssh on port 22 enabled.

