#!/bin/sh



echo "$(date -u +%Y-%m-%d_%Hh%M_UTC)" > /UPDATED-BASE
echo " **************************************************"S
echo ""
echo "This Image was last updated: $(cat /UPDATED-BASE) " 
echo ""
echo " **************************************************"


exit 0
