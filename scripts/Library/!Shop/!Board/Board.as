// Library symbol "!Shop/!Board/Board"

// ---- layer "Control", frame 1
txtday.text = _root.cday+1;
hint.gotoAndStop(11);
rh1.gotoAndStop(11);
rh2.gotoAndStop(1);
rh3.gotoAndStop(_root.lvlrh);
rh4.gotoAndStop(1);
rf1.gotoAndStop(11);
rf2.gotoAndStop(1);
rf3.gotoAndStop(_root.lvlrf);
rf4.gotoAndStop(1);
re1.gotoAndStop(11);
re2.gotoAndStop(1);
re3.gotoAndStop(_root.lvlre);
re4.gotoAndStop(1);
rp1.gotoAndStop(11);
rp2.gotoAndStop(1);
rp3.gotoAndStop(_root.lvlrp);
rp4.gotoAndStop(1);
gl1.gotoAndStop(1);
gl2.gotoAndStop(1);
gl3.gotoAndStop(_root.lvlgl);
if (_root.lvlro>1) {
	rpblock._visible = false;
}
ro1.gotoAndStop(1);
ro2.gotoAndStop(1);
ro3.gotoAndStop(_root.lvlro);
_root.rcost = 0;
rh = 0;
rf = 0;
re = 0;
gl = 0;
rp = 0;
ro = 0;
exitshop = false;
_root.casha = _root.cash;
cashb = 0;
this.flymc._visible = false;

function getCash() {
	cashb = (_root.casha-_root.cash)/18;
	sfx.cashsfx = new Sound(sfx);
	sfx.cashsfx.attachSound("Cash.wav",false);
	sfx.cashsfx.start(0,0);
	this.sfx.cashsfx.onSoundComplete = function() {
		delete sfx.cashsfx;
	};
}
this.onEnterFrame = function() {
	if (_root.casha<>_root.cash) {
		_root.casha -= cashb;
		if (_root.casha<_root.cash) {
			_root.casha = _root.cash;
		}
		_root.casha = Math.round(_root.casha);
	}
};

function getPrice() {
	rh4.gotoAndStop(1);
	rf4.gotoAndStop(1);
	re4.gotoAndStop(1);
	rp4.gotoAndStop(1);
	for (k=0; k<10; k++) {
		if (_root.crh[k]<=_root.cash) {
			rh4.gotoAndStop(k+2);
		}
		if (_root.crf[k]<=_root.cash) {
			rf4.gotoAndStop(k+2);
		}
		if (_root.cre[k]<=_root.cash) {
			re4.gotoAndStop(k+2);
		}
		if (_root.crp[k]<=_root.cash) {
			rp4.gotoAndStop(k+2);
		}
	}
}
getPrice();

this.onMouseDown = function() {
	if (exitshop<>true) {
		if (rh>_root.lvlrh-1 && _root.rcost<=_root.cash) {
			_root.lvlrh = rh+1;
			rh3.gotoAndStop(_root.lvlrh);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (rf>_root.lvlrf-1 && _root.rcost<=_root.cash) {
			_root.lvlrf = rf+1;
			rf3.gotoAndStop(_root.lvlrf);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (re>_root.lvlre-1 && _root.rcost<=_root.cash) {
			_root.lvlre = re+1;
			re3.gotoAndStop(_root.lvlre);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (gl>_root.lvlgl-1 && _root.rcost<=_root.cash) {
			_root.lvlgl = gl+1;
			gl3.gotoAndStop(_root.lvlgl);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (rp>_root.lvlrp-1 && _root.rcost<=_root.cash) {
			_root.lvlrp = rp+1;
			rp3.gotoAndStop(_root.lvlrp);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (ro>_root.lvlro-1 && _root.rcost<=_root.cash) {
			_root.lvlro = ro+1;
			ro3.gotoAndStop(_root.lvlro);
			_root.cash -= _root.rcost;
			_root.rcost = 0;
			getCash();
		}
		if (_root.lvlro>1) {
			rpblock._visible = false;
		}
		getPrice();
	}
};

this.onMouseMove = function() {
	if (exitshop<>true) {
		rh = 0;
		rf = 0;
		re = 0;
		gl = 0;
		ro = 0;
		rp = 0;
		hint.gotoAndStop(11);
		_root.rcost = 0;
		if (rh1.hitTest(_root._xmouse, this._ymouse)) {
			rh = Math.round(rh1._xmouse/25+0.5);
			if (rh>_root.lvlrh-1) {
				hint.gotoAndStop(1);
				_root.rcost = _root.crh[rh-1];
			} else {
				rh = 0;
			}
		} else if (rf1.hitTest(_root._xmouse, this._ymouse)) {
			rf = Math.round(rf1._xmouse/25+0.5);
			if (rf>_root.lvlrf-1) {
				hint.gotoAndStop(2);
				_root.rcost = _root.crf[rf-1];
			} else {
				rf = 0;
			}
		} else if (re1.hitTest(_root._xmouse, this._ymouse)) {
			re = Math.round(re1._xmouse/25+0.5);
			if (re>_root.lvlre-1) {
				hint.gotoAndStop(3);
				_root.rcost = _root.cre[re-1];
			} else {
				re = 0;
			}
		} else if (rp1.hitTest(_root._xmouse, this._ymouse) && _root.lvlro>1) {
			rp = Math.round(rp1._xmouse/25+0.5);
			if (rp>_root.lvlrp-1) {
				hint.gotoAndStop(10);
				_root.rcost = _root.crp[rp-1];
			} else {
				rp = 0;
			}
		} else if (gl1.hitTest(_root._xmouse, this._ymouse)) {
			gl = Math.round(gl1._xmouse/90+0.5);
			if (gl>_root.lvlgl-1) {
				hint.gotoAndStop(3+gl);
				_root.rcost = _root.cgl[gl-1];
			} else {
				gl = 0;
			}
		} else if (ro1.hitTest(_root._xmouse, this._ymouse)) {
			ro = Math.round(ro1._xmouse/90+0.5);
			if (ro>_root.lvlro-1) {
				hint.gotoAndStop(6+ro);
				_root.rcost = _root.cro[ro-1];
			} else {
				ro = 0;
			}
		}
		rh2.gotoAndStop(rh+1);
		rf2.gotoAndStop(rf+1);
		re2.gotoAndStop(re+1);
		rp2.gotoAndStop(rp+1);
		if (gl1.hitTest(_root._xmouse, this._ymouse, true)) {
			gl1.gotoAndStop(gl+1);
		} else {
			gl1.gotoAndStop(1);
		}
		gl2.gotoAndStop(gl+1);
		if (ro1.hitTest(_root._xmouse, this._ymouse, true)) {
			ro1.gotoAndStop(ro+1);
		} else {
			ro1.gotoAndStop(1);
		}
		ro2.gotoAndStop(ro+1);
	}
};

// ---- on instance "flybtn" of "!Shop/!Board/Ready", layer "Dynamics", frame 1
on (release) {
	this.flybtn._visible = false;
	this.flymc._visible = true;
	this.flymc.gotoAndStop(3);
	exitshop = true;
	_root.fade(true,true,"stage");
}
