// Library symbol "!Outro/!o1/Outro1"

// ---- layer "BG", frame 100
tempshake = 0;
increase = 0;
this.onEnterFrame = function() {
	if (increase == 0) {
		tempshake += 0.5;
		if (tempshake>15) {
			increase = 1;
		}
	} else if (increase == 1) {
		tempshake-=0.6;
		if (tempshake<0) {
			tempshake = 0;
			increase = 2;
		}
	}
	bg._x = -20+(Math.random()-0.5)*tempshake;
	bg._y = -20+(Math.random()-0.5)*tempshake;
};

// ---- layer "BG", frame 265
stop();
this._parent.outro2.play();
this._visible=false;
