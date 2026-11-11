// Library symbol "!Stage/stagemc"

// ---- layer "Achievement", frame 5
if (_root.gamefinished<>true) {
	acend.gotoAndStop(1);
} else {
	acend.gotoAndStop(2);
}

// ---- layer "Clouds", frame 1
for (i=1; i<=6; i++) {
		temprd = 70+Math.random()*40;
		this["cloud"+i]._xscale = temprd;
		this["cloud"+i]._yscale = temprd;
		this["cloud"+i]._y = Math.random()*250;
		this["cloud"+i]._x = Math.random()*1000;
		this["cloud"+i].speed = 0.4+Math.random()*1.4;
}

this.onEnterFrame = function() {
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 70+Math.random()*40;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*250;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 0.4+Math.random()*1.4;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};

// ---- layer "Clouds", frame 2
for (i=1; i<=6; i++) {
		temprd = 70+Math.random()*40;
		this["cloud"+i]._xscale = temprd;
		this["cloud"+i]._yscale = temprd;
		this["cloud"+i]._y = Math.random()*250;
		this["cloud"+i]._x = Math.random()*1000;
		this["cloud"+i].speed = 0.4+Math.random()*1.4;
}

this.onEnterFrame = function() {
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 70+Math.random()*40;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*250;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 0.4+Math.random()*1.4;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};

// ---- layer "Clouds", frame 3
for (i=1; i<=6; i++) {
		temprd = 60+Math.random()*40;
		this["cloud"+i]._xscale = temprd;
		this["cloud"+i]._yscale = temprd;
		this["cloud"+i]._y = Math.random()*250;
		this["cloud"+i]._x = Math.random()*1000;
		this["cloud"+i].speed = 0.4+Math.random()*1.4;
}

this.onEnterFrame = function() {
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 60+Math.random()*40;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*250;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 0.4+Math.random()*1.4;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};

// ---- layer "Clouds", frame 4
for (i=1; i<=6; i++) {
		temprd = 50+Math.random()*40;
		this["cloud"+i]._xscale = temprd;
		this["cloud"+i]._yscale = temprd;
		this["cloud"+i]._y = Math.random()*250;
		this["cloud"+i]._x = Math.random()*1000;
		this["cloud"+i].speed = 0.4+Math.random()*1.4;
}

this.onEnterFrame = function() {
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 50+Math.random()*40;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*250;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 0.4+Math.random()*1.4;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};

// ---- layer "Clouds", frame 5
for (i=1; i<=6; i++) {
		temprd = 40+Math.random()*40;
		this["cloud"+i]._xscale = temprd;
		this["cloud"+i]._yscale = temprd;
		this["cloud"+i]._y = Math.random()*250;
		this["cloud"+i]._x = Math.random()*1000;
		this["cloud"+i].speed = 0.4+Math.random()*1.4;
}

this.onEnterFrame = function() {
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 40+Math.random()*40;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*250;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 0.4+Math.random()*1.4;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};
