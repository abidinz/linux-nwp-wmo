#!/bin/bash

# https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.YYYYMMDD/HH/atmos/
# https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p25.pl?file=gfs.t00z.pgrb2.0p25.f000&all_lev=on&all_var=on&subregion=&leftlon=80&rightlon=150&toplat=15&bottomlat=-15&dir=%2Fgfs.20220924%2F00%2Fatmos
RES=0p50
DATE=`date -u +%Y%m%d`
DATE=$1
HH=00
HH=$2
LLON=80		# left longitude
RLON=150	# right longitude
TLAT=15		# top latitude
BLAT=-15	# bottom latitude

for FR in `seq -f %03g 0 72`
do
	echo $FR
	FNAME="gfs.t${HH}z.pgrb2.${RES}.f${FR}"
	URL="https://nomads.ncep.noaa.gov/pub/data/nccf/com/gfs/prod/gfs.${DATE}/${HH}/atmos/${FNAME}"
	URL="https://nomads.ncep.noaa.gov/cgi-bin/filter_gfs_0p25.pl?file=gfs.t${HH}z.pgrb2.0p25.f${FR}&all_lev=on&all_var=on&subregion=&leftlon=${LLON}&rightlon=${RLON}&toplat=${TLAT}&bottomlat=${BLAT}&dir=%2Fgfs.${DATE}%2F${HH}%2Fatmos"
	echo $URL
	wget $URL -O $FNAME
done
