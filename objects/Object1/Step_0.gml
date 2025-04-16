// Reset movement
hsp = 0;
vsp = 0;

// Input
if (keyboard_check(vk_right)) hsp += move_speed;
if (keyboard_check(vk_left))  hsp -= move_speed;
if (keyboard_check(vk_up))    vsp -= move_speed;
if (keyboard_check(vk_down))  vsp += move_speed;

// --- OBSTACLE COLLISION (Object3) - restart game ---
if (place_meeting(x + hsp, y + vsp, Object3)) {
    game_restart();
}



// Bounce horizontally
if (place_meeting(x + hsp, y, Object2)) {
    hsp = -hsp;
}
// Apply horizontal movement
x += hsp;

// Bounce vertically
if (place_meeting(x, y + vsp, Object2)) {
    vsp = -vsp;
}
// Apply vertical movement
y += vsp;