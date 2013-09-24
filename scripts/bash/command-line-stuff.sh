for i in `knife search node "*:*" -a ipaddress | grep ipaddress | awk '{print $2}'`; do ping -c 2 $i; done
