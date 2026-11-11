// Library symbol "!Outro/!o3/outro3anim"

// ---- layer "Control", frame 61
debris._visible = false;
debriscount = 0;
sea2.swapDepths(2000);
this.onEnterFrame = function() {
	for (i=0; i<3; i++) {
		duplicateMovieClip(debris, "debris"+debriscount, 1000+debriscount);
		this["debris"+debriscount].gotoAndStop(Math.round(Math.random()*5));
		this["debris"+debriscount]._x = debris._x;
		this["debris"+debriscount]._y = debris._y;
		this["debris"+debriscount]._xscale = 30+Math.random()*80;
		this["debris"+debriscount]._yscale = 30+Math.random()*80;
		this["debris"+debriscount].vx = -10-Math.random()*50;
		this["debris"+debriscount].vy = (Math.random()-0.8)*40;
		this["debris"+debriscount].vr = (Math.random()-0.2)*50;
		this["debris"+debriscount].onEnterFrame = function() {
			this._x += this.vx;
			this._y += this.vy;
			if (this._y>500) {
				this.removeMovieClip();
			}
			this._rotation += this.vr;
			this.vx *= 0.99;
			this.vy++;
		};
		debriscount++;
	}
};

// ---- layer "Control", frame 77
delete this.onEnterFrame

// ---- layer "Control", frame 251
stop();

// ---- on instance "sea2" of "!Game/!Stage/seagfx", layer "Sea2", frame 1
onClipEvent (enterFrame) {
	this._x--;
}

// ---- on instance "sea" of "!Game/!Stage/seagfx", layer "Sea1", frame 1
onClipEvent (enterFrame) {
	this._x--;
}

// ---- on instance "cloud1" of "!Game/!Clouds/Cloud1", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -= 0.2;
}

// ---- on instance "cloud5" of "!Game/!Clouds/Cloud2", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -=0.6;
}

// ---- on instance "cloud6" of "!Game/!Clouds/Cloud3", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -= 0.4;
}

// ---- on instance "cloud2" of "!Game/!Clouds/Cloud1", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -= 0.85;
}

// ---- on instance "cloud3" of "!Game/!Clouds/Cloud1", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -= 0.4;
}

// ---- on instance "cloud4" of "!Game/!Clouds/Cloud2", layer "Clouds", frame 1
onClipEvent (enterFrame) {
	this._x -= 0.9;
}
