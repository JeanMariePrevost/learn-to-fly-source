// Library symbol "!Outro/!o2/Outro2"

// ---- layer "Player", frame 113
stop();
this._parent.outro3.play();
this._parent.outro3.anim.play();
this._visible=false;

// ---- layer "Clouds", frame 1
for (i=1; i<=6; i++) {
	temprd = 40+Math.random()*70;
	this["cloud"+i]._xscale = temprd;
	this["cloud"+i]._yscale = temprd;
	this["cloud"+i]._y = Math.random()*480;
	this["cloud"+i]._x = Math.random()*1000;
	this["cloud"+i].speed = 75+Math.random()*50;
}
this.onEnterFrame = function() {
	player.rocketflare._visible = true;
	for (i=1; i<=6; i++) {
		if (this["cloud"+i]._x+this["cloud"+i]._width<0) {
			temprd = 40+Math.random()*70;
			this["cloud"+i]._xscale = temprd;
			this["cloud"+i]._yscale = temprd;
			this["cloud"+i]._y = Math.random()*480;
			this["cloud"+i]._x = 800+this["cloud"+i]._width+Math.random()*100;
			this["cloud"+i].speed = 75+Math.random()*50;
		}
		this["cloud"+i]._x -= this["cloud"+i].speed;
	}
};
