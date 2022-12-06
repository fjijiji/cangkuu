#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c239e2ff-4a7e-4a32-88f8-a40545977673"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

