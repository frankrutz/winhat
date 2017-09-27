# winhat
RHEL development farm on openShift

Example setup for C++/git/eclipse/mssql/X11

winhat is a container setup for running a red hat enterprise linux (RHEL) development desktop farm on openShift.
The desktop is accessed using X11, in our example from a Windows 10 client.
The setup includes running a local copy of Microsoft MSSQL DB in a linux container.

Prerequisites for users:
Basic knowledge of docker
Basic linux command line skills

Node requirement:
16 Gig of RAM ( estimated, exact number will follow ).



It can easily be adapted for other development settings.

# step 1  
Setting up X11 on Windows 10
Follow https://x.cygwin.com/docs/ug/setup.html  

CURRENT SHOWSTOPPER & TODO:
I cannot install Cygwin on my Win10 box, need to figure this out with Microsoft.

# step 2
Testing the docker setup. In this example, it is done on the Google cloud.
We log into a RHEL server with external ssh on port 22 enabled.




