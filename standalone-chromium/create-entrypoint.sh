#!/bin/sh

cat <<EOF > /selenium/entrypoint.sh
#!/bin/sh

source /selenium/stop_trap.sh
source /selenium/utils.sh

start_xvfb

java -jar /selenium/selenium-server-standalone.jar \
	standalone \
	--port 4444 \
	&
JAVA_PID=$!
wait $JAVA_PID
EOF

cat <<EOF > /entrypoint.sh
#!/bin/bash
  
# turn on bash's job control
set -m
  
# Start the primary process and put it in the background
/gluetun-entrypoint &
  
# Start the helper process
/selenium/entrypoint.sh &

# now we bring the primary process back into the foreground
# and leave it there
fg %1
EOF

chmod +x /selenium/entrypoint.sh
chmod +x /entrypoint.sh