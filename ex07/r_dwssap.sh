#!/bin/sh
cat /etc/passwd |awk NR%2==0|cut -d: -f1|grep -v "#"|rev|sort -r|awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]'|sed 's/$/, /g'|sed '$s/, /./g'|tr -d '\n'
