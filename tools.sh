--display n line and execute
sed -n 'x,yp' filename  | bash 
sed -n  '2p' testifle  | zsh

--other sytle
head -n 2 test | tail -n 1 | bash

sudo tcpdump -i lo -vv -n -w trace tcp port 1234