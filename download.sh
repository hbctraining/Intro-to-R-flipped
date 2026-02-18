#!/bin/bash
mkdir -p lessons/figures
curl -L "https://www.dropbox.com/scl/fi/qrnrc11aigy2a3izompws/data.zip?rlkey=rp4z1pe6nv8tb3lcnfphgzswo&st=zi41s82i&dl=1" -o lessons/data.zip
unzip lessons/data.zip -d lessons -x "__MACOSX/*"
rm -f lessons/data.zip