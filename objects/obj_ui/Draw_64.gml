draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var high_sc = obj_controller.high_score;
var current_sc = obj_controller.game_score;

draw_text_transformed(700, 50, "High Score : " + string(high_sc), 2, 2, 0);
draw_text_transformed(700, 100, "Score : " + string(current_sc), 2, 2, 0);

draw_text_transformed(50, 50, "FPS : " + string(fps), 2, 2, 0);

draw_text_transformed(1300, 50, "HP : " + string(obj_player.hp), 2, 2, 0);
draw_text_transformed(1300, 100, "ENERGY : " + string(obj_player.energy), 2, 2, 0);