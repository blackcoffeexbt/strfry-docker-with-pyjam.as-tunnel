#!/bin/bash
# Fetch the configuration and start the tunnel
curl https://tunnel.pyjam.as/7777 > tunnel.conf && wg-quick up ./tunnel.conf

# Output the tunnel details
cat tunnel.conf

# Start the relay command; it stays in the foreground
exec /app/strfry relay
