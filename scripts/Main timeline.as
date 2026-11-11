// Main timeline

// ---- layer "Control", frame 1 ("debug")
Stage.showMenu = false;
_root.globalSound = new Sound();//Master Volume
var_so = SharedObject.getLocal("learntofly");//

// ---- layer "Control", frame 2 ("loader")
stop();

myInterval = setInterval(preload, 50);

function preload() {
	var current = _root.getBytesLoaded();
	var total = _root.getBytesTotal();
	var pctLoaded = Math.round(current/total*100);
	dtxt.text = pctLoaded;
	loadanim.gotoAndStop(pctLoaded);
	if (current == total) {
		loadanim.gotoAndPlay(101);
		clearInterval(myInterval);
		delete preload;
	}
}

// ---- layer "Control", frame 3 ("sponsor")
stop();
//_root.gotoAndPlay("init");

// ---- layer "Control", frame 4 ("init")
//----------------REFERENCE---------------//
//options
cquality = 3;
_quality = "high";
skipcutscenes = false;
showcontrols = true;
mute = false;
//stats
var srl:Array = new Array(250, 500, 750, 1250, 2000);//NOT IN USE - simply a reminder
var srh:Array = new Array(25, 75, 125, 175, 250, 350, 500, 700, 1000, 1400, 2000);
var srf:Array = new Array(0.015, 0.025, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.11, 0.12);
var sre:Array = new Array(0.065, 0.061, 0.057, 0.053, 0.049, 0.046, 0.043, 0.040, 0.038, 0.036, 0.034);
var sgl:Array = new Array(0, 1/12, 1/24, 1/36);//glide ratio
var sgl1:Array = new Array(1000, 0, 0, 0);//fall speed
var sgl2:Array = new Array(1000, 5, 6, 7);//glide speed
var sgl3:Array = new Array(50, 55, 100, 200);//max speed
var sgl4:Array = new Array(1, 60, 500, 200);//max altitude on meter
var sro:Array = new Array(0, 0.45, 0.9, 1.5);
var srp:Array = new Array(30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 175);
//cost
var crh:Array = new Array(10, 30, 50, 90, 175, 300, 600, 1000, 2000, 4000);
var crf:Array = new Array(15, 45, 80, 150, 400, 750, 1500, 3500, 6000, 10000);
var cre:Array = new Array(10, 30, 50, 100, 175, 375, 800, 2000, 4000, 6500);
var cgl:Array = new Array(50, 1000, 5000);
var cro:Array = new Array(250, 2000, 10000);
var crp:Array = new Array(50, 100, 150, 300, 600, 1000, 2000, 3500, 6000, 10000);
//--------------PLAYER STATS--------------//
cday = 0;
cash = 0;
lvlramp = 1;
lvlrh = 1;
lvlrf = 1;
lvlre = 1;
lvlgl = 1;
lvlro = 1;
lvlrp = 1;
//---------------Stage Stats--------------//
//Stage 1
stageac1 = 0;
stagedis11 = 40;//Goal
stagealt11 = 10;//Goal
stagespe11 = 45;//Goal
stagedur11 = 5;//Goal
stagedis12 = 25;//Reward
stagealt12 = 25;//Reward
stagespe12 = 25;//Reward
stagedur12 = 25;//Reward
//Stage 2
stageac2 = 2;
stagedis21 = 200;//Goal
stagealt21 = 25;//Goal
stagespe21 = 70;//Goal
stagedur21 = 8;//Goal
stagedis22 = 100;//Reward
stagealt22 = 100;//Reward
stagespe22 = 100;//Reward
stagedur22 = 100;//Reward
//Stage 3
stageac3 = 6;
stagedis31 = 650;//Goal
stagealt31 = 45;//Goal
stagespe31 = 100;//Goal
stagedur31 = 15;//Goal
stagespe32 = 500;//Reward
stagedis32 = 500;//Reward
stagealt32 = 500;//Reward
stagedur32 = 500;//Reward
//Stage 4
stageac4 = 10;
stagedis41 = 1500;//Goal
stagealt41 = 100;//Goal
stagespe41 = 150;//Goal
stagedur41 = 25;//Goal
stagedis42 = 2000;//Reward
stagealt42 = 2000;//Reward
stagespe42 = 2000;//Reward
stagedur42 = 2000;//Reward
//Stage 5
stageac5 = 16;
stagedis51 = 4000;//Goal
stagealt51 = 225;//Goal
stagespe51 = 225;//Goal
stagedur51 = 35;//Goal
stagedis52 = 5000;//Reward
stagealt52 = 5000;//Reward
stagespe52 = 5000;//Reward
stagedur52 = 5000;//Reward
//------Stages Stats-------(Is achievement completed ?)
stagedis13 = 0;//Stat
stagealt13 = 0;//Stat
stagespe13 = 0;//Stat
stagedur13 = 0;//Stat
stagedis23 = 0;//Stat
stagealt23 = 0;//Stat
stagespe23 = 0;//Stat
stagedur23 = 0;//Stat
stagedis33 = 0;//Stat
stagealt33 = 0;//Stat
stagespe33 = 0;//Stat
stagedur33 = 0;//Stat
stagedis43 = 0;//Stat
stagealt43 = 0;//Stat
stagespe43 = 0;//Stat
stagedur43 = 0;//Stat
stagedis53 = 0;//Stat
stagealt53 = 0;//Stat
stagespe53 = 0;//Stat
stagedur53 = 0;//Stat


