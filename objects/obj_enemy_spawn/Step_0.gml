if(image_xscale < 1) image_xscale += lerp(0, 0.01, 0.5);
image_yscale = image_xscale;
image_alpha = image_xscale;

if(image_xscale == 1) instance_change(obj_enemy, true);

if(instance_exists(obj_sun)) depth = obj_sun.depth + 1;