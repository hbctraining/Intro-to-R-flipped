#!/bin/bash
mkdir -p lessons/figures
curl -L "https://www.dropbox.com/scl/fi/1boq9z3fx2g2elglv65va/data.zip?rlkey=527n1nprpmdg8rcqhirrxvnpg&st=fm4fgr20&dl=0" -o lessons/data.zip
unzip lessons/data.zip -d lessons -x "__MACOSX/*"
rm -f lessons/data.zip