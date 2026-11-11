// Library symbol "!Outro/gameoverboard"

// ---- layer "Mask", frame 1
_root.enddays = _root.cday+" Days";
if (_root.cday>50) {
	txt.comment.gotoAndStop(1);
} else if (_root.cday>40) {
	txt.comment.gotoAndStop(2);
} else if (_root.cday>30) {
	txt.comment.gotoAndStop(3);
} else if (_root.cday>20) {
	txt.comment.gotoAndStop(4);
} else {
	txt.comment.gotoAndStop(5);
}

// ---- layer "Mask", frame 23
stop();
if (_root.cday>50) {
	txt.comment.gotoAndStop(1);
} else if (_root.cday>25) {
	txt.comment.gotoAndStop(2);
} else if (_root.cday>20) {
	txt.comment.gotoAndStop(3);
} else if (_root.cday>15) {
	txt.comment.gotoAndStop(4);
} else {
	txt.comment.gotoAndStop(5);
}
