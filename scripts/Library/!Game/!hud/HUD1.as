// Library symbol "!Game/!hud/HUD1"

// ---- on instance "hudspe" of "!Game/!hud/hudspe1", layer "Speed", frame 1
onClipEvent (enterFrame) {
	temp = 200*_root.speed/_root.sgl3[_root.lvlgl-1];
	if (temp>200) {
		temp = 200+Math.random()*3;
	}
	temp = Math.round(temp);
	this.gotoAndStop(temp);
	delete temp;
}

// ---- on instance "hudalt" of "!Game/!hud/hudalt1", layer "Altitude", frame 1
onClipEvent (enterFrame) {
		temp = Math.round(200*_root.curheight/_root.sgl4[_root.lvlgl-1]);
		if (temp>200) {
			temp = 200;
		}
		this.gotoAndStop(temp);
		delete temp;
}
