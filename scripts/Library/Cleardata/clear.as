// Library symbol "Cleardata/clear"

// ---- on instance "btnyes" of "Cleardata/btnyes", layer "Layer 1", frame 1
on (release) {
	btnno.enabled = false;
	btnyes.enabled = false;
	_root.resetVars();
	_root.fade(true,true,"mainmenu");
}

// ---- on instance "btnno" of "Cleardata/btnno", layer "Layer 1", frame 1
on (release) {
	btnno.enabled = false;
	btnyes.enabled = false;
	_root.fade(true,true,"mainmenu");
}
