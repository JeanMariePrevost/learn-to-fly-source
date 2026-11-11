// Library symbol "Preloader/loaderanim"

// ---- layer "Body", frame 1
stop();

// ---- layer "Body", frame 135
stop();

// ---- layer "Play btn", frame 1
playbtn.enabled = false;

// ---- layer "Play btn", frame 117
playbtn.enabled = true;

// ---- on instance "playbtn" of "Preloader/playbtn", layer "Play btn", frame 117
on (release) {
	_root.gotoAndPlay("sponsor");
}
