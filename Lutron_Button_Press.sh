#!/bin/bash

# THIS SCRIPT USES THE expect COMMAND.  Install it using 'brew install expect' on a Mac
# From Lutron's software download the Integration report to get device #s and button #s
# To simulate a Keypad button press the command is #DEVICE,<keypad #>,<button #>,3

#Jeff's Office, Device 48, Button 1 = High, Button 6 = Off  -- #DEVICE,48,1,3 to activate "HIGH"
#Jeff's Office, Device 50, Button 1 = Solar, Button 2 = Blackout, Button 6=Goodnight

# UPDATE IP ADDRESS BELOW TO YOUR LUTRON PROCESSOR
# UPDATE USERNAME TO YOUR USERNAME (below it is lutron)
# UPDATE PASSWORD TO YOUR PASSWORD (below it is integration)
# UPDATE LINE #23 TO YOUR DEVICE ID AND BUTTON ID

/opt/homebrew/bin/expect -c '
log_file -a /tmp/status.log
set timeout 20
spawn /opt/homebrew/bin/telnet 10.0.1.200
expect "login: " 
send "lutron\r"
expect "password: "
send "integration\r"
expect "GNET> "
send "#DEVICE,48,6,3\r"
expect "GNET> "
exit
' 
exit