//----------------FUNCTIONS---------------//
function resetVars() {
	//--------------PLAYER STATS
	cday = 0;
	cash = 0;
	lvlramp = 1;
	lvlrh = 1;
	lvlrf = 1;
	lvlre = 1;
	lvlgl = 1;
	lvlro = 1;
	lvlrp = 1;
	//---------------Stage Stats
	stagedis13 = 0;//Stat
	stagealt13 = 0;//Stat
	stagespe13 = 0;//Stat
	stagedur13 = 0;//Stat
	stagedis23 = 0;//Stat
	stagealt23 = 0;//Stat
	stagespe23 = 0;//Stat
	stagedur23 = 0;//Stat
	stagedis33 = 0;//Stat
	stagealt33 = 0;//Stat
	stagespe33 = 0;//Stat
	stagedur33 = 0;//Stat
	stagedis43 = 0;//Stat
	stagealt43 = 0;//Stat
	stagespe43 = 0;//Stat
	stagedur43 = 0;//Stat
	stagedis53 = 0;//Stat
	stagealt53 = 0;//Stat
	stagespe53 = 0;//Stat
	stagedur53 = 0;//Stat
	delete gamefinished;
	delete keepplaying;
	delete infoboard1;
	delete infoboard2;
	delete infoboard3;
	saveSO();
}
function flashfade(fadeto:String) {
	_root.flashfader.fadeto = fadeto;
	_root.flashfader.gotoAndPlay(2);
}
function fade(fout:Boolean, fin:Boolean, fadeto:String) {
	if (fout == true) {
		_root.fadeoutc.fadeto = fadeto;
		_root.fadeoutc.fin = fin;
		_root.fadeoutc.gotoAndPlay(2);
	} else if (fin == true) {
		_root.fadeinc.gotoAndPlay(2);
		if (fadeto == "mainmenu") {
			_root.gotoAndPlay(fadeto);
			_root.fadeoutc.gotoAndStop(1);
			bgm.theme.stop();
			delete bgm.theme;
			delete _root.bgm;
			delete fadeto;
		} else if (_root.achdis == 1 || _root.achalt == 1 || _root.achspe == 1 || _root.achdur == 1) {
			_root.gotoAndPlay("achievements");
		} else {
			_root.gotoAndPlay(fadeto);
		}
	} else {
		if (_root.achdis == 1 || _root.achalt == 1 || _root.achspe == 1 || _root.achdur == 1) {
			_root.gotoAndPlay("achievements");
		} else {
			_root.gotoAndPlay(fadeto);
		}
	}
}
function getCloud() {
	tangle = Math.atan2(player._y-oldy, player._x-oldx)/(Math.PI/180)-90;
	if (Math.sqrt(Math.pow(_root["cloud"+cloudcount]._x-_root.player._x, 2)+Math.pow(_root["cloud"+cloudcount]._y-_root.player._y, 2))>1000) {
		_root["cloud"+cloudcount]._x = 320+700*Math.sin(-1*(_root.tangle+Math.random()*90-45)*(Math.PI/180));
		_root["cloud"+cloudcount]._y = 240+700*Math.cos((_root.tangle+Math.random()*90-45)*(Math.PI/180));
		trnd = Math.random();
		_root["cloud"+cloudcount]._alpha = 40+trnd*70;
		_root["cloud"+cloudcount]._xscale = 90+trnd*45;
		_root["cloud"+cloudcount]._yscale = 90+trnd*45;
		delete trnd;
		if ((_root["cloud"+cloudcount]._y+100)>_root.sea._y) {
			_root["cloud"+cloudcount]._y = _root.sea._y+Math.random()*380+100;
		}

	}
	if (cloudcount<6) {
		cloudcount++;
	} else {
		cloudcount = 1;
	}
}

