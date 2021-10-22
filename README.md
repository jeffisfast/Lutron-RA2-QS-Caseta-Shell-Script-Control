# Lutron-RA2-QS-Caseta-Shell-Script-Control
Control your Lutron system using a macros, Stream Deck buttons, command lines, etc.

I was looking for a way to map buttons on my Stream Deck to trigger lighting commands.  Lutron doesn't have any computer software to do this, but their integration protocols is pretty simple so I threw this script together.  

You will need to get your keypad's device id number and button id numbers to make this work.  Substitute those in for the ones I have in the script.  Then just execute this file when you want to do the button press.

Also, you will need to hardcode the IP address of your Lutron processor.  I recommend giving it a static IP address while you're at it.

Note - I'm assuming the default telnet credentials for your Lutron processor are still in place as lutron / integration.  If you've changed them please update accordingly.
