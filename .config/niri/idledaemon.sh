#!/bin/bash

# Idle management for Niri (screen off, lock, suspend)
swayidle -w \
  timeout 300 'niri msg action power-off-monitors' \
  resume 'niri msg action power-on-monitors' \
  timeout 420 'loginctl lock-session' \
  timeout 600 'systemctl suspend' 

