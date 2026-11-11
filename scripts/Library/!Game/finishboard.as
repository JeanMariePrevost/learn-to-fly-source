// Library symbol "!Game/finishboard"

// ---- layer "Control", frame 19
_root.boarddone = true;

// ---- layer "Control", frame 20
this.onEnterFrame = function() {
	tvar2 = 19;
	tvar = _parent.distance/tvar2;
	_parent.rdis2 += tvar;
	if (_parent.rdis2>=_parent.distance) {
		_parent.rdis2 = _parent.distance;
	}
	_parent.rdis = ["$"+String(Math.round(_parent.rdis2))];
};

// ---- layer "Control", frame 41
this.onEnterFrame = function() {
	tvar2 = 19
	tvar = _parent.maxaltitude/tvar2;
	_parent.ralt2 += tvar;
	if (_parent.ralt2>=_parent.maxaltitude) {
		_parent.ralt2 = _parent.maxaltitude;
	}
	_parent.ralt = ["$"+String(Math.round(_parent.ralt2))];
};

// ---- layer "Control", frame 61
localdur = _parent.duration;
if (localdur>30) {
	localdur = 30;
}

this.onEnterFrame = function() {
	tvar2 = 19;
	tvar = localdur/tvar2;
	rdur2 += tvar;
	if (rdur2>=localdur) {
		_parent.rdur3 = Math.round(localdur)/10;
	} else {
		_parent.rdur3 = Math.round(_parent.rdur2)/10;
	}
	_parent.rdur = String(_parent.rdur3);
	if (_parent.rdur.indexOf(".", 0)<=0) {
		_parent.rdur = [_parent.rdur+".0"];
	}
	_parent.rdur = ["X"+_parent.rdur];
};

// ---- layer "Control", frame 84
_parent.rtotal3 = (Math.round(_parent.rdis2)+Math.round(_parent.ralt2))*_parent.rdur3;
_parent.rtotal = ["$"+String(Math.round(_parent.rtotal3))];

// ---- layer "Control", frame 161
stop();

// ---- layer "Music", frame 2
_root.bgm.theme.stop();
delete _root.bgm.theme
_root.bgm.removeMovieClip();
