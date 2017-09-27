# winhat
A cloud native RHEL development farm on openShift

Example setup for C++/git/eclipse/mssql/X11

winhat is a container setup for running a red hat enterprise linux (RHEL) development desktop farm on openShift.
The desktop is accessed using X11, in our example from a Windows 10 client.
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
Started during Microsoft Ignite 2017, in cooperatio nof some people from Docker, Microsoft, SwissLife, Redhat.


It can easily be adapted for other development settings.

# step 1  
Setting up X11 on Windows 10
Follow https://x.cygwin.com/docs/ug/setup.html  

CURRENT SHOWSTOPPER & TODO:
I cannot install Cygwin on my Win10 box, need to figure this out with Microsoft.

# step 2
Testing the docker setup. In this example, it is done on the Google cloud.
We log into a RHEL server with external ssh on port 22 enabled.




