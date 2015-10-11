#!/bin/bash

# ~ann/app21/html4haml/demo.bash

cd ~ann/app21/html4haml/

. ~ann/app21/app21env.bash
~ann/app21/gems/bin/html2haml --html-attributes ~ann/app21/html4haml/demo10.html ~ann/app21/haml/temp.haml

exit
