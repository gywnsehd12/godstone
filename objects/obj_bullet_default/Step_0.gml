time ++;

if(time >= seconds(5)) 
{
	instance_create_layer(x, y, layer, obj_destroy);
	instance_destroy();
}