
#!/bin/bash

SERVICE="nginx"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

if systemctl is-active --quiet $SERVICE; then
    echo "$TIMESTAMP - $SERVICE - ONLINE - Nginx online." >> /home/franz/AtividadeLinux/nginx_online.log
else
    echo "$TIMESTAMP - $SERVICE - OFFLINE - Nginx offline." >> /home/franz/AtividadeLinux/nginx_offline.log
fi
