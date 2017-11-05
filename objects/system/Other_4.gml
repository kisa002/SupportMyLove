/// @description Insert description here
// You can write your code in this editor
if (reset==0){
	switch(room){
		case r_stage1:
		case r_stage2:
		case r_stage3:
		case r_stage4:{
			if(!audio_is_playing(sd_1)){
				audio_stop_all();
				sd=audio_play_sound(sd_1,0,true);
			}
			else{audio_sound_set_track_position(sd,0)}
			break;
		}
		case r_stage5:
		case r_stage10:{
			if(!audio_is_playing(sd_boss)){
				audio_stop_all();
				sd=audio_play_sound(sd_boss,0,true);
			}
			else{audio_sound_set_track_position(sd,0)}
			break;
		}
		case r_stage6:
		case r_stage7:
		case r_stage8:
		case r_stage9:{
			if(!audio_is_playing(sd_2)){
				audio_stop_all();
				sd=audio_play_sound(sd_2,0,true);
			}
			else{audio_sound_set_track_position(sd,0)}
			break;
		}
	}
/*	switch(room){
		//여자 | 남자 | X
		case r_stage1:{
			wb_create(wb_1,"남자는 평행세계를 보고 영향을 끼칠 수 있는 능력이 있다. 그래서 남자는 능력이 생겼을 때 봤던 한 여자이를 구하려고 한다. 그 여자아이는 누구에게나 사랑 받는 존재였고 그렇기에 주변에 위험한 것이 많았다.`p 무슨 일인진 자세히는 모르지만 그녀는 던전에 있더라.`n 그래서 먼저 가서 함정을 없애려한다.`p 저기 버튼이 하나 보인다 점프를 이용해 해제해보자");
			wb_run();
			break;
		}
		case r_stage2:{
			wb_create(wb_1,"이번에는 새로운 함정이 추가 된 것 같다 먼저가서 해제해보자");
			wb_run();
			break;
		}
		case r_stage3:{
			wb_create(wb_1,"이번엔 발판이다 속도가 점점 빨라지고 있으니 자신도 조심해야겠다.");
			wb_run();
			break;
		}
		case r_stage4:{
			wb_create(wb_1,"점프를 한번 시켜줄수 있는듯한다 활용해보자");
			wb_run();
			break;
		}
		case r_stage5:{
			wb_create(wb_1,"거대한 몬스터를 만나버렸다 온갖 공격을 피해가며 여자를 돕자");
			wb_run();
			break;
		}
		case r_stage6:{
			wb_run();
			break;
		}
		case r_stage8:{
			wb_create(wb_1,"불을 네뿜는 기계가 있어보인다 저걸로 던전의 몬스터를 물리쳐보자");
			wb_run();
			break;
		}
		case r_stage10:{
			wb_create(wb_1,"무지막지한 놈이 나타났다 그 녀석은 소녀를 납치하고 나를 죽이려든다 주위에 떠다니는 버튼 6개를 어찌해봐야겠다.....");
			wb_run();
			break;
		}
	}*/
	reset=1;
}