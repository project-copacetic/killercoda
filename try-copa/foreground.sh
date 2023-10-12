#!/bin/bash

echo "Setting up scenario. Please wait..."
while [ ! -f /tmp/finished ]; do sleep 1; done
echo "Setup Complete"