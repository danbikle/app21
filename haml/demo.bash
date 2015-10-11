#!/bin/bash

# /home/ann/app21/haml/demo.bash

.  /home/ann/app21/app21env.bash
cd /home/ann/app21/haml/
# I can use this syntax to haml just 1 haml file:
# ~ann/app21/gems/bin/haml -eq ~ann/app21/haml/demo10.haml ~ann/app21/app/demo10.html

# I can use this syntax to haml many haml files:
for file in ~ann/app21/haml/demo*haml
do
  hamlfile=$file
  htmlfile=`echo $file|sed '1s/.haml$/.html/'`
  ~ann/app21/gems/bin/haml -eq $hamlfile $htmlfile
done

mv ~ann/app21/haml/demo*html ~ann/app21/app/

exit
