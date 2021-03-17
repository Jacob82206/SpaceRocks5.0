if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case RM_STRT: 
			room_goto(RM_GM);
			break;
			
		case RM_WIN:
		case RM_GMAEOVER:	
			game_restart();
			break;
	}
}

if(room == RM_GM){
	if(score >= 1000){
			room_goto(RM_WIN);
	}

	if(lives<= 0){
		room_goto(RM_GMAEOVER);
	}
}