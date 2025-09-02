hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self);
clicking = hovering && mouse_check_button_pressed(mb_left);

active = oDuelController.activeRacer == RACERS.PLAYER || oDuelController.currentPhase = DUEL_PHASES.SELECTING_CARD_FOR_ACTION;

isPlayable = card.isPlayable(oRaceController.player);
