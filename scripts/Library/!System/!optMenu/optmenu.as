// Library symbol "!System/!optMenu/optmenu"

// ---- layer "option", frame 1
_root.optmenu.menu.skipmc.gotoAndStop(2);
_root.optmenu.menu.showctrl.gotoAndStop(2);
_root.optmenu.menu.mutemc.gotoAndStop(1);

// ---- on instance "(unnamed)" of "!System/!optMenu/btnqual", layer "Btn", frame 1
on (release) {
	_root.cquality++;
	if (_root.cquality>3) {
		_root.cquality = 1;
	}
	if (_root.cquality == 1) {
		_root._quality = "low";
	} else if (_root.cquality == 2) {
		_root._quality = "medium";
	} else if (_root.cquality == 3) {
		_root._quality = "high";
	} else {
		_root.cquality = 3;
		_root._quality = "high";
	}
	_root.optmenu.menu.qualitymc.gotoAndStop(_root.cquality);
}

// ---- on instance "(unnamed)" of "!System/!optMenu/btncut", layer "Btn", frame 1
on (release) {
	if (_root.skipcutscenes == true) {
		_root.skipcutscenes = false;
		_root.optmenu.menu.skipmc.gotoAndStop(2);
	} else {
		_root.skipcutscenes = true;
		_root.optmenu.menu.skipmc.gotoAndStop(1);
	}
}

// ---- on instance "(unnamed)" of "!System/!optMenu/btncontrol", layer "Btn", frame 1
on (release) {
	if (_root.showcontrols == true) {
		_root.showcontrols = false;
		_root.optmenu.menu.showctrl.gotoAndStop(1);
	} else {
		_root.showcontrols = true;
		_root.optmenu.menu.showctrl.gotoAndStop(2);
	}
}

// ---- on instance "(unnamed)" of "!System/!optMenu/btnmute", layer "Btn", frame 1
on (release) {
	if (_root.mute == true) {
		_root.mute = false;
		_root.optmenu.menu.mutemc.gotoAndStop(1);
		_root.globalSound.setVolume(100);
	} else {
		_root.mute = true;
		_root.optmenu.menu.mutemc.gotoAndStop(2);
		_root.globalSound.setVolume(0);
	}
}

// ---- on instance "qualitymc" of "!System/!optMenu/qualitymc", layer "mc", frame 1
onClipEvent (load) {
	this.gotoAndStop(3);
}
