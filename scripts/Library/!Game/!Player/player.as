// Library symbol "!Game/!Player/player"

// ---- layer "control", frame 1 ("stand")
stop();

// ---- on instance "(unnamed)" of "!Game/!Player/Glider", layer "Glider", frame 1
onClipEvent (load) {
	this.gotoAndStop(_root.lvlgl+1);
}

// ---- on instance "fuel" of "!Game/!Player/Fuelmeter", layer "Fuel", frame 1
onClipEvent (load) {
	if (_root.lvlro == 1) {
		this._visible = false;
	} else {
		this._visible = true;
	}
}

// ---- on instance "(unnamed)" of "!Game/!Player/Rocket", layer "Rocket", frame 1
onClipEvent (load) {
	this.gotoAndStop(_root.lvlro+1);
}

// ---- on instance "rocketflare" of "!Game/!Player/Rocket flare", layer "Rocket Flare", frame 1
onClipEvent (load) {
	this.gotoAndStop(_root.lvlro+1);
	this._visible = false;
}

// ---- on instance "(unnamed)" of "!Game/!Player/Harness", layer "Harness", frame 1
onClipEvent (load) {
	this.gotoAndStop(_root.lvlgl+1);
}
