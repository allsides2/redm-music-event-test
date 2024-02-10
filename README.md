# RedM Music Event Tester Script

## Introduction

This Lua script is designed to facilitate testing of music events in Red Dead Redemption 2.

1. Ensure you have the script installed in your RedM server's resources directory.
2. Start your RedM server.
3. In-game, use the `/playmusic` command to start playing music events.
4. The script will cycle through each music event in the list for 15 seconds each, providing feedback in the chat.
5. After 15 seconds, the script will stop the current music event and proceed to the next one in the list.

## Customization

You can customize the list of music events by modifying the `music_events` table in the script file. Add or remove event names as needed to suit your testing requirements.
REFERENCE: https://github.com/femga/rdr3_discoveries/blob/master/audio%2Fmusic_events%2Fmusic_events.lua#L6-L14


## Command

- `/playmusic`: Start playing music events for 15 seconds each.
