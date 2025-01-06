## >> From: windings:pattern/
## >> At: Any Spell
## >> As: Spell with a pattern occuring
## >> Does: Decipher name into glyph and add to lens message
## >> Input: None
data modify storage windings parse.Deciphering set from storage windings parse.Reading[0]
data remove storage windings parse.Reading[0]
data modify storage windings parse.New set value "?"
execute if data storage windings {parse:{Deciphering:"eme"}} run data modify storage windings parse.New set value "A"
execute if data storage windings {parse:{Deciphering:"ememaj"}} run data modify storage windings parse.New set value "A<X"
execute if data storage windings {parse:{Deciphering:"emesup"}} run data modify storage windings parse.New set value "A<Z"
execute if data storage windings {parse:{Deciphering:"lap"}} run data modify storage windings parse.New set value "B"
execute if data storage windings {parse:{Deciphering:"lapmaj"}} run data modify storage windings parse.New set value "B<X"
execute if data storage windings {parse:{Deciphering:"lapsup"}} run data modify storage windings parse.New set value "B<Z"
execute if data storage windings {parse:{Deciphering:"red"}} run data modify storage windings parse.New set value "C"
execute if data storage windings {parse:{Deciphering:"redmaj"}} run data modify storage windings parse.New set value "C<X"
execute if data storage windings {parse:{Deciphering:"redalt"}} run data modify storage windings parse.New set value "C<Y"
execute if data storage windings {parse:{Deciphering:"redsup"}} run data modify storage windings parse.New set value "C<Z"
execute if data storage windings {parse:{Deciphering:"ame"}} run data modify storage windings parse.New set value "D "
execute if data storage windings {parse:{Deciphering:"amemaj"}} run data modify storage windings parse.New set value "D <X"
execute if data storage windings {parse:{Deciphering:"shar"}} run data modify storage windings parse.New set value "E"
execute if data storage windings {parse:{Deciphering:"cry"}} run data modify storage windings parse.New set value "F"
execute if data storage windings {parse:{Deciphering:"res"}} run data modify storage windings parse.New set value "G"
execute if data storage windings {parse:{Deciphering:"resmaj"}} run data modify storage windings parse.New set value "G<X"
function windings:lens/merge with storage windings parse