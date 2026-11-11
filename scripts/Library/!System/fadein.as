// Library symbol "!System/fadein"

// ---- layer "Control", frame 1
this.stop();

// ---- layer "Control", frame 2
this.play();

// ---- layer "Control", frame 45
this.gotoAndStop(1);

// ---- layer "snow", frame 2
scount = 0;
this.onEnterFrame = function() {
	for (j=0; j<=3-2.5*(scount/30); j++) {
		if (scount<60) {
			snow.duplicateMovieClip("snow"+scount,_root.getNextHighestDepth()+scount);
			this["snow"+scount]._x = 640+Math.random()*100;
			this["snow"+scount]._y = Math.random()*(480);
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

// ---- layer "snow", frame 45
delete this.onEnterFrame;