function movecam(left, right, buffer, speed, friction) {
	camvx *= friction;
	camvy *= friction;
	if (player._x>right) {
		camfactor = (player._x-right)/buffer;
		camvx -= speed*camfactor;
	} else {
		if ((camvx>-0.1) && (camvx<0.1)) {
			camvx = 0;
		}
	}
	if ((player._y>250) && (sea._y>400)) {
		camfactor = (player._y-250)/buffer;
		camvy -= speed*camfactor;
		//move cam left
	} else if (player._y<150) {
		camfactor = (150-player._y)/buffer;
		camvy += speed*camfactor;
		//move cam right
	} else {
		if ((camvy>-0.1) && (camvy<0.1)) {
			camvy = 0;
		}
	}
	//move all
	player._x += camvx;
	player._y += camvy;
	ramp1._x += camvx;
	ramp1._y += camvy;
	ramp2._x = ramp1._x+ramp1._width-1.5;
	ramp2._y = ramp1._y;
	ramp3._x = ramp2._x+ramp2._width-1.5;
	ramp3._y = ramp2._y+ramp2._width-1.5;
	ramp4._x = ramp3._x+ramp3._width-1.5;
	ramp4._y = ramp3._y;
	gfxramp1._x = ramp1._x;
	gfxramp1._y = ramp1._y-4020;
	gfxramp2._x = ramp2._x;
	gfxramp2._y = ramp2._y-4020;
	gfxramp3._x = ramp3._x;
	gfxramp3._y = ramp3._y-4020;
	gfxramp4._x = ramp4._x;
	gfxramp4._y = ramp4._y-4020;
	sea._x += camvx;
	sea._y += camvy;
	if (sea._x<(-2000)) {
		sea._x += 2000;
	}
	skybg._x += camvx;
	skybg._y = player._y;
	if (skybg._x<(-2000)) {
		skybg._x += 2000;
	}
	seagfx._x = sea._x;
	seagfx._y = sea._y;
	for (j=1; j<7; j++) {
		_root["cloud"+j]._x += camvx-1;
		_root["cloud"+j]._y += camvy;
	}
	splash._x += camvx;
	splash._y += camvy;
}
function getRamp() {
	tempvolume = speed/2+40;
	if (tempvolume>100) {
		tempvolume = 100;
	}
	player.slidesfx.setVolume(tempvolume);
	delete tempvolume;
	player._x += Math.cos(vdir)*vmag;
	if ((player._x>ramp1._x) && (player._x<(ramp1._x+ramp1._width-1))) {
		overramp = _root.ramp1;
	} else if ((player._x>ramp2._x) && (player._x<ramp2._x+ramp2._width-1)) {
		overramp = _root.ramp2;
	} else if ((player._x>ramp3._x) && (player._x<ramp3._x+ramp3._width-1)) {
		overramp = _root.ramp3;
	} else if ((player._x>ramp4._x) && (player._x<ramp4._x+ramp4._width-1)) {
		overramp = _root.ramp4;
	} else if (player._x>(ramp4._x+ramp4._width-1)) {
		overramp = "jump";
	} else {
		overramp = "";
	}
	if (overramp == _root.ramp2) {
		player._y = (ramp2._y-ramp2._height+(((player._x-ramp2._x)/ramp2._width)*ramp2._width));
	} else {
		objy = player._y;
		j = 0;
		if (overramp.hitTest(player._x, objy, true)) {
			while (overramp.hitTest(player._x, objy, true)) {
				objy -= 0.5;
				j++;
				if (j>250) {
					break;
				}
			}
		} else {
			while ((overramp.hitTest(player._x, objy, true)) == false) {
				objy += 0.5;
				j++;
				if (j>250) {
					break;
				}
			}
		}
		player._y = objy;
	}
	farx = player._x+fardistance;
	fary = player._y;
	if ((farx>ramp1._x) && (farx<(ramp1._x+ramp1._width-1))) {
		nextramp = _root.ramp1;
	} else if ((farx>ramp2._x) && (farx<ramp2._x+ramp2._width-1)) {
		nextramp = _root.ramp2;
	} else if ((farx>ramp3._x) && (farx<ramp3._x+ramp3._width-1)) {
		nextramp = _root.ramp3;
	} else if ((farx>ramp4._x) && (farx<ramp4._x+ramp4._width-1)) {
		nextramp = _root.ramp4;
	} else if (farx>(ramp4._x+ramp4._width-1)) {
		nextramp = "jump";
	} else {
		nextramp = "";
	}
	j = 0;
	if (nextramp.hitTest(farx, fary, true)) {
		while (nextramp.hitTest(farx, fary, true)) {
			fary -= 0.5;
			j++;
			if (j>250) {
				break;
			}
		}
	} else {
		while ((nextramp.hitTest(farx, fary, true)) == false) {
			fary += 0.5;
			j++;
			if (j>250) {
				break;
			}
		}
	}
	if (nextramp<>"jump") {
		farratio = fary-player._y;
		vdir = Math.atan(farratio/fardistance);///(Math.PI/180);
		if (farratio>0) {
			vmag += farratio*slide;
		} else {
			vmag += 20*slide;
		}
		player._rotation = vdir/(Math.PI/180)+90;
	} else if (player.jumped<>true) {
		vx = (Math.cos(vdir)*vmag);
		vy = (Math.sin(vdir)*vmag);
		vdir /= Math.PI/180;
		vdir += sink;
		player.jumped = true;
		if (showcontrols == true) {
			hint._visible = true;
			if (lvlgl == 1) {
				hint.gotoAndPlay("hint1");
			} else {
				hint.gotoAndPlay("hint2");
			}
		}
		delete loopslide;
		player.slidesfx.stop();
		delete player.slidesfx;
		_root.bgm.theme.start(0,0);
		tempvolume = speed/2-15;
		if (tempvolume>65) {
			tempvolume = 65;
		}
		player.jumpsfx.setVolume(tempvolume);
		delete tempvolume;
		player.jumpsfx.start(0,0);
	}
}
function getSea() {
	vx *= seafriction;
	vy *= seafriction;
	vy += seagravity;
	player._x += vx;
	player._y += vy;
	player._rotation = Math.atan2(vy, vx)/(Math.PI/180)+90;
}
function getAir() {
	if (distance>=6000 && _root.gamefinished<>true && _root.keepplaying<>true) {//Game Finished !
		_root.cash += 10000;
		_root.flashfade("outro");
		_root.gamefinished = true;
		_root.bgm.theme.stop();
		delete _root.bgm.theme;
		_root.bgm.removeMovieClip();
		player._x += (Math.cos(vdir*(Math.PI/180))*vmag)*glideratio;
		player._y += (Math.sin(vdir*(Math.PI/180))*vmag)*glideratio;
		player._x += vx*(1-glideratio);
		player._y += vy;
	} else if (gamefinished == true && _root.keepplaying<>true) {
		player._x += (Math.cos(vdir*(Math.PI/180))*vmag)*glideratio;
		player._y += (Math.sin(vdir*(Math.PI/180))*vmag)*glideratio;
		player._x += vx*(1-glideratio);
		player._y += vy;
	} else {
		duration += 0.02;
		if (kickthrust>0) {
			player._x += vx;
			player._y += vy;
			//player._x += (Math.cos(vdir*(Math.PI/180))*vmag);
			//player._y += (Math.sin(vdir*(Math.PI/180))*vmag);
			kickthrust--;
		} else {
			if ((Key.isDown(Key.LEFT) || Key.isDown(65)) && vdir>(-85)) {
				tspin = 1.5-(3*vmag/sgl3[lvlgl-1]);//tspin is the variation of control due to speed
				if (tspin<0) {
					tspin = 0;
				}
				player._rotation -= spin+tspin;
				vdir -= spin+tspin;
				delete tspin;
			}
			if ((Key.isDown(Key.RIGHT) || Key.isDown(68)) && vdir<85) {
				tspin = 1.5-(3*vmag/sgl3[lvlgl-1]);//tspin is the variation of control due to speed
				if (tspin<0) {
					tspin = 0;
				}
				player._rotation += spin+tspin;
				vdir += spin+tspin;
				delete tspin;
			}
			if ((Key.isDown(Key.SPACE)) && (rocketfuel>0)) {
				player.fuel.gotoAndStop(50-Math.round(((rocketfuel/_root.srp[_root.lvlrp-1])*50)-0.5));
				if (_root.rocketsfx._name<>"rocketsfx") {
					_root.attachMovie("BGM","rocketsfx",_root.getNextHighestDepth());
					_root.rocketsfx._x = -150;
					_root.rocketsfx.jet = new Sound(rocketsfx);
					_root.rocketsfx.jet.attachSound("jet.wav",false);
					_root.rocketsfx.jet.setVolume(40+lvlro*15);
					_root.rocketsfx.jet.start(0,0);
					_root.rocketsfx.jet.onSoundComplete = function() {
						_root.rocketsfx.jet.start(0,0);
					};
				}
				player.rocketflare._visible = true;
				vmag += rocketpower;
				vx += (Math.cos(vdir*(Math.PI/180))*rocketpower);
				vy += (Math.sin(vdir*(Math.PI/180))*rocketpower);
				rocketfuel--;
			} else {
				if (_root.rocketsfx._name<>"") {
					_root.rocketsfx.jet.stop();
					delete _root.rocketsfx.jet;
					_root.rocketsfx.removeMovieClip();
				}
				player.rocketflare._visible = false;
			}
			drag = ((sink-vdir)/90);
			if (_root.speed>_root.sgl3[_root.lvlgl-1]) {
				drag += (((_root.speed-_root.sgl3[_root.lvlgl-1])/_root.sgl3[_root.lvlgl-1])*1.5);
			}
			vmag *= 1-(airfriction*drag*glideratio);
			vmag -= gravity*drag;
			glidetarget = ((vmag-fallspeed)/(glidespeed-fallspeed))-glideratio;
			if (glidetarget>glideadjust) {
				glidetarget = glideadjust;
			} else if (glidetarget<(-(glideadjust))) {
				glidetarget = (-(glideadjust));
			}
			glideratio += glidetarget;
			if (glideratio>1) {
				glideratio = 1;
			} else if (glideratio<minglide) {
				glideratio = minglide;
			}
			vy += gravity;
			vy *= 1-(0.1*glideratio);
			vy *= 1-(airfriction/15);
			if (vx>vmag) {
				vx *= 1-(airfriction);
			} else {
				vx *= 1-(airfriction/10);
			}
			player._x += (Math.cos(vdir*(Math.PI/180))*vmag)*glideratio;
			player._y += (Math.sin(vdir*(Math.PI/180))*vmag)*glideratio;
			player._x += vx*(1-glideratio);
			player._y += vy;
		}
		curheight = (sea._y-player._y)/50;
		if (curheight<=0) {
			if ((speed>=seabouncespeed) && (player._rotation>=seabounceminangle) && (player._rotation<=seabouncemaxangle)) {
				player._y = sea._y;
				vx *= seabouncefriction;
				vmag *= seabouncefriction;
				vy = ((vx+vmag)/2)*seabouncepower;
				splash._x = player._x;
				splash._y = player._y;
				splash._xscale = 100+speed/3;
				splash._yscale = 100+speed/3;
				splash.gotoAndPlay(1);
				if (vy<maxseabounce) {
					vy = maxseabounce;
				}
				player._rotation = 70;//+= Math.atan2(vy, vx)/(Math.PI/180);
				vdir = player._rotation-90;
			} else {
				splash._x = player._x;
				splash._y = sea._y;
				splash._xscale = 100+speed/3;
				splash._yscale = speed;
				splash.gotoAndPlay(1);
				_root.rocketsfx.jet.stop();
				delete _root.rocketsfx.jet;
				_root.rocketsfx.removeMovieClip();
				duration = Math.round(duration-0.5);
				tmod = 1+(distance/1000);
				if (tmod>2) {
					tmod = 2-(distance-1000)/1500;
				}
				if (tmod<0.5) {
					tmod = 0.5;
				}
				distance *= 0.4*tmod;
				tmod = 1+(maxaltitude/50);
				if (tmod>2) {
					tmod = 2;
				}
				maxaltitude *= 2*tmod;
				vmag *= 0.7;
				vx = (vx*(1-glideratio))+((Math.cos(vdir*(Math.PI/180))*vmag)*glideratio);
				vy = (vy*(1-glideratio))+((Math.sin(vdir*(Math.PI/180))*vmag)*glideratio);
				player.landed = true;
				player.rocketflare._visible = false;
			}
		}
	}
}

