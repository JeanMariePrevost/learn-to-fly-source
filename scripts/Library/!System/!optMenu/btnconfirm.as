// Library symbol "!System/!optMenu/btnconfirm"

// ---- on instance "btnyes" of "!System/!optMenu/btnconfirmyes", layer "Layer 3", frame 1
on (release) {
	//delete _root.onEnterFrame;
	_root.fade(false,true,"mainmenu");
	_root.optmenu.menu.backmc.gotoAndStop(1);
}

// ---- on instance "btnno" of "!System/!optMenu/btnconfirmno", layer "Layer 3", frame 1
on (release) {
	_root.optmenu.menu.backmc.gotoAndStop(1);
}
