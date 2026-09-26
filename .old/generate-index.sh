#!/bin/bash
# super simple script that will create an index with `tree`
# then add viewport (for mobile)
# then add a footer with my name (cause I am narcissistic like that)


tree -H . -I "static" -I index.html -I "*.sh" -I "*-e" > index.html
sed -i -e 's/Directory\ Tree/russian notes/g' index.html
sed -i '' '/<head>/a \
<meta name="viewport" content="width=device-width, initial-scale=1.0">' index.html
sed -i '' '/<\/body>/i \
    <p class="VERSION">Notes by benjamin santana :)</p>' index.html