function saveSO() {
	//--------------PLAYER STATS
	var_so.data.cday = cday;
	var_so.data.cash = cash;
	var_so.data.lvlramp = lvlramp;
	var_so.data.lvlrh = lvlrh;
	var_so.data.lvlrf = lvlrf;
	var_so.data.lvlre = lvlre;
	var_so.data.lvlgl = lvlgl;
	var_so.data.lvlro = lvlro;
	var_so.data.lvlrp = lvlrp;
	//---------------Stage Stats
	var_so.data.stagedis13 = stagedis13;//Stat
	var_so.data.stagealt13 = stagealt13;//Stat
	var_so.data.stagespe13 = stagespe13;//Stat
	var_so.data.stagedur13 = stagedur13;//Stat
	var_so.data.stagedis23 = stagedis23;//Stat
	var_so.data.stagealt23 = stagealt23;//Stat
	var_so.data.stagespe23 = stagespe23;//Stat
	var_so.data.stagedur23 = stagedur23;//Stat
	var_so.data.stagedis33 = stagedis33;//Stat
	var_so.data.stagealt33 = stagealt33;//Stat
	var_so.data.stagespe33 = stagespe33;//Stat
	var_so.data.stagedur33 = stagedur33;//Stat
	var_so.data.stagedis43 = stagedis43;//Stat
	var_so.data.stagealt43 = stagealt43;//Stat
	var_so.data.stagespe43 = stagespe43;//Stat
	var_so.data.stagedur43 = stagedur43;//Stat
	var_so.data.stagedis53 = stagedis53;//Stat
	var_so.data.stagealt53 = stagealt53;//Stat
	var_so.data.stagespe53 = stagespe53;//Stat
	var_so.data.stagedur53 = stagedur53;//Stat
	var_so.data.gamefinished = gamefinished;
	var_so.data.keepplaying = keepplaying;
	var_so.data.infoboard1 = infoboard1;
	var_so.data.infoboard2 = infoboard2;
	var_so.data.infoboard3 = infoboard3;
	var_so.flush();
}

