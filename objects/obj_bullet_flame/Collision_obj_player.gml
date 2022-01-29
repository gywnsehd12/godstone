with(other)
{
	damaged = true;
	hp -= global.enemy_damage;
}

instance_create_layer(x, y, "Effects_Layer", obj_destroy);
instance_destroy();