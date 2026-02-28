#!/usr/bin/env bash

# Launch the binary in the background
/usr/bin/ksplashqml &

# Store the background process's PID
bg_pid=$!

# Wait for 6 seconds
sleep 6

# Kill the background process
kill $bg_pid