function loadSO() {//--------------PLAYER STATS
	cday = var_so.data.cday;
	cash = var_so.data.cash;
	lvlramp = var_so.data.lvlramp;
	lvlrh = var_so.data.lvlrh;
	lvlrf = var_so.data.lvlrf;
	lvlre = var_so.data.lvlre;
	lvlgl = var_so.data.lvlgl;
	lvlro = var_so.data.lvlro;
	lvlrp = var_so.data.lvlrp;
	//---------------Stage Stats
	stagedis13 = var_so.data.stagedis13;//Stat
	stagealt13 = var_so.data.stagealt13;//Stat
	stagespe13 = var_so.data.stagespe13;//Stat
	stagedur13 = var_so.data.stagedur13;//Stat
	stagedis23 = var_so.data.stagedis23;//Stat
	stagealt23 = var_so.data.stagealt23;//Stat
	stagespe23 = var_so.data.stagespe23;//Stat
	stagedur23 = var_so.data.stagedur23;//Stat
	stagedis33 = var_so.data.stagedis33;//Stat
	stagealt33 = var_so.data.stagealt33;//Stat
	stagespe33 = var_so.data.stagespe33;//Stat
	stagedur33 = var_so.data.stagedur33;//Stat
	stagedis43 = var_so.data.stagedis43;//Stat
	stagealt43 = var_so.data.stagealt43;//Stat
	stagespe43 = var_so.data.stagespe43;//Stat
	stagedur43 = var_so.data.stagedur43;//Stat
	stagedis53 = var_so.data.stagedis53;//Stat
	stagealt53 = var_so.data.stagealt53;//Stat
	stagespe53 = var_so.data.stagespe53;//Stat
	stagedur53 = var_so.data.stagedur53;//Stat
	gamefinished = var_so.data.gamefinished;
	keepplaying = var_so.data.keepplaying;
	infoboard1 = var_so.data.infoboard1;
	infoboard2 = var_so.data.infoboard2;
	infoboard3 = var_so.data.infoboard3;
}

// ---- layer "Control", frame 5 ("intro")
stop();

// ---- layer "Control", frame 6 ("mainmenu")
stop();

delete _root.bgm;
delete_root.onEnterFrame;

// ---- layer "Control", frame 8 ("shop")
_root.saveSO();
stop();

// ---- layer "Control", frame 9 ("stage")
stop();
stagelvl = 1;
stageshow = 2;
btndown = 0;
exitmenu = 0;
stageac = 0;
stageblock._alpha = 100;
sbtn1c.gotoAndStop(17);
sbtn2c.gotoAndStop(17);
sbtn3c.gotoAndStop(17);
sbtn4c.gotoAndStop(17);
sbtn5c.gotoAndStop(17);
for (j=1; j<=5; j++) {
	this["sbtn"+j+"b"]._alpha = 1*(120-Math.abs(this["sbtn"+j+"a"]._x-220));
}
if (_root._ymouse<100 && exitmenu<>1) {
	for (j=1; j<=5; j++) {
		this["sbtn"+j+"b"]._alpha = 1*(120-Math.abs(this["sbtn"+j+"a"]._x-_root._xmouse));
		if (this["sbtn"+j+"a"].hitTest(_root._xmouse, _root._ymouse)) {
			if (j<>stagelvl) {
				this["sbtn"+j+"c"].gotoAndPlay(2);
				stagelvl = j;
				stageshow = 1;
			}
		}
	}
}

function getStage(stg:Number) {
	stageac = 0;
	for (l=1; l<=5; l++) {
		if (_root["stagedis"+l+3]<>0) {
			stageac++;
		}
		if (_root["stagealt"+l+3]<>0) {
			stageac++;
		}
		if (_root["stagespe"+l+3]<>0) {
			stageac++;
		}
		if (_root["stagedur"+l+3]<>0) {
			stageac++;
		}
	}
	if (stageac>=16) {
		sbtn2d._visible = false;
		sbtn3d._visible = false;
		sbtn4d._visible = false;
		sbtn5d._visible = false;
	} else if (stageac>=10) {
		sbtn2d._visible = false;
		sbtn3d._visible = false;
		sbtn4d._visible = false;
	} else if (stageac>=6) {
		sbtn2d._visible = false;
		sbtn3d._visible = false;
	} else if (stageac>=2) {
		sbtn2d._visible = false;
	}
	if (stageac<_root["stageac"+stg]) {
		stageac = "( Complete "+(_root["stageac"+stg]-stageac)+" achievements to unlock )";
		stagehide._alpha = 70;
	} else {
		stageac = "";
		stagehide._alpha = 1;
	}
	acdisre.gotoAndStop(1);
	acaltre.gotoAndStop(2);
	acspere.gotoAndStop(3);
	acdurre.gotoAndStop(4);
	stagemc.gotoAndStop(stg);
	acdis.gotoAndStop(_root["stagedis"+stg+"3"]+1);
	acalt.gotoAndStop(_root["stagealt"+stg+"3"]+1);
	acspe.gotoAndStop(_root["stagespe"+stg+"3"]+1);
	acdur.gotoAndStop(_root["stagedur"+stg+"3"]+1);
	acdis1 = "Travel "+_root["stagedis"+stg+"1"]+" feet";
	acdis2 = "( "+_root["stagedis"+stg+"2"]+"$ )";
	acalt1 = "Fly up to "+_root["stagealt"+stg+"1"]+" feet";
	acalt2 = "( "+_root["stagealt"+stg+"2"]+"$ )";
	acspe1 = "Reach "+_root["stagespe"+stg+"1"]+" mph";
	acspe2 = "( "+_root["stagespe"+stg+"2"]+"$ )";
	acdur1 = "Glide for "+_root["stagedur"+stg+"1"]+" seconds";
	acdur2 = "( "+_root["stagedur"+stg+"2"]+"$ )";
	account = 0;
	if (_root["stagedis"+stg+"3"]<>0) {
		acdisre.gotoAndStop(5);
		account++;
	}
	if (_root["stagealt"+stg+"3"]<>0) {
		acaltre.gotoAndStop(5);
		account++;
	}
	if (_root["stagespe"+stg+"3"]<>0) {
		acspere.gotoAndStop(5);
		account++;
	}
	if (_root["stagedur"+stg+"3"]<>0) {
		acdurre.gotoAndStop(5);
		account++;
	}
	account = "( "+account+" / 4 )";
}
getStage(1);

