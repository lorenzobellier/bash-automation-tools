#!/bin/bash
# Monitor login attempts

grep "Failed password" /var/log/auth.log | tail -n 20
grep "Accepted password" /var/log/auth.log | tail -n 20
