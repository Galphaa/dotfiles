#!/bin/bash - 
#===============================================================================
#
#          FILE: floating_num.sh
# 
#         USAGE: ./floating_num.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Galpha (), 
#  ORGANIZATION: 
#       CREATED: 04/27/2017 19:37:19
#      REVISION:  ---
#===============================================================================

# num1=0.3
# num2=0.2
# if [ -n "$num1" -a -n "$num2" ];then
#   result=$(awk -vn1="$num1" -vn2="$num2" 'BEGIN{print (n1>n2)?1:0 }')
#   echo $result
#   if [ "$result" -eq 1 ];then
#    echo "$num1 greater than $num2"
#   fi
# fi

min=12.45
val=10.35

python - $min $val<<EOF
if ($min > $val):
        print $min
else: 
        print $val
EOF
