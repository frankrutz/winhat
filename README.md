# winhat
RHEL development farm on openShift

winhat is a container setup for running a red hat enterprise linux (RHEL) development desktop farm on openShift.
The desktop is accessed using X11, in our example from a Windows 10 client.

Prerequisites for users:
Basic knowledge of docker
Basic linux command line skills

Example setup for C++/git/eclipse/mssql.
It can easily be adapted for other development settings.

# step 1  
Setting up X11 on Windows 10
Follow https://x.cygwin.com/docs/ug/setup.html  

# step 2
Testing the docker setup. In this example, it is done on the Google cloud.
We log into a RHEL server with external ssh on port 22 enabled.




