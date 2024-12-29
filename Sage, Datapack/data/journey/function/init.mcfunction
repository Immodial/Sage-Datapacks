## >> From: #minecraft:load
## >> At: None
## >> As: Server
## >> Does: Create scoreboard and start loop
## >> Input: None
scoreboard objectives add JNYFlightTime dummy "Time Plane has been Running"
# Loop
schedule clear journey:loop
schedule function journey:loop 5