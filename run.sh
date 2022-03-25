#!/bin/sh

cat << EOF > /config.json
{
  "log": {
    "loglevel": "none"
  },
  "inbounds": [{
      "port": ${PORT},
      "protocol": "vmess",
      "settings": {
        "clients": [{
          "id": "${ID}",
          "alterId": 64
        }]
      },
      "streamSettings": {
        "network": "ws"
      }
  }],
  "outbounds": [{
    "protocol": "freedom"
  }]
}
EOF

/vy -config /config.json
