## >> From: wounded:pierce
## >> At: Player getting a wound
## >> As: Player getting a wound
## >> Does: Apply stored wound
## >> Input: UUID (UUID)
# Create new injury database for player if one is not available
$execute unless data storage wounded:injuries Players[{UUID:$(UUID)}] run data modify storage wounded:injuries Players append value {UUID:$(UUID),Injuries:[]}
# Add injury to it and clear temp storage
$data modify storage wounded:injuries Players[{UUID:$(UUID)}].Injuries append from storage wounded:injuries adding
data remove storage wounded:injuries adding