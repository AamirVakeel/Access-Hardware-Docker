#shell script file: make_hotspot.sh

IFNAME="wlo1"
CON_NAME="H1"
PASS="zain2984"
nmcli con add type wifi ifname $IFNAME con-name $CON_NAME autoconnect yes ssid $CON_NAME

nmcli con modify $CON_NAME 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
nmcli con modify $CON_NAME wifi-sec.key-mgmt wpa-psk
nmcli con modify $CON_NAME wifi-sec.psk $PASS

nmcli con up id H1  #to turn on the internet connection