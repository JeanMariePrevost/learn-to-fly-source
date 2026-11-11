// Library symbol "!Day Intro/intro"

// ---- layer "Control", frame 1
tempskip=0

// ---- layer "Control", frame 49
stop();
this.onEnterFrame = function() {
	if (_root.infoboardisdown == false) {
		this.gotoAndPlay("begin");
		delete this.onEnterFrame;
	}
	for (ii=1; ii<=6; ii++) {
		this["c"+ii]._x -= this["c"+ii].speed;
		if (this["c"+ii]._x<(-200)) {
			this["c"+ii]._x = 700;
		}
	}
};

// ---- layer "Control", frame 50 ("begin")
this.onEnterFrame = function() {
	for (ii=1; ii<=6; ii++) {
		this["c"+ii]._x -= this["c"+ii].speed;
		if (this["c"+ii]._x<(-200)) {
			this["c"+ii]._x = 700;
		}
	}
};

// ---- layer "Control", frame 87
stop();

k = 10;

this.onEnterFrame = function() {
	k--;
	if (k<=0 && tbool<>true) {
		this.gotoAndPlay("begin2");
		tbool = true;
	}
	for (ii=1; ii<=6; ii++) {
		this["c"+ii]._x -= this["c"+ii].speed;
		if (this["c"+ii]._x<(-200)) {
			this["c"+ii]._x = 700;
		}
	}
};

// ---- layer "Control", frame 98
if (tempskip<>1) {
	_root.fade(true,true,"game");
}

// ---- layer "Control", frame 147
stop();
delete this.onEnterFrame;

// ---- layer "Clouds", frame 1
c1.speed = 1;
c2.speed = 0.8;
c3.speed = 0.5;
c4.speed = 1.2;
c5.speed = 1;
c6.speed = 0.95;

this.onEnterFrame = function() {
	for (ii=1; ii<=6; ii++) {
		this["c"+ii]._x -= this["c"+ii].speed;
		if (this["c"+ii]._x<(-200)) {
			this["c"+ii]._x = 700;
		}
	}
};
