## >> From: windings:parse, windings:parsenext
## >> At: Any Spell
## >> As: Any Spell
## >> Does: Merge glyphs
## >> Input: None
# Read values
data modify storage windings parse.match set value {1:"",2:"",3:""}
data modify storage windings parse.match.1 set from storage windings parse.Reading[0]
data modify storage windings parse.match.2 set from storage windings parse.Reading[1]
data modify storage windings parse.match.3 set from storage windings parse.Reading[2]
# Open paren
data modify storage windings parse.New set value "["
function windings:lens/merge with storage windings parse
# Pattern match
execute if data storage windings {parse:{match:{1:"red",2:"red",3:"red"}}} run function windings:pattern/3redmaj
execute if data storage windings {parse:{match:{1:"lap",2:"lap",3:"lap"}}} run function windings:pattern/3lapmaj
execute if data storage windings {parse:{match:{1:"ememaj",2:"lapmaj",3:"lap"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"ememaj",2:"lap",3:"lapmaj"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"lapmaj",2:"ememaj",3:"lap"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"lap",2:"ememaj",3:"lapmaj"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"lapmaj",2:"lap",3:"ememaj"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"lap",2:"lapmaj",3:"ememaj"}}} run function windings:pattern/3cry
execute if data storage windings {parse:{match:{1:"ememaj",2:"lapmaj",3:"eme"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"ememaj",2:"eme",3:"lapmaj"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"lapmaj",2:"ememaj",3:"eme"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"eme",2:"ememaj",3:"lapmaj"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"lapmaj",2:"eme",3:"ememaj"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"eme",2:"lapmaj",3:"ememaj"}}} run function windings:pattern/3shar
execute if data storage windings {parse:{match:{1:"eme",2:"red"}}} run function windings:pattern/2ememaj
execute if data storage windings {parse:{match:{1:"red",2:"eme"}}} run function windings:pattern/2ememaj
execute if data storage windings {parse:{match:{1:"eme",2:"redmaj"}}} run function windings:pattern/2ememaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"eme"}}} run function windings:pattern/2ememaj
#execute if data storage windings {parse:{match:{1:"eme",2:"lapmaj"}}} run function windings:pattern/2emealt
#execute if data storage windings {parse:{match:{1:"lapmaj",2:"eme"}}} run function windings:pattern/2emealt
execute if data storage windings {parse:{match:{1:"redsup",2:"eme"}}} run function windings:pattern/2emesup
execute if data storage windings {parse:{match:{1:"eme",2:"redsup"}}} run function windings:pattern/2emesup
execute if data storage windings {parse:{match:{1:"redsup",2:"ememaj"}}} run function windings:pattern/2emesup
execute if data storage windings {parse:{match:{1:"ememaj",2:"redsup"}}} run function windings:pattern/2emesup
execute if data storage windings {parse:{match:{1:"lap",2:"lap"}}} run function windings:pattern/2lapmaj
execute if data storage windings {parse:{match:{1:"lap",2:"red"}}} run function windings:pattern/2lapmaj
execute if data storage windings {parse:{match:{1:"red",2:"lap"}}} run function windings:pattern/2lapmaj
execute if data storage windings {parse:{match:{1:"lap",2:"redmaj"}}} run function windings:pattern/2lapmaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"lap"}}} run function windings:pattern/2lapmaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"red"}}} run function windings:pattern/2red
execute if data storage windings {parse:{match:{1:"red",2:"red"}}} run function windings:pattern/2redmaj
execute if data storage windings {parse:{match:{1:"red",2:"redmaj"}}} run function windings:pattern/2redmaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"red"}}} run function windings:pattern/2redmaj
execute if data storage windings {parse:{match:{1:"lapmaj",2:"red"}}} run function windings:pattern/2redalt
execute if data storage windings {parse:{match:{1:"red",2:"lapmaj"}}} run function windings:pattern/2redalt
execute if data storage windings {parse:{match:{1:"redmaj",2:"redmaj"}}} run function windings:pattern/2redsup
execute if data storage windings {parse:{match:{1:"redsup",2:"lap"}}} run function windings:pattern/2lapsup
execute if data storage windings {parse:{match:{1:"lap",2:"redsup"}}} run function windings:pattern/2lapsup
execute if data storage windings {parse:{match:{1:"redsup",2:"lapmaj"}}} run function windings:pattern/2lapsup
execute if data storage windings {parse:{match:{1:"lapmaj",2:"redsup"}}} run function windings:pattern/2lapsup
execute if data storage windings {parse:{match:{1:"redmaj",2:"lapmaj"}}} run function windings:pattern/2ame
execute if data storage windings {parse:{match:{1:"lapmaj",2:"redmaj"}}} run function windings:pattern/2ame
execute if data storage windings {parse:{match:{1:"ame",2:"redmaj"}}} run function windings:pattern/2amemaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"ame"}}} run function windings:pattern/2amemaj
#execute if data storage windings {parse:{match:{1:"ame",2:"lapmaj"}}} run function windings:pattern/2amealt
#execute if data storage windings {parse:{match:{1:"lapmaj",2:"ame"}}} run function windings:pattern/2amealt
#execute if data storage windings {parse:{match:{1:"cry",2:"lapmaj"}}} run function windings:pattern/2cryalt
#execute if data storage windings {parse:{match:{1:"lapmaj",2:"cry"}}} run function windings:pattern/2cryalt
#execute if data storage windings {parse:{match:{1:"shar",2:"lapmaj"}}} run function windings:pattern/2sharalt
#execute if data storage windings {parse:{match:{1:"lapmaj",2:"shar"}}} run function windings:pattern/2sharalt
execute if data storage windings {parse:{match:{1:"ememaj",2:"redmaj"}}} run function windings:pattern/2res
execute if data storage windings {parse:{match:{1:"redmaj",2:"ememaj"}}} run function windings:pattern/2res
execute if data storage windings {parse:{match:{1:"res",2:"redmaj"}}} run function windings:pattern/2resmaj
execute if data storage windings {parse:{match:{1:"redmaj",2:"res"}}} run function windings:pattern/2resmaj
#execute if data storage windings {parse:{match:{1:"res",2:"lapmaj"}}} run function windings:pattern/2resalt
#execute if data storage windings {parse:{match:{1:"lapmaj",2:"res"}}} run function windings:pattern/2resalt
# If no matches occured, store current glyph
execute unless data storage windings parse.match run tag @s add WNDGMerged
execute if data storage windings parse.match run data modify entity @s data.Inscribed append from storage windings parse.Reading[0]
execute if data storage windings parse.match run function windings:lens/decipher
# Close paren
data modify storage windings parse.New set value " ]_"
function windings:lens/merge with storage windings parse
# Move on to next character (if exists)
execute if data storage windings parse.Reading[0] run function windings:parsenext