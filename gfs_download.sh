#!/bin/bash

# https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.YYYYMMDD/HH/atmos/
RES=0p50
#DATE=`date -u +%Y%m%d`
DATE=$1
HH=$2
for FR in `seq -f %03g 0 72`
do
	echo $FR
	FNAME="gfs.t${HH}z.pgrb2.${RES}.f${FR}"
	URL="https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.${DATE}/${HH}/atmos/${FNAME}"
	echo $URL
	wget $URL
done
