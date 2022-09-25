This repository contains supplementary files for Linux Introduction in Group Fellowshop Training of Numerical Weather Prediction (2nd Phase - On Campus), Jakarta and Citeko, Indonesia, 27 Sept- 24 Oct 2022


# gfs_download.sh

`bash gfs_download.sh YYYYMMDD HH`

GFS resolution can be changed in the file in `RES` variable
- `RES=0p50` for GFS 0.5 degree
- `RES=0p25` for GFS 0.25 degree

# gfs_filter_download.sh

`bash gfs_download.sh YYYYMMDD HH`

GFS resolution can be changed in the file in `RES` variable
- `RES=0p50` for GFS 0.5 degree
- `RES=0p25` for GFS 0.25 degree

Specify Domain with these variables:
- `LLON` : left longitude
- `RLON` : right longitude
- `ULAT` : upper latitude
- `BLAT` : bottom latitude
