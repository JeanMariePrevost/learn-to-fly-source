// Library symbol "!Achievements/!achdura"

// ---- layer "Layer 2", frame 1
ac1.stop();

// ---- layer "Layer 2", frame 15
stop();
ac1.gotoAndPlay(1);

this.onMouseDown = function() {
	if (_root.achdur == 1) {
		this.gotoAndPlay(16);
		this._parent.timer = 4;
		ac1.gotoAndStop(1);
		_root.cash += _root.rewarda;
		this._parent.cashchg = 1;
		_root.achdur = 0;
	}
};

// ---- layer "Layer 2", frame 30
this._visible = false;
ac1.gotoAndStop(1);
this.gotoAndStop(1);
