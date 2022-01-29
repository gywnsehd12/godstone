camera = camera_create();

camera_x = 1920;
camera_y = 1080;
camera_z = 10000;

target = obj_player;
cam_speed = 20;

sight_range = 1;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1600, 900, 1, camera_z);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

//set object to camera follow
foll = obj_player;

x_to = x;
y_to = y;
