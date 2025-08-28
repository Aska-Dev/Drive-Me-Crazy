var cameraWidth = camera_get_view_width(view_camera[0]);

if (x > room_width - cameraWidth / 2) {
    x = xstart;
}