#!/bin/bash

# Kill any running instance of Waybar
killall waybar

# Wait for a moment to ensure Waybar has stopped
sleep 1

# Start a new instance of Waybar
waybar &
