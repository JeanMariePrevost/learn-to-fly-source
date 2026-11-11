// Library symbol "!Day Intro/infoboard"

// ---- layer "control", frame 1 ("ib1a")
_root.infoboardisdown = true;
if (_root.skipcutscenes == true && _root.showcontrols == false) {
	if (_root.lvlgl>1) {
		_root.infoboard2 == 1;
	}
	if (_root.lvlro>1) {
		_root.infoboard3 == 1;
	}
	_root.gotoAndPlay("game");
} else {
	if (_root.infoboard1 == 1) {
		if (_root.lvlgl == 1 || _root.infoboard2 == 1) {
			if (_root.lvlro == 1 || _root.infoboard3 == 1) {
				if (_root.skipcutscenes == true) {
					_root.gotoAndPlay("game");
				}
				stop();
				_root.infoboardisdown = false;
			} else {//Info 3
				this.gotoAndPlay("ib3a");
			}
		} else {//Info 2
			this.gotoAndPlay("ib2a");
		}
	}
}

// ---- layer "control", frame 35
stop();

this.onMouseDown = function() {
	this.gotoAndPlay("ib1b");
	_root.infoboard1 = 1;
	delete this.onMouseDown;
};

// ---- on instance "(unnamed)" of "!BGM/BGM", layer "control", frame 35
onClipEvent (keyDown) {
	this._parent.gotoAndPlay("ib1b");
	_root.infoboard1 = 1;
	this.removeMovieClip();
}

// ---- layer "control", frame 48
_root.infoboardisdown = true;
if (_root.lvlgl == 1 || _root.infoboard2 == 1) {
	stop();
	_root.infoboardisdown = false;
}

// ---- layer "control", frame 81
stop();

this.onMouseDown = function() {
	this.gotoAndPlay("ib2b");
	_root.infoboard2 = 1;
	delete this.onMouseDown;
};

// ---- on instance "(unnamed)" of "!BGM/BGM", layer "control", frame 81
onClipEvent (keyDown) {
	this._parent.gotoAndPlay("ib2b");
	_root.infoboard1 = 1;
	this.removeMovieClip();
}

// ---- layer "control", frame 95
_root.infoboardisdown = true;
if (_root.lvlro == 1 || _root.infoboard3 == 1) {
	stop();
	_root.infoboardisdown = false;
}

// ---- layer "control", frame 128
stop();

this.onMouseDown = function() {
	this.gotoAndPlay("ib3b");
	_root.infoboard3 = 1;
	delete this.onMouseDown;
};

// ---- on instance "(unnamed)" of "!BGM/BGM", layer "control", frame 128
onClipEvent (keyDown) {
	this._parent.gotoAndPlay("ib3b");
	_root.infoboard1 = 1;
	this.removeMovieClip();
}

// ---- layer "control", frame 142
_root.infoboardisdown = false;
stop();
