// Library symbol "!Game/!hud/HUD2"

// ---- on instance "hudspe" of "!Game/!hud/hudspe2", layer "Speed", frame 1
onClipEvent (enterFrame) {
	temp = 200*_root.speed/_root.sgl3[_root.lvlgl-1];
	if (temp>208) {
		temp = 208;
	}
	temp = Math.round(temp);
	this.gotoAndStop(temp);
	delete temp;
}

// ---- on instance "hudalt" of "!Game/!hud/hudalt2", layer "Altitude", frame 1
onClipEvent (enterFrame) {
		temp = Math.round(600*_root.curheight/_root.sgl4[_root.lvlgl-1]);
		if (temp>600) {
			temp = 600;
		}
		this.gotoAndStop(temp);
		delete temp;
}
