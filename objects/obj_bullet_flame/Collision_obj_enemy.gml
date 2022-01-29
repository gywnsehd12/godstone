with(other)
{
	damaged = true;
	hp -= 1;
}

instance_create_layer(x, y, "Effects_Layer", obj_destroy);
instance_destroy();