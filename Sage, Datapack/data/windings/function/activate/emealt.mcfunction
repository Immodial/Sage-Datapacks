## >> From: windings:cast
## >> At: Spell containing the Emerald Alternate Glyph
## >> As: Spell containing the Emerald Alternate Glyph
## >> Does: Place invisible block
## >> Input: None
execute if block ~ ~ ~ #air align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["WNDGProjectile"],data:{Corporeal:"hoverblock"}}
execute if block ~ ~ ~ #air run setblock ~ ~ ~ structure_void strict