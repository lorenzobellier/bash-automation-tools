#!/bin/bash
# Check status of important services

SERVICES=("ssh" "apache2" "mysql")
for service in "${SERVICES[@]}"; do
  systemctl is-active --quiet $service && echo "$service is running" || echo "$service is NOT running"
done
