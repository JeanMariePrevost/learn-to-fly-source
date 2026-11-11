// Library symbol "!Main Menu/titlescreen"

// ---- layer "Control", frame 150 ("menu2")
stop();

// ---- layer "btnerase", frame 119
clearbtn.enabled = false

// ---- layer "btnerase", frame 150
clearbtn.enabled = true;

// ---- on instance "(unnamed)" of "!Main Menu/btnerase", layer "btnerase", frame 150
on (release) {
	if (menuexit<>true) {
		this._parent.bgm.theme.stop();
		delete this._parent.bgm.theme;
		this._parent.bgm.removeMovieClip();
		_root.fade(true,true,"cleardata");
		menuexit = true;
	}
}

// ---- on instance "(unnamed)" of "!Main Menu/btnPlay", layer "btnplay", frame 150
on (release) {
	if (menuexit<>true) {
		_root.loadSO();
		this._parent.bgm.theme.stop();
		delete this._parent.bgm.theme;
		this._parent.bgm.removeMovieClip();
		delete _root.achdis;
		delete _root.achalt;
		delete _root.achspe;
		delete _root.achdur;
		if (_root.infoboard1 == 1) {
			_root.fade(true,true,"shop");
		} else {
			_root.resetVars();
			_root.fade(true,true,"dayintro");
		}
		menuexit = true;
	}
}

// ---- layer "BGM", frame 62
_root.attachMovie("BGM","bgm",_root.getNextHighestDepth());
_root.bgm._x = -100;
_root.bgm.theme = new Sound(bgm);
_root.bgm.theme.attachSound("shop.wav",false);
_root.bgm.theme.start(0,0);
_root.bgm.theme.onSoundComplete = function() {
	_root.bgm.theme.start(0,0);
};
