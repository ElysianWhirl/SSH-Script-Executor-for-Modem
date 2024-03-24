#!/bin/ash

# Define the target hosts to ping
target1="sogood.linefriends.com"
target2="df.game.naver.com"

# Define the interval between pings in seconds
interval=5

# Initialize a variable to count consecutive failed pings for each target
failed_count_target1=0
failed_count_target2=0

# Loop indefinitely
while :
do
    # Get current date and time
    current_time=$(date "+%Y-%m-%d %H:%M:%S")

    # Perform the ping for target1
    if ping -c 1 -W 1 $target1 >/dev/null; then
        echo "$current_time: Ping to $target1 OK"
        # Reset failed_count_target1 if ping is successful
        failed_count_target1=0
    else
        echo "$current_time: Ping to $target1 failed"
        # Increment failed_count_target1 if ping fails
        failed_count_target1=$((failed_count_target1 + 1))
    fi

    # Perform the ping for target2
    if ping -c 1 -W 1 $target2 >/dev/null; then
        echo "$current_time: Ping to $target2 OK"
        # Reset failed_count_target2 if ping is successful
        failed_count_target2=0
    else
        echo "$current_time: Ping to $target2 failed"
        # Increment failed_count_target2 if ping fails
        failed_count_target2=$((failed_count_target2 + 1))
    fi

    # Check if both targets encountered 5 consecutive failed pings
    if [ $failed_count_target1 -ge 5 ] && [ $failed_count_target2 -ge 5 ]; then
        echo "$current_time: Both targets encountered 5 consecutive failed pings. Running 4greset.sh..."
        # Run 4greset.sh script
        4greset.sh
        echo "$current_time: Waiting for 45 seconds before resuming pinging..."
        # Wait for 45 seconds before resuming pinging
        sleep 45
        # Reset failed counts after running the reset script
        failed_count_target1=0
        failed_count_target2=0
    fi

    # Wait for the specified interval before pinging again
    sleep $interval
done
