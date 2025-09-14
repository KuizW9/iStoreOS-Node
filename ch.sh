mv /etc/banner /etc/banner.bak
cp banner /etc/banner
cat <<EOF > /etc/profile.d/30-sysinfo.sh
uptime
free -m
EOF
opkg install luci-app-tailscale_1.2.6_all.ipk