this.onEnterFrame = function() {
	if (stageshow == 1 && stageblock._alpha<100) {
		stageblock._alpha += 50;
	} else if (stageshow == 1 && stageblock._alpha>=100) {
		getStage(stagelvl);
		stageblock._alpha = 80;
		stageshow = 2;
	} else if (stageshow == 2 && stageblock._alpha>0) {
		stageblock._alpha -= 10;
	} else if (stageshow == 2 && stageblock._alpha<=0) {
		stageshow = 0;
	}
};

this.onMouseMove = function() {
	if (_root._ymouse<100 && exitmenu<>1) {
		for (j=1; j<=5; j++) {
			this["sbtn"+j+"b"]._alpha = 1*(120-Math.abs(this["sbtn"+j+"a"]._x-_root._xmouse));
			if (this["sbtn"+j+"a"].hitTest(_root._xmouse, _root._ymouse)) {
				if (j<>stagelvl) {
					this["sbtn"+j+"c"].gotoAndPlay(2);
					stagelvl = j;
					stageshow = 1;
				}
			}
		}
	}
};

this.onMouseDown = function() {
	if (stagehide._alpha<=1 && exitmenu<>1) {
		btndown = 0;
		for (k=1; k<=5; k++) {
			if (this["sbtn"+k+"b"].hitTest(_root._xmouse, _root._ymouse, true)) {
				btndown = k;
			}
		}
		this["sbtn"+btndown+"b"]._visible = false;
		this["sbtn"+btndown+"c"].gotoAndStop(3);
	}
};

this.onMouseUp = function() {
	if (stagehide._alpha<=1 && exitmenu<>1) {
		if (btndown<>0) {
			this["sbtn"+btndown+"b"]._visible = true;
			this["sbtn"+btndown+"c"].gotoAndPlay(4);
		}
		if (this["sbtn"+btndown+"b"].hitTest(_root._xmouse, _root._ymouse, true)) {
			exitmenu = 1;
			_root.lvlramp = btndown;
			if (_root.menuexit == true) {
				delete_root.menuexit;
			}
			_root.bgm.theme.stop();
			delete _root.bgm.theme;
			_root.bgm.removeMovieClip();
			_root.fade(true,true,"dayintro");
		}
	}
};

// ---- layer "Control", frame 10 ("dayintro")
_root.stopAllSounds();
_root.cday++;
trace("cday = " + _root.cday);
stop();

