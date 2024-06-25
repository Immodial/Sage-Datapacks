## >> From: unref:tick
## >> At: None
## >> As: Player with a refined item that has not been refined
## >> Does: Replace item with unrefined version
## >> Input: None
execute if items entity @s container.* raw_iron[!custom_data] run give @s raw_iron[custom_data={URUnsmelted:true}]
execute if items entity @s container.* raw_iron[!custom_data] run clear @s raw_iron[!custom_data] 1
execute if items entity @s container.* iron_ingot[!custom_data] run give @s cooked_porkchop[item_name="{translate:'item.minecraft.iron_ingot'}",custom_data={URUnsmelted:true},custom_model_data=1,max_stack_size=16,fire_resistant={},!food]
execute if items entity @s container.* iron_ingot[!custom_data] run clear @s iron_ingot[!custom_data] 1