if(image_xscale < 1) image_xscale += lerp(0, 0.1, 0.5);
image_yscale = image_xscale;
image_alpha = image_xscale;

if(image_xscale >= 1) instance_change(obj_item_energy, true);