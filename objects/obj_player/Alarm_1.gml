if(keyboard_check(vk_space)) 
{
	part_system_depth(particle_trail, depth + 1);
	part_system_depth(particle_system, depth + 1);
	part_particles_create(particle_system, x + random_range(-5, 5), y + 8, particle_trail, 1);
}

alarm_set(1, 5);