// ---- layer "Control", frame 11 ("game")
stop();
maxdepth = 0;
//stats and vars
cloudcount = 1;
camvx = 0;
camvy = 0;
rdis = "$0";
rdis2 = 0;
rdur = "0.00";
rdur2 = 0;
rdur3 = 0;
ralt = "$0";
ralt2 = 0;
rtotal = "$0";
rtotal2 = 0;
rtotal3 = 0;
boardstate = 0;
duration = 9.5;
maxaltitude = 0;
maxspeed = 0;
finishclick = false;
oldx = 0;
oldy = 0;
distance = 0;
//---------------Var for HUD3----------
spehud = 0;
reshud = 0;
althud = 0;
dishud = 0;
//---------------Var for finish board-----
speboard = 0;
altboard = 0;
disboard = 0;
durboard = 0;
//------------------Achievements completed
_root.achdis = 0;
_root.achalt = 0;
_root.achspe = 0;
_root.achdur = 0;
//------------------RAMP
rampheight = _root.srh[_root.lvlrh-1];//height of ramp above sea level
fardistance = 40;//distance at which ramp angle is evaluated
farratio = 0;//var
farx = 0;//var
fary = 0;//var
overramp = "";//var
nextramp = "";//var
kickangle = 1;//NOT IN USE//should be used to force angle of ramp4 on higher speed
slide = _root.srf[_root.lvlrf-1];//player sliding speed on ramps
//------------------AIR
kickthrust = 0;//WORKIN - NOT IN USE//number of frames after jumping when player cannot control but receive no friction
gravity = 0.4;//gravity
sink = Math.atan(_root.sgl[_root.lvlgl-1])/(Math.PI/180);
drag = 0;//Var - Decrease in speed due to angle
airfriction = _root.sre[_root.lvlre-1];//friction applied when flying
glidespeed = _root.sgl2[_root.lvlgl-1];//speed at which glide = 1
fallspeed = _root.sgl1[_root.lvlgl-1];//speed at which glide = 0
minglide = 0;//WORKING ? - NOT IN USE//minimum gliding ratio -- interfere with glideadjust
glideratio = 0;//var
glidetarget = 0;//var
glideadjust = 0.05;//max change per frame on glideratio
rocketfuel = _root.srp[_root.lvlrp-1];
rocketpower = _root.sro[_root.lvlro-1];
spin = 1;//player rotation speed when flying
//------------------SEA
seabouncespeed = 20;//minimum speed required to bounce
seabounceminangle = 75;//min rotation tolerance to bounce
seabouncemaxangle = 105;//max rotation tolerance to bounce
seabouncefriction = 0.8;//vx friction on bounce
seabouncepower = -0.18;//bounce power on vy
maxseabounce = -18;
//seaspinspeed = 100;//speed at which seabouncespin = max value
seafriction = 0.91;//friction once player enters the sea
seagravity = -0.9;//floating in the sea
//------------------END
//player vars
player._x = 0;
player._y = 200;
vx = 0;//x speed
vy = 0;//y speed
vdir = 0;//(control) vector direction
vmag = 5;//+50*slide;//(control) vector magnitude
player.jumped = false;//player has jumped
player.landed = false;//player has entered sea
player.finished = false;//player finished (stopped in sea)
//-----------SET CLOUDS----
for (j=1; j<7; j++) {
	_root["cloud"+j]._x = Math.random()*900-300;
	_root["cloud"+j]._y = Math.random()*1000-600;
	_root["cloud"+j]._alpha = 40+Math.random()*70;
	if (_root["cloud"+j]._y>_root.sea._y) {
		_root["cloud"+j]._y = _root.sea._y+Math.random()*600+50;
	}
}
//----------SET RAMPS------
ramp2.gotoAndStop(_root.lvlramp);//ramp level
gfxramp2.gotoAndStop(_root.lvlramp);//ramp level
ramp1._x = player._x-300;
ramp1._y = player._y+4525;
ramp2._x = ramp1._x+ramp1._width-1.5;
ramp2._y = ramp1._y;
ramp3._x = ramp2._x+ramp2._width-1.5;
ramp3._y = ramp2._y+ramp2._width-1.5;
ramp4._x = ramp3._x+ramp3._width-1.5;
ramp4._y = ramp3._y;
sea._x = ramp1._x;
sea._y = ramp3._y-ramp3._height+150+rampheight;
fboard.gotoAndStop(1);
hudc.hud.gotoAndStop(lvlgl+1);
splash.stop();
sky.stop();
//---------------SFX-
player.slidesfx = new Sound(player);
player.jumpsfx = new Sound(player);
player.slidesfx.attachSound("slide3.wav",false);
player.jumpsfx.attachSound("jump.wav",false);
player.jumpsfx.onSoundComplete = function() {
	delete player.jumpsfx;
};
player.slidesfx.start(0,0);
hint._visible = false;

function loopslide() {
	if (player.slidesfx.position>3150) {
		player.slidesfx.stop();
		player.slidesfx.start(0.65,0);
		//player.slidesfx.position = 1000;
	}
}

this.onEnterFrame = function() {
	loopslide();
	skybg._alpha = 100*speed/200;
	oldx = player._x;
	oldy = player._y;
	curheight = (sea._y-player._y)/50;
	sky.gotoAndStop(Math.round(curheight*0.75)-50);
	if (speed>maxspeed) {
		maxspeed = speed;
	}
	if (player.jumped<>true) {
		getRamp();
	} else if (player.landed<>true) {
		getAir();
		distance = (player._x-(ramp4._x+ramp4._width))/50;
		if (curheight>maxaltitude) {
			maxaltitude = curheight;
		}
	} else if (player.finished<>true) {
		getSea();
		if (curheight<maxdepth) {
			maxdepth = curheight;
		}
		distance = (player._x-(ramp4._x+ramp4._width))/50;
		if (curheight>=0) {
			player._y = sea._y;
			if (vx<=0.7) {
				player.finished = true;
				hudc.gotoAndPlay("hide");
				fboard.gotoAndPlay(1);
				//----check for achievements
				if (_root["stagedis"+_root.lvlramp+"3"] == 0 && distance>=_root["stagedis"+_root.lvlramp+"1"]) {
					//Distance achieved
					_root.achdis = 1;
					_root["stagedis"+_root.lvlramp+"3"] = 1;
				}
				if (_root["stagealt"+_root.lvlramp+"3"] == 0 && maxaltitude/2>=_root["stagealt"+_root.lvlramp+"1"]) {
					//Altitude achieved
					_root.achalt = 1;
					_root["stagealt"+_root.lvlramp+"3"] = 1;
				}
				if (_root["stagespe"+_root.lvlramp+"3"] == 0 && maxspeed>=_root["stagespe"+_root.lvlramp+"1"]) {
					//Speed achieved
					_root.achspe = 1;
					_root["stagespe"+_root.lvlramp+"3"] = 1;
				}
				if (_root["stagedur"+_root.lvlramp+"3"] == 0 && ((duration-9.5)/0.6)>=_root["stagedur"+_root.lvlramp+"1"]) {
					//Duration achieved
					_root.achdur = 1;
					_root["stagedur"+_root.lvlramp+"3"] = 1;
				}
				maxdepth = Math.round(Math.abs(maxdepth));
				//----End
				distance *= 0.4;
			}
		}
	} else if (_root.boarddone == true) {
		//getBoard();
	}
	getCloud();
	//speed = (vmag*glideratio)+(vx*(1-glideratio))
	if (player.finished<>true) {
		speed = Math.sqrt(Math.pow(player._x-oldx, 2)+Math.pow(player._y-oldy, 2));
		spehud = Math.round(speed);//HUD3 var
		althud = Math.round(curheight*10)/10;//HUD3 var
		if (String(althud).indexOf(".")<0) {
			althud = althud+".0";
		}
		dishud = Math.round(distance);//HUD3 var
	}
	if (drag>=0) {
		reshud = Math.round(drag*99.5)+"%";//HUD3 var
	} else {
		reshud = "0%";
	}
	movecam(150,220,2.5,0.7,0.6);
};

