// Library symbol "!System/fadeout"

// ---- layer "Control", frame 1
this.stop();

// ---- layer "Control", frame 2
this.play();

// ---- layer "Control", frame 41
this.gotoAndStop(1);
if (_root.achdis == 1 || _root.achalt == 1 || _root.achspe == 1 || _root.achdur == 1) {
	_root.gotoAndPlay("achievements");
} else {
	_root.gotoAndPlay(this.fadeto);
}

if (this.fin == true) {
	_root.fadeinc.gotoAndPlay(2);
}

// ---- layer "snow", frame 2
scount = 0;
this.onEnterFrame = function() {
	for (j=0; j<=2*(scount/40)+1; j++) {
		if (scount<150) {
			snow.duplicateMovieClip("snow"+scount,_root.getNextHighestDepth()+scount);
			this["snow"+scount]._x = 640+Math.random()*100;
			this["snow"+scount]._y = 480-Math.random()*(480*scount/80);
			this["snow"+scount].vx = (-40)-(Math.random()*20);
			this["snow"+scount].vy = -1*((Math.random()-0.5)*5);
			scount++;
		}
	}
};

// ---- on instance "snow" of "!System/snow", layer "snow", frame 2
onClipEvent (enterFrame) {
	if (this._name<>"snow") {
		this._x += this.vx;
		this._y += this.vy;
		if (this._x<(-10) || this._y<(-10) || this._y>450) {
			this.removeMovieClip();
		}
	}
}

// ---- layer "snow", frame 41
delete this.onEnterFrame;
