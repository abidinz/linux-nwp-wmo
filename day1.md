# EPEL Installation

`$ sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm`

`$ sudo dnf update`

`$ sudo dnf repolist –v`

`$ sudo dnf install git`

# Download the WRF and WPS source code

`$ git clone https://github.com/wrf-model/WRF`

`$ git clone https://github.com/wrf-model/WPS`


# Useful Options in Some Commands

`ls -ltr`				list files sorted by time in reversed order


`df -h`				disk usage in human-readable format (kB, MB, GB)

`du -h --max-depth=1`		list folder size in current directory

`date -u +%Y%m%d`			shows date of UTC in YYYYMMDD format

`cal -Y`				show calendar of the year

`cd –`					back to previous  directory

`rm –frv [dir]`			delete a folder recursively (BEWARE!)

`cp -rv [srcdir] [trgdir]`	copy a folder recursively

`mkdir –p first/second/third`	create new folder recursively