var keyListener:Object = new Object();
keyListener.onKeyDown = function() {
	if (player.finished == true && finishclick<>true) {
		_root.cash += Math.round((Math.round(distance)+Math.round(maxaltitude))*Math.round(duration)/10);
		finishclick = true;
		_root.fade(true,true,"shop");
	}
};
Key.addListener(keyListener);

this.onMouseDown = function() {
	if (player.finished == true && finishclick<>true) {
		_root.cash += Math.round((Math.round(distance)+Math.round(maxaltitude))*Math.round(duration)/10);
		finishclick = true;
		_root.fade(true,true,"shop");
	}
};

// ---- layer "Control", frame 12 ("achievements")
stop();
timer = 40;
idle = true;
fading = false;
cashchg = 0;
_root.casha = "0 $";
_root.cashb = 0;
cashc = 0;
cashvy = 0;
achcash1.gotoAndStop(1);
achcash1._y = -50;
achdis1.gotoAndStop(1);
achdis1._visible = false;
achalt1.gotoAndStop(1);
achalt1._visible = false;
achspe1.gotoAndStop(1);
achspe1._visible = false;
achdur1.gotoAndStop(1);
achdur1._visible = false;


this.onEnterFrame = function() {
	if (cashchg == 1) {
		cashvy = 0;
		_root.cashb = _root.cash-_root.rewarda;
		_root.casha = Math.round(_root.cashb)+" $";
		achcash1._y = 6;
		achcash1.gotoAndPlay(2);
		cashchg = 2;
		cashc = (_root.cash-_root.cashb)/25;
	} else if (cashchg == 2) {
		_root.cashb += cashc;
		if (_root.cash<=_root.cashb) {
			_root.cashb = _root.cash;
			idle = true;
			cashchg = 3;
			ttimer = 40;
		}
		_root.casha = Math.round(_root.cashb)+" $";
	} else if (cashchg == 3) {
		ttimer--;
		if (ttimer<=0) {
			cashchg = 4;
		}
	} else if (cashchg == 4) {
		cashvy += 0.4;
		achcash1._y -= cashvy;
		if (achcash1._y<=-50) {
			achcash1.gotoAndStop(1);
			achcash1._y = -50;
			cashchg = 0;
		}
	}
	if (fading<>true) {
		if (timer>0) {
			timer--;
		} else {
			if (idle == true) {
				if (_root.achdis == 1) {
					_root.reward = _root["stagedis"+_root.lvlramp+"2"]+" $";
					_root.rewarda = _root["stagedis"+_root.lvlramp+"2"];
					achdis1._visible = true;
					achdis1.gotoAndPlay(1);
					idle = false;
				} else if (_root.achalt == 1) {
					_root.reward = _root["stagealt"+_root.lvlramp+"2"]+" $";
					_root.rewarda = _root["stagealt"+_root.lvlramp+"2"];
					achalt1._visible = true;
					achalt1.gotoAndPlay(1);
					idle = false;
				} else if (_root.achspe == 1) {
					_root.reward = _root["stagespe"+_root.lvlramp+"2"]+" $";
					_root.rewarda = _root["stagespe"+_root.lvlramp+"2"];
					achspe1._visible = true;
					achspe1.gotoAndPlay(1);
					idle = false;
				} else if (_root.achdur == 1) {
					_root.reward = _root["stagedur"+_root.lvlramp+"2"]+" $";
					_root.rewarda = _root["stagedur"+_root.lvlramp+"2"];
					achdur1._visible = true;
					achdur1.gotoAndPlay(1);
					idle = false;
				} else if (fading<>true) {
					fading = true;
					_root.fade(true,true,"shop");
					delete timer;
					delete idle;
					delete cashchg;
					delete _root.casha;
					delete _root.cashb;
					delete cashc;
					delete cashvy;
				}
			}
		}
	}
};

// ---- layer "Control", frame 13 ("outro")
stop();

// ---- layer "Control", frame 15 ("cleardata")
stop();

// ---- layer "BGM", frame 8
_root.attachMovie("BGM","bgm",_root.getNextHighestDepth());
_root.bgm._x = -100;
_root.bgm.theme = new Sound(bgm);
_root.bgm.theme.attachSound("shop.wav",false);
_root.bgm.theme.start(0,0);
_root.bgm.theme.onSoundComplete = function() {
	_root.bgm.theme.start(0,0);
};

// ---- layer "BGM", frame 11
_root.attachMovie("BGM","bgm",_root.getNextHighestDepth());
_root.bgm._x = -100;
_root.bgm.theme = new Sound(bgm);
_root.bgm.theme.attachSound("beat",false);
_root.bgm.theme.onSoundComplete = function() {
	_root.bgm.theme.start(0,0);
};

// ---- on instance "optmenu" of "!System/!optMenu/optmenuanim", layer "optMenu", frame 7
onClipEvent (load) {
	this.count = 0;
	this.a = "hide";
}


onClipEvent (enterFrame) {
	if (this.hitTest(_root._xmouse, _root._ymouse, true)) {
		this.a = "show";
	} else {
		this.a = "hide";
	}
	if (this.a == "show" && this.count<14) {
		this.count++;
	} else if (this.a == "hide" && this.count>0) {
		_root.optmenu.menu.backmc.gotoAndStop(1);
		this.count--;
	}
	this.gotoAndStop(2+this.count);
}

// ---- layer "HUD", frame 12
achalt1.stop();
achspe1.stop();
achdur1.stop();
achdis1.stop();
