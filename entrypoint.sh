#!/bin/sh
PORT=${PORT:-3000}
sed "s/__PORT__/$PORT/" /app/config.template.json > /etc/xray/config.json
exec /usr/local/bin/xray -c /etc/xray/config.json
