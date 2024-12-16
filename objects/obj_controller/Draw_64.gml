
/* Draw gui event handler */ 

// can draw a background of the ui 

xWidth = 352; 
// check if boss exits 
if (instance_exists(obj_boss))
{
	xWidth = 750 
	
	
}

// x top left corner, y top left  , x cord bottom right, y cord bottom right corner 
draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(0, 0, xWidth	, 100, false);

// draw the health of character 
var currentHealth = health 
var size = (currentHealth / 20 ) ; 
var fullHealth = 100; 
var sizeFull = (fullHealth / 20 ) - 1 ; 
// draw total health with the frame outline

// draw amount of health left
for (var i =0; i < size; ++i)
{
	draw_sprite(spr_heart,0, self.health_xCord + (padding * i), self.health_yCord)

}

for (var i = (sizeFull )  ; i >= 0; --i)
{
	draw_sprite(spr_heart_unact,0, self.health_xCord + (padding * i), self.health_yCord)
}

// draw the coins 
draw_sprite(spr_display_coin,0, self.coin_xCord, self.coin_yCord )
draw_text_color( self.coin_xCord + 25, self.coin_yCord - 10, string(score), c_yellow,c_yellow,c_yellow,c_yellow,1)

// now draw the key 
draw_sprite(spr_display_key,0, self.key_xCord, self.key_yCord )
draw_text_color( self.key_xCord + 25, self.key_yCord - 10, string(self.key_count), c_yellow,c_yellow,c_yellow,c_yellow,1)


// if not empty draw wepaon onto the gui
if(!ds_list_empty(self.players_weapons))
{
	size = ds_list_size(self.players_weapons);
	for (var i =0; i < size ; ++i)
	{
		draw_set_alpha(1)
		draw_sprite(spr_select_sq, 0 ,self.inventory_xCord +( padding *i),inventory_yCord);
		
		var item = ds_list_find_value(self.players_weapons, i);
		switch(item) 
		{
			case WEAPONS.SWORD:
			if (self.weapon_selected == WEAPONS.SWORD)
			{
				draw_sprite(spr_select_sq_ac, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord);
			}
		
				draw_set_alpha(1)
				draw_sprite(spr_display_sword, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord); 
			break;
			case WEAPONS.GUN:
			if (self.weapon_selected == WEAPONS.GUN)
			{
				draw_sprite(spr_select_sq_ac, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord);
			}
				draw_set_alpha(1)
				draw_sprite(spr_display_gun, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord);
				
			break; 
			case WEAPONS.MINE: 
			if (self.weapon_selected == WEAPONS.MINE)
			{
				draw_sprite(spr_select_sq_ac, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord);
			} 
				draw_set_alpha(1)
				draw_sprite(spr_display_bomb, 0 ,self.inventory_xCord  +( padding *i),inventory_yCord);
			break;
		}
	}
}


if (instance_exists(obj_boss))
{
	var x1=350
	var x2=670
	var y1=65
	var y2=80
	draw_text_colour(x1, y1- 32 , "Boss : Octopus Sorcer", c_white, c_white, c_white, c_white, 1);


	draw_rectangle_color(x1, y1, x2 , y2, c_red, c_red, c_red, c_red, true);
	draw_rectangle_color(x1, y1, x1 + obj_boss.hitPoints * 4 , y2, c_purple, c_purple, c_purple, c_purple, false);
	
}
