// Library symbol "!Game/!hud/HUD3"

// ---- on instance "hudspe" of "!Game/!hud/hudspe3", layer "Speed", frame 1
onClipEvent (enterFrame) {
	temp = 200*_root.speed/_root.sgl3[_root.lvlgl-1];
	if (temp>225) {
		temp = 225;
	}
	temp = Math.round(temp);
	this.gotoAndStop(temp);
	delete temp;
}
