#!/bin/bash - 
#===============================================================================
#
#          FILE: positions.sh
# 
#         USAGE: ./positions.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Galpha (), 
#  ORGANIZATION: 
#       CREATED: 04/26/2017 19:43:25
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

id=`pidof chrome`
cat $id

