#!/bin/bash
# Simple alert if root login fails more than 3 times

FAILED=$(grep "Failed password for root" /var/log/auth.log | wc -l)
if [ "$FAILED" -ge 3 ]; then
  echo "ALERT: $FAILED failed root login attempts!"
fi
