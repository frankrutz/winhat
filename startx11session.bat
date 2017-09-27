@echo off

C:
chdir C:\Win32app\cygwin64\bin

bash --login -c "X -nodecoration -clipboard -ac -rootless :1 &"
bash --login -c "echo $DISPLAY; export DISPLAY=localhost:1; ssh -Y -l username public.ip.of.computer \"echo $DISPLAY; mate-session\""
