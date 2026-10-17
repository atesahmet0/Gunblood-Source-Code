// Recovered Gunblood AVM1 gameplay script, archived SWF / DefineSprite 499 / DoAction 2.
// Decompiled with FFDec 18.5.0; analyst-assigned names and register-signature repairs.
// Dynamic movie/state names remain unchanged. See RECOVERY.md and recovery-map.json.
// This is a source derivative; it is not the original author project.

// Original timeline function: ">%"
function initializeRound()
{
   _root._quality = _root["break"];
   bonusgo = 0;
   bonusfail = 0;
   botcount = 0;
   botbreak = 0;
   set(" try",0);
   birdgo = 0;
   knives = 2;
   fecount = 0;
   set("implements",0);
   if(_root["["] == 1)
   {
      chgo = _root["[\""];
      if(chgo[5] > 0)
      {
         _root.gamelevel = chgo[5];
         _root.bonuslevel = chgo[6];
         _root["3%"] = 0;
         _root["throw"] = 0;
         _root["`$"] = 0;
         _root.totalscore = 0;
      }
      if(chgo[2] > 0)
      {
         char.arm1.armin.gun.gunsight.gotoAndStop(2);
      }
      _root[";!"] = new Array();
   }
   else
   {
      chgo = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
   }
   if(_root.gamelevel == 1)
   {
      _root.allsounds[88].start();
      _root.pausebox.pauseboxin.gotoAndStop(7);
      _parent._xscale = 50;
      _parent._yscale = 50;
      set("function",1);
      set(">\"",4);
   }
   bottle1._visible = 0;
   eval("var ")._visible = 0;
   eval("\'%")._visible = 0;
   birdshad1._visible = 0;
   knifeshad1._visible = 0;
   birdshad1.wing1.gotoAndStop(15);
   birdshad1.wing2.gotoAndStop(15);
   if(_root.gamelevel == 3 && _root.bonuslevel == 0)
   {
      bonusgo = 1;
      _root.bonuslevel += 1;
      _parent._y += 50;
      set("implements",70);
      char._x -= 310;
      char2._x += 310;
      charshad._x -= 310;
      char2shad._x += 310;
      eval("\"$")._x -= 310;
      eval("try ")._x += 310;
      _root.pausebox.pauseboxin.gotoAndStop(3);
   }
   if(_root.gamelevel == 5 && _root.bonuslevel == 1)
   {
      bonusgo = 2;
      _root.bonuslevel += 1;
      _parent._x -= 20;
      _parent._y += 20;
      set("implements",35);
      char._x -= 180;
      char2._x += 180;
      charshad._x -= 180;
      char2shad._x += 180;
      eval("\"$")._x -= 180;
      eval("try ")._x += 180;
      eval("var ")._visible = 1;
      eval("\'%")._visible = 1;
      _root.pausebox.pauseboxin.gotoAndStop(4);
      char2.gotoAndPlay(295);
      char2.arm1.armin.gotoAndPlay(165);
      char2.arm2.armin.gotoAndPlay(191);
      char2shad.arm1.armin.gotoAndPlay(165);
      char2shad.arm2.armin.gotoAndPlay(191);
      char2.arm1.armin.gun._visible = 0;
      char2shad.arm1.armin.gun._visible = 0;
      override = new Array(0,402,467,503,375,440,560);
      final = new Array(0,-55,-120,-145,10,80,-220);
      bottle1._visible = 1;
      bottle1._x = override[1];
      bottle1._y = final[1];
      bottle1.vy = 0;
      var bo = 2;
      while(bo <= 6)
      {
         bottle1.duplicateMovieClip("bottle" + bo,12500 + bo);
         var bottle = eval("bottle" + bo);
         bottle._x = override[bo];
         bottle._y = final[bo];
         bottle.vy = 0;
         bo++;
      }
      bottle6._rotation += 165;
      bot1r = new Array(0,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,0);
      bot1x = new Array(402,402,403,404,405,406,407,408,407,406,405,404,403,402,401,400,399,398,397,396,397,398,399,400,401,402,402);
      bot1y = new Array(-55,-55,-59,-63,-67,-71,-74,-77,-80,-83,-85,-87,-89,-91,-86,-81,-76,-71,-68,-65,-62,-59,-58,-57,-56,-55,-55);
      bot2r = new Array(0,2,2,2,2,2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,2,2,2,2,2,2,2,0);
      bot2x = new Array(467,467,469,471,473,475,477,475,473,471,469,467,465,463,461,459,457,455,453,455,457,459,461,463,465,467,467);
      bot2y = new Array(-120,-119,-118,-117,-116,-115,-116,-117,-118,-119,-120,-119,-118,-117,-116,-115,-114,-113,-114,-115,-116,-117,-118,-119,-120,-120);
      bot3x = new Array(503,509,515,521,527,529,531,533,535,535,535,535,535,529,523,517,511,509,507,505,503,503,503,503,503,503);
      bot3y = new Array(-145,-140,-135,-130,-125,-121,-117,-113,-109,-108,-107,-106,-105,-110,-115,-120,-125,-128,-131,-134,-137,-139,-141,-143,-145,-145);
      bot4r = new Array(0,-1,-1,-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,0);
      bot4x = new Array(375,374,373,372,371,372,373,374,375,376,377,378,379,380,381,382,383,382,381,380,379,378,377,376,375,375);
      bot4y = new Array(10,4,-2,-6,-8,-10,-4,2,8,14,20,26,32,38,42,46,50,54,58,52,46,38,30,20,10,10);
   }
   if(_root.gamelevel == 7 && _root.bonuslevel == 2)
   {
      bonusgo = 3;
      _root.bonuslevel += 1;
      _parent._y += 50;
      set("implements",50);
      char._x -= 310;
      char2._x += 310;
      charshad._x -= 310;
      char2shad._x += 310;
      eval("\"$")._x -= 310;
      eval("try ")._x += 310;
      char2.arm1.armin.gotoAndStop(45);
      char2.arm1.armin._rotation -= 160;
      birdshad1._visible = 1;
      var bi = 1;
      while(bi <= 6)
      {
         attachMovie("birdclip","birdclip" + bi,12400 + bi);
         var birdclip = eval("birdclip" + bi);
         birdclip._x = 300 + Math.random() * 300;
         birdclip._y = 75 + Math.random() * 50;
         birdclip._xscale = 22;
         birdclip._yscale = 22;
         birdclip.drop = 0;
         birdclip.vx = -4 - Math.random() * 9;
         birdclip.vy = -3 - Math.random() * 7;
         birdclip.wing1.gotoAndStop(15);
         birdclip.wing2.gotoAndStop(15);
         birdclip.shad = 0;
         if(bi > 1)
         {
            birdshad1.duplicateMovieClip("birdshad" + bi,12300 + bi);
            var birdshad = eval("birdshad" + bi);
            birdshad._x = birdclip._x;
            birdshad._y = birdclip._y + 12;
            birdshad.wing1.gotoAndStop(15);
            birdshad.wing2.gotoAndStop(15);
            birdshad.shad = 1;
         }
         bi++;
      }
      birdshad1._x = birdclip1._x;
      birdshad1._y = birdclip1._y + 12;
      birdshad1.wing1.gotoAndStop(15);
      birdshad1.wing2.gotoAndStop(15);
      birdshad1.shad = 1;
      _root.pausebox.pauseboxin.gotoAndStop(5);
   }
   if(_root.gamelevel == 9 && _root.bonuslevel == 3)
   {
      bonusgo = 4;
      _root.bonuslevel += 1;
      _parent._y += 20;
      set("implements",35);
      char._x -= 180;
      char2._x += 180;
      charshad._x -= 180;
      char2shad._x += 180;
      eval("\"$")._x -= 180;
      eval("try ")._x += 180;
      _root.pausebox.pauseboxin.gotoAndStop(6);
   }
   set("\"",0);
   set("<$",new Object());
   char.hatgo = 0;
   char.hatx = 0;
   char.haty = 0;
   char.headx = -10 - random(15);
   char.heady = -10 - random(15);
   char.hit = 0;
   char.life = 100;
   char.shotgo = 0;
   char.side = -1;
   char.xvel = 0;
   char.inplay = 0;
   char.shad = charshad;
   char.pos = "standing";
   char.shotdelay = 0;
   char.headfly = 0;
   char.hitstaken = 0;
   char.accuracy = 0;
   eval("\"$")._visible = 0;
   char2.hatgo = 0;
   char2.headx = -10 - random(15);
   char2.heady = -10 - random(15);
   char2.hit = 0;
   char2.life = 100;
   char2.shotgo = 0;
   char2.side = 1;
   char2.xvel = 0;
   char2.inplay = 0;
   char2.shad = char2shad;
   char2.pos = "standing";
   char2.shotdelay = 0;
   char2.headfly = 0;
   char2.hitstaken = 0;
   char2.accuracy = 0;
   eval("try ")._visible = 0;
   charshad.side = -1;
   char2shad.side = 1;
   set(" use",1);
   setmouse = 1;
   gametime = 0;
   rescale = 0;
   countsound = 0;
   gbcount = 0;
   set("get",0);
   minscale = 75;
   scaledir = -1;
   bottlego = 0;
   set("else ",new Array(0,0,15,15,0,15,20,25,5,20,10,0));
   set("]!",new Array(0,2,3,6,4,7,10,8,9,5,1));
   compspeed = 5 + _root.gamelevel * 5;
   compnum2 = _root.curchar;
   compnum = eval("]!")[_root.gamelevel];
   if(compnum == compnum2 || _root["null "])
   {
      compnum = eval("]!")[_root.gamelevel + 1];
      _root["null "] = 1;
   }
   if(bonusgo > 0)
   {
      compnum = 11;
   }
   char.shotstaken = 0;
   char2.shotstaken = 0;
   char.arm2.armin.gun._visible = 0;
   char.shad.arm2.armin.gun._visible = 0;
   char2.arm2.armin.gun._visible = 0;
   char2.shad.arm2.armin.gun._visible = 0;
   char.xspot = char._x;
   char2.xspot = char2._x;
   eval("do ")._visible = 0;
   eval(",%")._visible = 0;
   native();
   eval("\"$").gotoAndStop(char.hat._currentframe);
   eval("try ").gotoAndStop(char2.hat._currentframe);
   gameon = 0;
   compgo = -65 - random(30);
   starttime = getTimer();
   set("]$",char2.arm1._rotation);
   _parent._parent.pausebox._visible = 0;
   _root["switch"].include._x = 50;
   _root["extends"].include._x = 50;
   bloodclips = new Array();
   bloods = new Array();
   var b = 0;
   while(b < 100)
   {
      attachMovie("blood","blood" + b,1601 + b);
      var blood = eval("blood" + b);
      bloods.push(blood);
      blood._x = -1000;
      blood._y = -1000;
      blood._visible = 0;
      b++;
   }
   set("##",new Array());
   eval("##").standing = Standing;
   eval("##").leaning = Leaning;
   eval("##").crouch = Crouch;
   eval("##").ground = Ground;
   eval("##").facedown = Facedown;
   eval("##").dead = Dead;
   if(_root.sbloods.length > 0)
   {
      eval("default")(char);
   }
   if(_root.drawgame == 1)
   {
      eval("default")(char2);
   }
   csounds1 = new Array(48,49,50,51);
   csounds2 = new Array(52,53,54,55);
   csounds3 = new Array(56,57,58);
   csounds8 = new Array(80,81,82,83);
   csounds5 = new Array(63,64,65);
   csounds7 = new Array(59,60,61,62);
   csounds4 = new Array(84,85,86,87);
   csounds6 = new Array(66,67,68,69);
   csounds9 = new Array(70,71,72);
   csounds10 = new Array(73,74,75);
   csounds11 = new Array(76,77,78,79);
   csounds = new Array(0,csounds1,csounds2,csounds3,csounds4,csounds5,csounds6,csounds7,csounds8,csounds9,csounds10,csounds11);
}

// Original timeline function: "native"
function applyCharacterAppearance()
{
   char.hat.gotoAndStop(compnum2);
   char.head.gotoAndStop(compnum2);
   char.arm1.armin.uparm.gotoAndStop(compnum2);
   char.arm1.armin.lowarm.gotoAndStop(compnum2);
   char.arm2.armin.uparm.gotoAndStop(compnum2);
   char.arm2.armin.lowarm.gotoAndStop(compnum2);
   char.upbody.gotoAndStop(compnum2);
   char.lowbody.gotoAndStop(compnum2);
   char.upleg1.gotoAndStop(compnum2);
   char.lowleg1.gotoAndStop(compnum2);
   char.upleg2.gotoAndStop(compnum2);
   char.lowleg2.gotoAndStop(compnum2);
   char.foot1.gotoAndStop(compnum2);
   char.foot2.gotoAndStop(compnum2);
   char.holster.gotoAndStop(compnum2);
   char2.hat.gotoAndStop(compnum);
   char2.head.gotoAndStop(compnum);
   char2.arm1.armin.uparm.gotoAndStop(compnum);
   char2.arm1.armin.lowarm.gotoAndStop(compnum);
   char2.arm2.armin.uparm.gotoAndStop(compnum);
   char2.arm2.armin.lowarm.gotoAndStop(compnum);
   char2.upbody.gotoAndStop(compnum);
   char2.lowbody.gotoAndStop(compnum);
   char2.upleg1.gotoAndStop(compnum);
   char2.lowleg1.gotoAndStop(compnum);
   char2.upleg2.gotoAndStop(compnum);
   char2.lowleg2.gotoAndStop(compnum);
   char2.foot1.gotoAndStop(compnum);
   char2.foot2.gotoAndStop(compnum);
   char2.holster.gotoAndStop(compnum);
   charshad.hat.gotoAndStop(compnum2);
   charshad.head.gotoAndStop(compnum2);
   charshad.arm1.armin.uparm.gotoAndStop(compnum2);
   charshad.arm1.armin.lowarm.gotoAndStop(compnum2);
   charshad.arm2.armin.uparm.gotoAndStop(compnum2);
   charshad.arm2.armin.lowarm.gotoAndStop(compnum2);
   charshad.upbody.gotoAndStop(compnum2);
   charshad.lowbody.gotoAndStop(compnum2);
   charshad.upleg1.gotoAndStop(compnum2);
   charshad.lowleg1.gotoAndStop(compnum2);
   charshad.upleg2.gotoAndStop(compnum2);
   charshad.lowleg2.gotoAndStop(compnum2);
   charshad.foot1.gotoAndStop(compnum2);
   charshad.foot2.gotoAndStop(compnum2);
   charshad.holster.gotoAndStop(compnum2);
   char2shad.hat.gotoAndStop(compnum);
   char2shad.head.gotoAndStop(compnum);
   char2shad.arm1.armin.uparm.gotoAndStop(compnum);
   char2shad.arm1.armin.lowarm.gotoAndStop(compnum);
   char2shad.arm2.armin.uparm.gotoAndStop(compnum);
   char2shad.arm2.armin.lowarm.gotoAndStop(compnum);
   char2shad.upbody.gotoAndStop(compnum);
   char2shad.lowbody.gotoAndStop(compnum);
   char2shad.upleg1.gotoAndStop(compnum);
   char2shad.lowleg1.gotoAndStop(compnum);
   char2shad.upleg2.gotoAndStop(compnum);
   char2shad.lowleg2.gotoAndStop(compnum);
   char2shad.foot1.gotoAndStop(compnum);
   char2shad.foot2.gotoAndStop(compnum);
   char2shad.holster.gotoAndStop(compnum);
}

// Original timeline function: "use "
function updatePlayerAim()
{
   set("8$",char._xmouse);
   if(char.pos == "standing")
   {
      set(">",char._ymouse);
   }
   else if(char.pos == "leaning")
   {
      set(">",char._ymouse - 25);
   }
   else if(char.pos == "crouch")
   {
      set(">",char._ymouse - 50);
   }
   else if(char.pos == "dead")
   {
      set(">",char._ymouse - 125);
   }
   else
   {
      set(">",char._ymouse - 100);
   }
   set("!$",Math.atan2(eval(">"),eval("8$")));
   set("6#",eval("!$"));
   set("!$",eval("!$") * 57);
   set("static",eval("!$") + (char.arm1._rotation - 71.5));
   set("static",eval("static") / 57);
   if(eval("!$") < -90)
   {
      set("!$",-90);
   }
   else if(eval("!$") > 75)
   {
      set("!$",75);
   }
   ax = Math.cos(eval("static"));
   ay = Math.sin(eval("static"));
   char.arm1.armin._rotation = eval("!$") - 75;
   charshad.arm1.armin._rotation = eval("!$") - 75;
   if(char._currentframe <= 100)
   {
      charframe = 65 - Math.ceil(eval("!$"));
      if(charframe > 100)
      {
         charframe = 100;
      }
      char.gotoAndStop(charframe);
   }
   updateAfterEvent();
}

// Original timeline function: "ThrowBot"
function ThrowBot()
{
   if(setmouse)
   {
      if(botcount < 6)
      {
         char2.arm2.armin.gotoAndPlay(140);
         if(bonusgo == 4)
         {
            char2.arm2.armin.bottle.bottlein.gotoAndStop(2);
         }
         botcount += 1;
      }
      else
      {
         char2.hitstaken = 1;
         finishRound();
      }
   }
}

// Original timeline function: "`"
function firePlayerShot()
{
   if(char.shotdelay == 0)
   {
      if(char.shotstaken < 6)
      {
         _root.allsounds[98 + compnum2].start();
         var soundIndex = 34 + random(11);
         _root.allsounds[soundIndex].start();
         _root.allsounds[soundIndex].setVolume(30 + random(20));
         _root.allsounds[132 + random(2)].start();
         var recoveredLocal1 = eval("_parent._parent.barrel1.ch" + (char.shotstaken + 2));
         recoveredLocal1.gotoAndStop(2);
         char.shotstaken += 1;
         if(chgo[4] == 1)
         {
            char.shotstaken -= 1;
         }
         _root[">#"] += 1;
         eval("do ")._visible = 1;
         eval("do ").ax = ax;
         eval("do ").ay = ay;
         char.shotdelay = 8;
         if(chgo[1] == 1)
         {
            char.shotdelay = 5;
         }
         eval("do ")._x = char._x + eval("do ").ax * 50;
         eval("do ")._y = char._y + eval("do ").ay * 50;
         eval("do ")._rotation = eval("static") - 5;
         if(char.pos == "ground" || char.pos == "facedown")
         {
            eval("do ")._y += 100;
         }
         else if(char.pos == "crouch")
         {
            eval("do ")._y += 25;
         }
         else if(char.pos == "leaning")
         {
            eval("do ")._y += 2;
         }
         char.shotgo = 1;
         char.arm1.armin.gun.flamein.gotoAndPlay(2);
         if(char.arm1.armin._currentframe == 45)
         {
            char.arm1.armin.gotoAndPlay(46);
         }
         else
         {
            char.arm1.armin.gotoAndPlay(31);
         }
         spawnSmoke(eval("do ")._x,eval("do ")._y);
         if(char.shotstaken == 6)
         {
            if(bonusgo > 0)
            {
               char2.hitstaken = 1;
               setmouse = 0;
               finishRound();
            }
         }
      }
      else
      {
         _root.allsounds[127].start();
         if(char2.shotstaken >= 6 && !_root.levelload._visible)
         {
            finishRound("draw");
         }
      }
   }
}

// Original timeline function: "Shoot2"
function Shoot2()
{
   if(char2.shotdelay == 0)
   {
      if(char2.shotstaken < 6)
      {
         _root.allsounds[98 + compnum].start();
         var soundIndex = 34 + random(11);
         _root.allsounds[soundIndex].start();
         _root.allsounds[soundIndex].setVolume(30 + random(20));
         _root.allsounds[132 + random(2)].start();
         var recoveredLocal1 = eval("_parent._parent.barrel2.ch" + (char2.shotstaken + 2));
         recoveredLocal1.gotoAndStop(2);
         char2.shotstaken += 1;
         var recoveredLocal2 = (280 - char2.arm1._rotation + 71.5 - char2.arm1.armin._rotation) * 0.017453292519943295;
         set("with",Math.cos(recoveredLocal2));
         set(" %",Math.sin(recoveredLocal2));
         compgo = -65 - Math.random() * (20 - _root.gamelevel);
         if(char2.pos == "ground" || char2.pos == "dead" || char2.pos == "facedown")
         {
            compgo -= 10 - random(10);
         }
         char2.shotdelay = 8 + (7 - _root.gamelevel) + random(9 - _root.gamelevel);
         eval(",%")._visible = 1;
         eval(",%").ax = eval("with");
         eval(",%").ay = eval(" %");
         eval(",%")._x = char2._x - eval(",%").ax * 50;
         if(char2.pos == "standing")
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50;
         }
         else if(char2.pos == "leaning")
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50 + 2;
         }
         else if(char2.pos == "crouch")
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50 + 25;
         }
         else if(char2.pos == "facedown")
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50 + 80;
         }
         else if(char2.pos == "dead")
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50 + 80;
         }
         else
         {
            eval(",%")._y = char2._y - eval(",%").ay * 50 + 80;
         }
         eval(",%")._rotation = 280 - char2.arm1.armin._rotation;
         char2.shotgo = 1;
         char2.arm1.armin.gun.flamein.gotoAndPlay(2);
         if(char2.arm1.armin._currentframe == 45)
         {
            char2.arm1.armin.gotoAndPlay(46);
         }
         else
         {
            char2.arm1.armin.gotoAndPlay(31);
         }
         spawnSmoke(eval(",%")._x,eval(",%")._y);
      }
      else if(char.shotstaken >= 6 && !_root.levelload._visible)
      {
         finishRound("draw");
      }
   }
}

// Original timeline function: "%"
function updateBottleThrowAnimation()
{
   var _loc2_ = char2.arm1.armin._currentframe;
   if(_loc2_ >= 165)
   {
      char2.arm1.armin.play();
   }
   _loc2_ = char2.arm2.armin._currentframe;
   if(_loc2_ >= 165)
   {
      char2.arm2.armin.play();
   }
   var _loc1_ = _loc2_ - 190;
   bottle1._x = bot1x[_loc1_];
   bottle1._y = bot1y[_loc1_];
   bottle1._rotation += bot1r[_loc1_];
   bottle2._x = bot2x[_loc1_];
   bottle2._y = bot2y[_loc1_];
   bottle2._rotation -= bot2r[_loc1_];
   bottle3._x = bot3x[_loc1_];
   bottle3._y = bot3y[_loc1_];
   bottle4._x = bot4x[_loc1_];
   bottle4._y = bot4y[_loc1_];
   bottle4._rotation += bot4r[_loc1_];
}

// Original timeline function: "@$"
function updateGameplay()
{
   if(eval("function") == 1)
   {
      _parent._xscale += eval(">\"");
      _parent._yscale += eval(">\"");
      set(">\"",eval(">\"") - 0.15);
      if(_parent._xscale >= 100)
      {
         _parent._xscale = 100;
         _parent._yscale = 100;
         set("function",0);
      }
   }
   if(rescale == 1)
   {
      updateCameraScale();
   }
   if(char.shotgo == 1)
   {
      updatePlayerProjectile();
   }
   if(char2.shotgo == 1)
   {
      updateOpponentProjectile();
   }
   char._x += char.xvel;
   char.shad._x += char.xvel;
   char.xvel *= 0.8;
   if(Math.abs(char.xvel) < 0.2)
   {
      char.xvel = 0;
   }
   char2._x += char2.xvel;
   char2.shad._x += char2.xvel;
   char2.xvel *= 0.8;
   if(Math.abs(char2.xvel) < 0.2)
   {
      char2.xvel = 0;
   }
   if(gameon == 1)
   {
      if(char.pos != "dead" && char2.pos != "dead")
      {
         updateOpponentAim();
      }
   }
   else
   {
      updateCountdown();
   }
   if(char2.hatgo == 1)
   {
      updateOpponentHat();
   }
   if(char.hatgo == 1)
   {
      updatePlayerHat();
   }
   if(char2.headfly == 1)
   {
      updateDetachedHead(char2);
   }
   if(char.headfly == 1)
   {
      updateDetachedHead(char);
   }
   if(char.shotdelay > 0)
   {
      char.shotdelay -= 1;
   }
   var _loc2_ = char._currentframe;
   if(_loc2_ > 100 && _loc2_ != 294 && _loc2_ != 280 && _loc2_ != 252 && _loc2_ != 227 && _loc2_ != 217 && _loc2_ != 183 && _loc2_ != 175 && _loc2_ != 125)
   {
      char.play();
      char.inplay = 1;
   }
   else
   {
      char.inplay = 0;
   }
   _loc2_ = char2._currentframe;
   if(_loc2_ > 100 && _loc2_ != 294 && _loc2_ != 280 && _loc2_ != 252 && _loc2_ != 227 && _loc2_ != 217 && _loc2_ != 183 && _loc2_ != 175 && _loc2_ != 125)
   {
      char2.play();
      char2.inplay = 1;
   }
   else
   {
      char2.inplay = 0;
   }
   if(bonusgo == 2 && eval(" try") == 0)
   {
      updateBottleThrowAnimation();
   }
   if(bloodclips.length > 0)
   {
      updateBloodParticles();
   }
   if(eval("^$").length)
   {
      updateBodyChunks();
   }
   if(bottlego == 1)
   {
      updateThrownBottle();
   }
   if(eval(" try") == 1)
   {
      updateLooseBottles();
   }
   if(birdgo == 1)
   {
      updateBirds();
   }
   if(chgo[2] == 1)
   {
      if(char.life > 0 && setmouse == 1 && eval("!$") < 60)
      {
         drawAimGuide();
      }
      else
      {
         eval("%#").clear();
      }
   }
   charshad.gotoAndStop(char._currentframe);
   char2shad.gotoAndStop(char2._currentframe);
   charshad.arm1.armin.gotoAndStop(char.arm1.armin._currentframe);
   char2shad.arm1.armin.gotoAndStop(char2.arm1.armin._currentframe);
}

// Original timeline function: "9%"
function drawAimGuide()
{
   this.createEmptyMovieClip("%#",19080);
   eval("%#").lineStyle(1,16711680,35);
   var _loc3_ = char._x;
   var _loc2_ = char._y;
   if(char.pos == "facedown")
   {
      _loc3_ -= 35 * char.side;
      _loc2_ += 90;
      eval("%#")._rotation = 1;
   }
   else if(char.pos == "ground")
   {
      _loc3_ += 50 * char.side;
      _loc2_ += 105;
   }
   else if(char.pos == "crouch")
   {
      _loc2_ += 40;
      eval("%#")._rotation = 1;
   }
   else if(char.pos == "leaning")
   {
      _loc3_ -= 20 * char.side;
      _loc2_ += 10;
      eval("%#")._rotation = 2;
   }
   else if(char.arm1.armin._currentframe > 40)
   {
      _loc3_ -= 15 * char.side;
      _loc2_ -= 10;
      eval("%#")._rotation = 1.5;
   }
   else
   {
      eval("%#")._rotation = 0;
   }
   _loc3_ += ax * 60;
   _loc2_ += ay * 60;
   eval("%#").moveTo(_loc3_,_loc2_);
   eval("%#").lineTo(_loc3_ + ax * 2000,_loc2_ + ay * 2000);
}

// Original timeline function: " else"
function applyFaceDownHeadHit(target,projectile,hitX,hitY,side,stepIndex)
{
   if(bonusgo == 4)
   {
      if(random(2) == 0)
      {
         target.head.knife2.gotoAndStop(2);
      }
      else
      {
         target.head.knife3.gotoAndStop(2);
      }
   }
   set("2#",40 + random(30));
   if(bonusgo == 0 || target.side == 1)
   {
      if(target.life - eval("2#") > 0)
      {
         target.arm1.armin.uparm.armblood2.gotoAndStop(2);
         _root.allsounds[15 + random(9)].start();
      }
      else
      {
         if(random(2) == 0)
         {
            target.head.headin.gotoAndStop(2);
            target.shad.head.headin.gotoAndStop(2);
         }
         else
         {
            target.head.headin.gotoAndStop(3);
            target.shad.head.headin.gotoAndStop(3);
         }
         spawnBodyChunks(projectile._x,projectile._y,side);
      }
   }
   target.upbody.bodyblood5.gotoAndStop(2);
   set(" \"",1);
   target.dpos = "facedown";
   target.xvel = 2 * target.side;
}

// Original timeline function: ";$"
function applyHeadHitVariant1(target,projectile,hitX,hitY,side,stepIndex)
{
   if(bonusgo == 4)
   {
      target.head.knife2.gotoAndStop(2);
   }
   if(target.pos == "crouch")
   {
      target.gotoAndPlay(184);
   }
   else
   {
      target.gotoAndPlay(101);
   }
   if(bonusgo == 0 || target.side == 1)
   {
      spawnBodyChunks(projectile._x,projectile._y,side);
      if(random(2) == 0)
      {
         target.head.headin.gotoAndStop(3);
         target.shad.head.headin.gotoAndStop(3);
         target.head.hblood1.gotoAndStop(2);
      }
      else
      {
         _root.allsounds[111 + random(3)].start();
         target.head.hblood1.gotoAndStop(3);
      }
   }
   target.upbody.bodyblood5.gotoAndStop(2);
   target.pos = "dead";
   set("2#",100);
   target.xvel = 30 * target.side;
}

// Original timeline function: "3\""
function applyHeadHitVariant2(target,projectile,hitX,hitY,side,stepIndex)
{
   if(bonusgo == 4)
   {
      target.head.knife1.gotoAndStop(2);
   }
   if(target.pos == "crouch")
   {
      target.gotoAndPlay(184);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(101);
      target.pos = "ground";
   }
   set("2#",40 + random(30));
   if(bonusgo == 0 || target.side == 1)
   {
      if(target.life - eval("2#") <= 0 && (target.head.hblood2._currentframe == 2 || target.head.hblood3._currentframe == 2))
      {
         if(random(2) == 0)
         {
            target.head.headin.gotoAndStop(2);
            target.shad.head.headin.gotoAndStop(2);
         }
         else
         {
            target.head.headin.gotoAndStop(4);
            target.shad.head.headin.gotoAndStop(4);
         }
         spawnBodyChunks(projectile._x,projectile._y,side);
      }
      else
      {
         _root.allsounds[111 + random(3)].start();
         target.head.hblood2.gotoAndStop(2);
      }
   }
   target.upbody.bodyblood5.gotoAndStop(2);
   target.xvel = 25 * target.side;
}

// Original timeline function: "return"
function applyHeadHitVariant3(target,projectile,hitX,hitY,side,stepIndex)
{
   if(bonusgo == 4)
   {
      target.head.knife1.gotoAndStop(2);
   }
   if(target.pos == "crouch")
   {
      target.gotoAndPlay(184);
   }
   else
   {
      target.gotoAndPlay(253);
   }
   set("2#",40 + random(30));
   if(bonusgo == 0 || target.side == 1)
   {
      if(target.life - eval("2#") <= 0)
      {
         var _loc3_ = random(3);
         if(_loc3_ == 0)
         {
            target.head.headin.gotoAndStop(2);
            target.shad.head.headin.gotoAndStop(2);
         }
         else if(_loc3_ == 1)
         {
            target.head.headin.gotoAndStop(4);
            target.shad.head.headin.gotoAndStop(4);
         }
         else
         {
            if(target.pos == "standing" || target.pos == "leaning")
            {
               _root.allsounds[109].start();
            }
            else
            {
               _root.allsounds[110].start();
            }
            target.headfly = 1;
            target.upbody.bodyblood1.gotoAndStop(2);
            target.head.headin.gotoAndStop(5);
            target.shad.head._visible = 0;
         }
         spawnBodyChunks(projectile._x,projectile._y,side);
      }
      else
      {
         _root.allsounds[111 + random(3)].start();
         target.head.hblood3.gotoAndStop(2);
      }
   }
   target.upbody.bodyblood5.gotoAndStop(2);
   target.pos = "ground";
   target.xvel = 35 * target.side;
}

// Original timeline function: " set"
function applyFatalUpperBodyHit(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife1.gotoAndStop(2);
   }
   target.gotoAndPlay(126);
   set("2#",40 + random(20));
   if(bonusgo == 0 || target.side == 1)
   {
      if(target.life - eval("2#") <= 0)
      {
         if(target.pos == "standing" || target.pos == "leaning")
         {
            _root.allsounds[109].start();
         }
         else
         {
            _root.allsounds[110].start();
         }
         target.head.hblood3.gotoAndStop(1);
         spawnBodyChunks(projectile._x,projectile._y,side);
         target.headfly = 1;
         target.head.headin.gotoAndStop(5);
         target.shad.head._visible = 0;
      }
      else
      {
         target.head.hblood4.gotoAndStop(2);
      }
   }
   target.upbody.bodyblood1.gotoAndStop(2);
   target.upbody.bodyblood5.gotoAndStop(2);
   target.arm1.armin.uparm.armblood2.gotoAndStop(2);
   target.pos = "ground";
   target.xvel = 35 * target.side;
}

// Original timeline function: " "
function applyUpperBodyHitVariant1(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife1.gotoAndStop(2);
   }
   if(target.pos == "leaning")
   {
      target.gotoAndPlay(253);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(162);
      target.pos = "leaning";
   }
   var _loc3_ = random(2);
   if(_loc3_ == 1)
   {
      if(bonusgo == 0 || target.side == 1)
      {
         target.upbody.bodyblood2.gotoAndStop(2);
      }
      target.arm1.armin.uparm.armblood1.gotoAndStop(2);
   }
   else
   {
      target.upbody.bodyblood5.gotoAndStop(2);
      if(bonusgo == 0 || target.side == 1)
      {
         target.arm1.armin.uparm.armblood2.gotoAndStop(2);
      }
   }
   if(random(100) == 0)
   {
      set("2#",100);
   }
   else
   {
      set("2#",40 + random(20));
   }
   target.xvel = 25 * target.side;
}

// Original timeline function: "<#"
function applyUpperBodyHitVariant2(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife2.gotoAndStop(2);
   }
   if(target.pos == "leaning")
   {
      target.gotoAndPlay(253);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(162);
      target.pos = "leaning";
   }
   var _loc3_ = random(2);
   if(_loc3_ == 1)
   {
      if(bonusgo == 0 || target.side == 1)
      {
         target.upbody.bodyblood4.gotoAndStop(2);
      }
      target.arm1.armin.uparm.armblood4.gotoAndStop(2);
   }
   else
   {
      target.upbody.bodyblood5.gotoAndStop(2);
      if(bonusgo == 0 || target.side == 1)
      {
         target.arm1.armin.uparm.armblood2.gotoAndStop(2);
      }
   }
   set("2#",40 + random(20));
   target.xvel = 25 * target.side;
}

// Original timeline function: "SubStomach1"
function SubStomach1(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife2.gotoAndStop(2);
   }
   if(target.pos == "leaning")
   {
      target.gotoAndPlay(253);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(228);
      target.pos = "leaning";
   }
   var _loc3_ = random(2);
   if(_loc3_ == 1)
   {
      if(bonusgo == 0 || target.side == 1)
      {
         target.upbody.bodyblood4.gotoAndStop(2);
      }
      target.arm1.armin.uparm.armblood4.gotoAndStop(2);
   }
   else
   {
      target.upbody.bodyblood5.gotoAndStop(2);
      if(bonusgo == 0 || target.side == 1)
      {
         target.arm1.armin.lowarm.lowarmblood1.gotoAndStop(2);
         target.arm1.armin.uparm.armblood3.gotoAndStop(2);
      }
   }
   target.holster.holsblood1.nextFrame();
   target.lowbody.dbodyblood2.nextFrame();
   target.upleg1.ulegblood4.nextFrame();
   set("2#",20 + random(20));
   target.xvel = 30 * target.side;
}

// Original timeline function: "SubStomach2"
function SubStomach2(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife3.gotoAndStop(2);
   }
   if(target.pos == "leaning")
   {
      target.gotoAndPlay(253);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(228);
      target.pos = "leaning";
   }
   var _loc3_ = random(2);
   if(_loc3_ == 1)
   {
      if(bonusgo == 0 || target.side == 1)
      {
         target.upbody.bodyblood3.gotoAndStop(2);
      }
      target.arm1.armin.uparm.armblood4.gotoAndStop(2);
   }
   else
   {
      target.upbody.bodyblood5.gotoAndStop(2);
      if(bonusgo == 0 || target.side == 1)
      {
         target.arm1.armin.lowarm.lowarmblood1.gotoAndStop(2);
         target.arm1.armin.uparm.armblood3.gotoAndStop(2);
      }
   }
   target.holster.holsblood1.nextFrame();
   target.lowbody.dbodyblood2.nextFrame();
   target.upleg1.ulegblood4.nextFrame();
   set("2#",20 + random(20));
   target.xvel = 30 * target.side;
}

// Original timeline function: "SubCrotch"
function SubCrotch(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      target.upbody.knife3.gotoAndStop(2);
   }
   if(target.pos == "leaning")
   {
      target.gotoAndPlay(253);
      target.pos = "ground";
   }
   else
   {
      target.gotoAndPlay(228);
      target.pos = "leaning";
   }
   if(bonusgo == 0 || target.side == 1)
   {
      target.lowbody.dbodyblood1.gotoAndStop(2);
   }
   target.lowbody.dbodyblood2.nextFrame();
   target.holster.holsblood1.nextFrame();
   target.upleg1.ulegblood4.nextFrame();
   target.upleg2.ulegblood4.nextFrame();
   set("2#",20 + random(20));
   target.xvel = 30 * target.side;
}

// Original timeline function: "each "
function applyLegHitVariant1(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      if(random(2) == 0)
      {
         target.upleg1.knife1.gotoAndStop(2);
      }
      else
      {
         target.upleg2.knife1.gotoAndStop(2);
      }
   }
   if(random(2) == 0 || target.pos == "crouch")
   {
      target.gotoAndPlay(201);
      target.pos = "facedown";
   }
   else
   {
      target.gotoAndPlay(176);
      target.pos = "crouch";
   }
   if(bonusgo == 0 || target.side == 1)
   {
      if(random(2) == 0)
      {
         if(random(2) == 0)
         {
            target.upleg1.ulegblood1.gotoAndStop(2);
         }
         else
         {
            target.upleg2.ulegblood1.gotoAndStop(2);
         }
      }
      else if(random(2) == 0)
      {
         target.upleg1.ulegblood2.gotoAndStop(2);
      }
      else
      {
         target.upleg2.ulegblood2.gotoAndStop(2);
      }
   }
   target.holster.holsblood1.nextFrame();
   target.lowbody.dbodyblood2.nextFrame();
   target.upleg1.ulegblood4.nextFrame();
   target.upleg2.ulegblood4.nextFrame();
   set("2#",15 + random(20));
   target.xvel = 2 * target.side;
}

// Original timeline function: "catch"
function applyLegHitVariant2(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(bonusgo == 4)
   {
      if(random(2) == 0)
      {
         target.upleg1.knife1.gotoAndStop(2);
      }
      else
      {
         target.upleg2.knife1.gotoAndStop(2);
      }
   }
   if(random(2) == 0 || target.pos == "crouch")
   {
      target.gotoAndPlay(201);
      target.pos = "facedown";
   }
   else
   {
      target.gotoAndPlay(176);
      target.pos = "crouch";
   }
   if(bonusgo == 0 || target.side == 1)
   {
      if(random(2) == 0)
      {
         target.lowleg1.legblood1.gotoAndStop(2);
      }
      else
      {
         target.lowleg2.legblood1.gotoAndStop(2);
      }
   }
   target.upleg1.ulegblood3.gotoAndStop(2);
   target.upleg1.ulegblood4.nextFrame();
   target.upleg2.ulegblood4.nextFrame();
   set("2#",10 + random(15));
   target.xvel = 2 * target.side;
}

// Original timeline function: "do"
function applyFootHit(target,projectile,hitX,hitY,side,stepIndex)
{
   _root.allsounds[15 + random(9)].start();
   if(random(2) == 0 || target.pos == "crouch")
   {
      target.gotoAndPlay(201);
      target.pos = "facedown";
   }
   else
   {
      target.gotoAndPlay(176);
      target.pos = "crouch";
   }
   if(random(2) == 0)
   {
      if(bonusgo == 0)
      {
         target.foot1.footblood1.gotoAndStop(2);
      }
      target.upleg1.ulegblood4.nextFrame();
   }
   else
   {
      if(bonusgo == 0 || target.side == 1)
      {
         target.foot2.footblood1.gotoAndStop(2);
      }
      target.upleg2.ulegblood4.nextFrame();
   }
   set("2#",10 + random(10));
   target.xvel = 2 * target.side;
}

// Original timeline function: "!%"
function dispatchCharacterHit(target,projectile,hitX,hitY,side,stepIndex)
{
   set("2#",0);
   var _loc9_ = 0;
   target.oldpos = target.pos;
   if(target.pos == "facedown")
   {
      _loc9_ = 1;
      applyFaceDownHeadHit(target,projectile,hitX,hitY,side,stepIndex);
   }
   else if(target.dpos != "facedown")
   {
      _loc9_ = 1;
      if(target.hitstaken == 0)
      {
         detachHat(target);
      }
      var _loc4_ = 0;
      if(target.pos == "leaning")
      {
         _loc4_ = 15;
      }
      else if(target.pos == "crouch")
      {
         _loc4_ = 60;
      }
      else if(target.pos == "ground")
      {
         _loc4_ = 100;
      }
      if(target.pos == "standing")
      {
         _loc4_ -= eval("else ")[target.head._currentframe] / 2;
      }
      _loc4_ += eval("implements");
      if(hitY < 122 + _loc4_ && target.hitstaken == 0)
      {
         _loc9_ = 0;
      }
      else if(hitY < 128 + _loc4_)
      {
         applyHeadHitVariant1(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 140 + _loc4_)
      {
         applyHeadHitVariant2(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 150 + _loc4_)
      {
         applyHeadHitVariant3(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 160 + _loc4_)
      {
         applyFatalUpperBodyHit(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 175 + _loc4_)
      {
         applyUpperBodyHitVariant1(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 185 + _loc4_)
      {
         applyUpperBodyHitVariant2(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 195 + _loc4_)
      {
         SubStomach1(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 210 + _loc4_)
      {
         SubStomach2(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 230 + _loc4_)
      {
         SubCrotch(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 250 + _loc4_)
      {
         applyLegHitVariant1(target,projectile,hitX,hitY,side,stepIndex);
      }
      else if(hitY < 270 + _loc4_)
      {
         applyLegHitVariant2(target,projectile,hitX,hitY,side,stepIndex);
      }
      else
      {
         applyFootHit(target,projectile,hitX,hitY,side,stepIndex);
      }
   }
   if(target.oldpos == "ground")
   {
      _loc9_ = 1;
      set("2#",60);
      target.gotoAndPlay(281);
      target.pos = "ground";
      target.xvel = 2 * target.side;
   }
   else if(target.oldpos == "dead" && target.dpos != "facedown")
   {
      _loc9_ = 1;
      target.gotoAndPlay(288);
      target.pos = "dead";
      target.xvel = 1 * target.side;
   }
   if(_loc9_)
   {
      if(target.pos == "facedown")
      {
         var _loc12_ = 20;
      }
      else
      {
         _loc12_ = 25;
      }
      spawnBloodParticles(projectile._x,projectile._y,-6,side,25 + random(25));
      target.hit = 1;
      if(target.hitstaken == 0)
      {
         target.holster.gotoAndStop(target.head._currentframe);
      }
      target.hitstaken += 1;
      _root.hitstaken += 1;
      target.arm1.armin.gotoAndPlay(41);
      if(projectile == bottle1)
      {
         set("2#",20);
      }
      target.life -= eval("2#");
      if(target.life <= 0)
      {
         if(target.oldpos == "standing")
         {
            target.gotoAndPlay(101);
         }
         else if(target.oldpos == "leaning")
         {
            target.gotoAndPlay(253);
         }
         else if(target.oldpos == "ground")
         {
            target.gotoAndPlay(281);
         }
         else if(target.oldpos == "facedown")
         {
            target.gotoAndPlay(218);
         }
         else if(target.oldpos == "crouch")
         {
            target.gotoAndPlay(184);
         }
         else if(target.oldpos == "dead" && target._currentframe > 275)
         {
            target.gotoAndPlay(288);
         }
         target.pos = "dead";
         finishRound(target);
      }
      else if(target == char)
      {
         var _loc10_ = csounds[compnum2].length;
         _loc10_ = random(_loc10_);
         var _loc11_ = csounds[compnum2][_loc10_];
         _root.allsounds[_loc11_].start();
         _root.allsounds[_loc11_].setVolume(random(40));
      }
      else
      {
         _loc10_ = csounds[compnum].length;
         _loc10_ = random(_loc10_);
         _loc11_ = csounds[compnum][_loc10_];
         _root.allsounds[_loc11_].start();
         _root.allsounds[_loc11_].setVolume(random(40));
      }
      if(target == char)
      {
         _root["switch"].include._x -= eval("2#") * 2.2;
      }
      else
      {
         _root["extends"].include._x -= eval("2#") * 2.2;
         if(bonusgo > 0)
         {
            bonusfail = 1;
            set(" try",1);
            char2.arm1.armin.gotoAndStop(1);
            char2.arm2.armin.gotoAndStop(1);
            char2.hitstaken = 1;
            setmouse = 0;
            target.head.knife1.gotoAndStop(1);
            target.head.knife2.gotoAndStop(1);
            target.head.knife3.gotoAndStop(1);
            target.upbody.knife1.gotoAndStop(1);
            target.upbody.knife2.gotoAndStop(1);
            target.upbody.knife3.gotoAndStop(1);
            target.upleg1.knife1.gotoAndStop(1);
            target.upleg2.knife1.gotoAndStop(1);
            finishRound();
         }
      }
      scaledir = -1;
      rescale = 1;
   }
   if(projectile != bottle1)
   {
      projectile._visible = 0;
   }
}

// Original timeline function: " get"
function finishRound(outcome)
{
   _root.attachMovie("levelload","levelload",200);
   _root.levelload._x = 360;
   _root.levelload._y = 212.5;
   _root.drawgame = 0;
   eval("0$")(char);
   gametime = (getTimer() - starttime) / 600;
   if(bonusgo == 1)
   {
      _root.levelload["1#"].gotoAndStop(4);
      setmouse = 0;
   }
   else if(bonusgo == 2)
   {
      _root.levelload["1#"].gotoAndStop(4);
      setmouse = 0;
   }
   else if(bonusgo == 3)
   {
      _root.levelload["1#"].gotoAndStop(5);
      setmouse = 0;
   }
   else if(bonusgo == 4)
   {
      _root.levelload["1#"].gotoAndStop(6);
      setmouse = 0;
   }
   else if(outcome == "draw")
   {
      _root.drawgame = 1;
      eval("0$")(char2);
      _root.levelload["1#"].gotoAndStop(3);
      setmouse = 0;
   }
   else
   {
      if(char.life <= 0)
      {
         eval("set ")();
         _root.levelload["1#"].gotoAndStop(2);
         setmouse = 0;
      }
      else if(_root.gamelevel == 9)
      {
         _root.levelload["1#"].gotoAndStop(7);
         if(_root["["] == 1)
         {
            _root.levelload["1#"].gotoAndStop(8);
         }
         setmouse = 0;
      }
      if(char2.hitstaken == 0 && char2.arm1.armin._currentframe < 54)
      {
         char2.arm1.armin._rotation = 0;
         var _loc2_ = random(3);
         if(_loc2_ == 1)
         {
            char2.arm1.armin.gotoAndPlay(54);
         }
         else if(_loc2_ == 2)
         {
            char2.arm1.armin.gotoAndPlay(91);
         }
         else
         {
            char2.arm1.armin.gotoAndPlay(218);
         }
      }
   }
}

// Original timeline function: "Celebrate"
function Celebrate()
{
   if(char.hitstaken == 0 && char.arm1.armin._currentframe < 54)
   {
      char.arm1.armin._rotation = 0;
      var _loc1_ = random(3);
      if(_loc1_ == 1)
      {
         char.arm1.armin.gotoAndPlay(54);
      }
      else if(_loc1_ == 2)
      {
         char.arm1.armin.gotoAndPlay(91);
      }
      else
      {
         char.arm1.armin.gotoAndPlay(218);
      }
   }
}

// Original timeline function: "'#"
function updatePlayerProjectile()
{
   eval("<$").x = eval("do ")._x;
   eval("<$").y = eval("do ")._y;
   localToGlobal(eval("<$"));
   var bc = 0;
   while(bc < 12)
   {
      eval("<$").x += eval("do ").ax * 12;
      eval("<$").y += eval("do ").ay * 12;
      eval("do ")._x += eval("do ").ax * 12;
      eval("do ")._y += eval("do ").ay * 12;
      if(bonusgo == 1 || bonusgo == 4)
      {
         if(Math.abs(eval("do ")._x - bottle1._x) < 28 && Math.abs(eval("do ")._y - bottle1._y) < 28)
         {
            botbreak += 1;
            bottlego = 0;
            bottle1._rotation = 0;
            if(bonusgo != 4)
            {
               _root.allsounds[24 + random(4)].start();
               bottle1.gotoAndStop(2);
            }
            else
            {
               var recoveredLocal1 = 139 + random(3);
               _root.allsounds[recoveredLocal1].start();
               _root.allsounds[recoveredLocal1].setVolume(25 + random(25));
               set(" try",1);
               bottle1.vx *= -0.65 + Math.random();
               bottle1.vy -= 25 * Math.random();
            }
            char.shotgo = 0;
            eval("do ")._visible = 0;
            ThrowBot();
            bc = 15;
         }
      }
      if(bonusgo == 2)
      {
         var bo = 1;
         while(bo <= 6)
         {
            var bottle = eval("bottle" + bo);
            if(bottle._currentframe == 1)
            {
               if(bottle.hitTest(eval("<$").x,eval("<$").y,0))
               {
                  _root.allsounds[24 + random(4)].start();
                  botbreak += 1;
                  bottlego = 0;
                  bottle._rotation = 0;
                  bottle.gotoAndStop(2);
                  char.shotgo = 0;
                  eval("do ")._visible = 0;
                  bc = 15;
                  bo = 6;
               }
            }
            bo++;
         }
      }
      if(bonusgo == 3)
      {
         var bi = 1;
         while(bi <= 6)
         {
            var birdclip = eval("birdclip" + bi);
            if(!birdclip.drop)
            {
               if(Math.abs(eval("do ")._x - birdclip._x) < 28 && Math.abs(eval("do ")._y - birdclip._y) < 28)
               {
                  var recoveredLocal1 = 135 + random(4);
                  _root.allsounds[recoveredLocal1].start();
                  _root.allsounds[recoveredLocal1].setVolume(random(50));
                  spawnFeathers(birdclip);
                  birdclip._rotation -= 20;
                  spawnBloodParticles(eval("do ")._x,eval("do ")._y,-6,1,25 + random(25));
                  birdclip.drop = 1;
                  birdclip.wing1.gotoAndStop(1 + random(17));
                  birdclip.wing2.gotoAndStop(1 + random(17));
                  birdclip.vx += 25 * Math.random();
                  birdclip.vy -= 25 * Math.random();
                  var birdshad = eval("birdshad" + bi);
                  birdshad.wing1.gotoAndStop(15);
                  birdshad.wing2.gotoAndStop(15);
                  char.shotgo = 0;
                  eval("do ")._visible = 0;
                  botbreak += 1;
                  bc = 15;
                  bi = 6;
               }
            }
            bi++;
         }
      }
      if(char2.hitTest(eval("<$").x,eval("<$").y,1) && char.shotgo == 1)
      {
         char.shotgo = 0;
         dispatchCharacterHit(char2,eval("do "),eval("<$").x,eval("<$").y,char.side,bc);
         spawnSmoke(eval("do ")._x,eval("do ")._y);
         bc = 15;
      }
      bc++;
   }
   if(eval("do ")._y > 90 && char.shotgo == 1)
   {
      _root.allsounds[129 + random(3)].start();
      spawnBulletImpact(eval("do ")._x,eval("do ")._y,eval("<$").y);
      eval("do ")._visible = 0;
      char.shotgo = 0;
   }
   spawnSmoke(eval("do ")._x,eval("do ")._y);
}

// Original timeline function: "var"
function updateOpponentProjectile()
{
   eval("<$").x = eval(",%")._x;
   eval("<$").y = eval(",%")._y;
   localToGlobal(eval("<$"));
   var _loc2_ = 0;
   while(_loc2_ < 12)
   {
      eval("<$").x -= eval(",%").ax * 12;
      eval("<$").y -= eval(",%").ay * 12;
      eval(",%")._x -= eval(",%").ax * 12;
      eval(",%")._y -= eval(",%").ay * 12;
      if(char.hitTest(eval("<$").x,eval("<$").y,1) && char2.shotgo == 1)
      {
         char2.shotgo = 0;
         if(chgo[3] == 1)
         {
            eval(",%")._x -= 2000;
         }
         else
         {
            dispatchCharacterHit(char,eval(",%"),eval("<$").x,eval("<$").y,char2.side,_loc2_);
         }
         spawnSmoke(eval(",%")._x,eval(",%")._y);
         _loc2_ = 15;
      }
      _loc2_ = _loc2_ + 1;
   }
   if(eval(",%")._y > 90 && char2.shotgo == 1)
   {
      _root.allsounds[129 + random(3)].start();
      spawnBulletImpact(eval(",%")._x,eval(",%")._y);
      eval(",%")._visible = 0;
      char2.shotgo = 0;
   }
   spawnSmoke(eval(",%")._x,eval(",%")._y);
}

// Original timeline function: "^#"
function updateDetachedHead(target)
{
   target.head._x += target.headx;
   target.head._y += target.heady;
   target.head._rotation += target.headx * 2;
   target.heady += 4;
   if(target.head._y > 130)
   {
      target.headfly = 0;
   }
}

// Original timeline function: "@"
function updateOpponentHat()
{
   eval("try ")._x += char2.hatx;
   eval("try ")._y += char2.haty;
   eval("try ")._rotation += char2.hatx * 2;
   char2.haty += 4;
   if(eval("try ")._y > 110)
   {
      char2.hatgo = 0;
   }
}

// Original timeline function: ">$"
function updatePlayerHat()
{
   eval("\"$")._x += char.hatx;
   eval("\"$")._y += char.haty;
   eval("\"$")._rotation += char.hatx * 2;
   char.haty += 4;
   if(eval("\"$")._y > 110)
   {
      char.hatgo = 0;
   }
}

// Original timeline function: "]"
function detachHat(target)
{
   target.hat._visible = 0;
   target.hatx = -8 - random(38);
   target.haty = -5 - random(35);
   if(target == char)
   {
      eval("\"$")._visible = 1;
      eval("\"$")._y += 230;
      charshad.hat._visible = 0;
   }
   else
   {
      eval("try ")._visible = 1;
      eval("try ")._y += 230;
      char2shad.hat._visible = 0;
      target.hatx *= -1;
   }
   target.hatgo = 1;
}

// Original timeline function: "BottleSet"
function BottleSet()
{
   var _loc2_ = 122 + random(4);
   _root.allsounds[_loc2_].start();
   _root.allsounds[_loc2_].setVolume(25 + random(25));
   set(" try",0);
   bottle1.vx = -35 - Math.random() * 15;
   bottle1.vy = -30 - Math.random() * 15;
   bottle1.gotoAndStop(1);
   bottle1._visible = 1;
   bottle1._x = 550;
   bottle1._y = -150;
   if(bonusgo == 4)
   {
      bottle1._x -= 110;
      bottle1.vy = -20 - Math.random() * 10;
      bottle1.bottlein.gotoAndStop(2);
   }
   bottlego = 1;
}

// Original timeline function: "+%"
function updateThrownBottle()
{
   bottle1._x += bottle1.vx;
   bottle1._y += bottle1.vy;
   eval("<$").x = bottle1._x;
   eval("<$").y = bottle1._y;
   localToGlobal(eval("<$"));
   var bc = 0;
   while(bc < 5)
   {
      eval("<$").x -= bottle1.vx / 5;
      eval("<$").y -= bottle1.vy / 5;
      if(char.hitTest(eval("<$").x,eval("<$").y,1))
      {
         if(bonusgo != 4)
         {
            _root.allsounds[24 + random(4)].start();
         }
         char2.shotgo = 0;
         dispatchCharacterHit(char,bottle1,eval("<$").x,eval("<$").y,char2.side,bc);
         bottlego = 0;
         bottle1._rotation = 0;
         bottle1.gotoAndStop(2);
         ThrowBot();
         bc = 15;
      }
      bc++;
   }
   bottle1._rotation += bottle1.vx;
   bottle1.vy += 3;
   if(bottle1._y > 110 && bottlego == 1)
   {
      bottlego = 0;
      bottle1._rotation = 0;
      if(bonusgo != 4)
      {
         _root.allsounds[24 + random(4)].start();
         bottle1.gotoAndStop(2);
      }
      else
      {
         attachMovie("knifeclip","knifeclip" + knives,12860 + knives);
         var knifeclip = eval("knifeclip" + knives);
         knifeclip.bottlein.gotoAndStop(2);
         knifeclip._x = bottle1._x;
         knifeclip._y = bottle1._y;
         knifeclip._rotation = -20 + Math.random() * 40;
         knifeshad1.duplicateMovieClip("knifeshad" + knives,12740 + knives);
         var knifeshad = eval("knifeshad" + knives);
         knifeshad._x = bottle1._x - 5;
         knifeshad._y = bottle1._y + 40;
         knifeshad._rotation -= knifeclip._rotation;
         bottle1._visible = 0;
         knives += 1;
      }
      ThrowBot();
   }
}

// Original timeline function: "]\""
function updateLooseBottles()
{
   var bo = 1;
   while(bo <= 4)
   {
      var bottle = eval("bottle" + bo);
      if(bottle._currentframe == 1)
      {
         bottle._y += bottle.vy;
         bottle.vy += 3;
         if(bonusgo == 4)
         {
            bottle._x += bottle.vx;
            bottle._rotation += bottle.vx * 4;
         }
         if(bottle._y > 110 && bottle._visible)
         {
            bottle._rotation = 0;
            if(bonusgo != 4)
            {
               _root.allsounds[24 + random(4)].start();
               bottle.gotoAndStop(2);
            }
            else
            {
               bottle.vy = 0;
               bottle.vx = 0;
               attachMovie("knifeclip","knifeclip" + knives,12860 + knives);
               var knifeclip = eval("knifeclip" + knives);
               knifeclip.bottlein.gotoAndStop(2);
               knifeclip._x = bottle._x;
               knifeclip._y = bottle._y;
               knifeclip._rotation = -20 + Math.random() * 40;
               knifeshad1.duplicateMovieClip("knifeshad" + knives,12740 + knives);
               var knifeshad = eval("knifeshad" + knives);
               knifeshad._x = bottle._x - 5;
               knifeshad._y = bottle._y + 40;
               knifeshad._rotation -= knifeclip._rotation;
               bottle._visible = 0;
               knives += 1;
            }
         }
      }
      bo++;
   }
}

// Original timeline function: "0"
function updateBirds()
{
   var bi = 1;
   while(bi <= 6)
   {
      var birdclip = eval("birdclip" + bi);
      var birdshad = eval("birdshad" + bi);
      if(birdclip._currentframe == 1)
      {
         if(birdclip.drop)
         {
            birdclip.vy += 3;
         }
         if(birdclip._y < 90 || !birdclip.drop)
         {
            birdclip._x += birdclip.vx;
            birdclip._y += birdclip.vy;
            birdshad._x += birdclip.vx;
            birdshad._y -= birdclip.vy;
         }
         if(birdclip._y > 90)
         {
            birdshad._y = birdclip._y + 8;
            if(!birdclip.dead && birdclip.drop)
            {
               _root.allsounds[random(2)].start();
            }
            birdclip.dead = 1;
         }
      }
      bi++;
   }
}

// Original timeline function: "0%"
function updateCameraScale()
{
   if(char.pos == "facedown" || char.dpos == "facedown")
   {
      char.xspot = char._x - char.head._x;
   }
   else
   {
      char.xspot = char._x + char.head._x;
   }
   if(char2.pos == "facedown" || char2.dpos == "facedown")
   {
      char2.xspot = char2._x + char2.head._x;
   }
   else
   {
      char2.xspot = char2._x - char2.head._x;
   }
   scaxtemp = char.xspot - char2.xspot;
   set("=%",char.xspot - scaxtemp / 2);
   _X = - eval("=%");
   scatemp = 60000 / Math.abs(scaxtemp);
   if(scatemp < 100)
   {
      _parent._xscale = scatemp;
      _parent._yscale = _parent._xscale;
   }
}

// Original timeline function: "9!"
function updateCountdown()
{
   if(bonusgo == 0)
   {
      if(_root.barrel1.hitTest(_root._xmouse,_root._ymouse,1))
      {
         if(getTimer() - starttime < 600)
         {
            if(countsound == 0)
            {
               _root.allsounds[120].start();
               countsound = 1;
            }
            _parent._parent.bigtext.bigtextin.countdown = 3;
         }
         else if(getTimer() - starttime < 1200)
         {
            if(countsound == 1)
            {
               _root.allsounds[120].start();
               countsound = 2;
            }
            _parent._parent.bigtext.bigtextin.countdown = 2;
         }
         else if(getTimer() - starttime < 1800)
         {
            if(countsound == 2)
            {
               _root.allsounds[120].start();
               countsound = 3;
            }
            _parent._parent.bigtext.bigtextin.countdown = 1;
         }
         else if(getTimer() - starttime < 2400)
         {
            _root.allsounds[119].start();
            _parent._parent.bigtext.bigtextin.countdown = "FIRE!";
            _parent._parent.bigtext.gotoAndPlay(2);
            starttime = getTimer();
            gameon = 1;
         }
         if(_parent._parent.pausebox._visible == 1)
         {
            _parent._parent.pausebox._visible = 0;
            starttime = getTimer();
         }
         set("in",1);
      }
      else
      {
         _parent._parent.pausebox._visible = 1;
         if(eval("in"))
         {
            _parent._parent.pausebox.pauseboxin.gotoAndStop(2);
         }
         _root.allsounds[120].stop();
         countsound = 0;
         starttime = getTimer();
      }
   }
   else
   {
      _parent._parent.pausebox._visible = 1;
   }
}

// Original timeline function: "!"
function updateOpponentAim()
{
   if(bonusgo == 0)
   {
      if(Math.abs(char2.arm1.armin._rotation - compgo) < 2)
      {
         if(char2.shotdelay > 0)
         {
            char2.shotdelay -= 1;
         }
         Shoot2();
      }
      else
      {
         var _loc1_ = Math.abs(char2.arm1.armin._rotation - compgo);
         if(_loc1_ > compspeed)
         {
            _loc1_ = compspeed;
         }
         if(char2.arm1.armin._rotation > compgo)
         {
            char2.arm1.armin._rotation -= _loc1_;
         }
         else
         {
            char2.arm1.armin._rotation += _loc1_;
         }
         char2.shad.arm1.armin._rotation = char2.arm1.armin._rotation;
      }
      if(char2.pos == "standing")
      {
         var _loc2_ = -10 - Math.ceil(char2.arm1.armin._rotation);
         if(_loc2_ > 100)
         {
            _loc2_ = 100;
         }
         char2.gotoAndStop(_loc2_);
      }
   }
}

// Original timeline function: "0\""
function updateBloodParticles()
{
   var _loc3_ = bloodclips.length;
   var _loc2_ = 0;
   while(_loc2_ < _loc3_)
   {
      var _loc1_ = bloodclips[_loc2_];
      _loc1_._x += _loc1_.tx;
      _loc1_._y += _loc1_.ty;
      _loc1_.ty += 1.5;
      _loc1_.count += 1;
      if(_loc1_._y > 80)
      {
         spawnGroundBlood(_loc1_._x,_loc1_._y,_loc1_._xscale);
         _loc1_._visible = 0;
         bloodclips.splice(_loc2_,1);
      }
      _loc2_ = _loc2_ + 1;
   }
}

// Original timeline function: "#%"
function spawnBloodParticles(x,y,verticalSpeed,horizontalDirection,particleCount)
{
   var _loc2_ = 0;
   while(_loc2_ < particleCount)
   {
      var _loc1_ = bloods[eval("get")];
      bloodclips.push(_loc1_);
      _loc1_._visible = 1;
      _loc1_._x = x;
      _loc1_._y = y;
      bscale = 80 + Math.random() * 120;
      _loc1_._xscale = bscale;
      _loc1_._yscale = bscale;
      _loc1_.tx = horizontalDirection * (-12 + Math.random() * 15);
      _loc1_.ty = (verticalSpeed + Math.random() * 6) * (Math.random() * 5);
      _loc1_.dist = 5 + random(18);
      _loc1_.count = 0;
      set("get",eval("get") + 1);
      _loc2_ = _loc2_ + 1;
   }
}

// Original timeline function: "!\""
function spawnGroundBlood(gbx, gby, gbs, gbr)
{
   if(random(4) == 0)
   {
      var soundIndex = 5 + random(3);
      _root.allsounds[soundIndex].start();
      _root.allsounds[soundIndex].setVolume(random(35));
   }
   bloodback.attachMovie("groundblood","groundblood" + gbcount,2850 + gbcount);
   groundblood = eval("bloodback.groundblood" + gbcount);
   groundblood._x = gbx;
   groundblood._y = gby;
   groundblood._xscale = gbs;
   groundblood._yscale = gbs;
   gbcount += 1;
}

// Original timeline function: "!!"
function spawnBulletImpact(bbx, bby)
{
   bloodback.attachMovie("bmark","bmark" + gbcount,2800 + gbcount);
   groundblood = eval("bloodback.bmark" + gbcount);
   groundblood._x = bbx;
   groundblood._y = bby;
   set("`#",new Array(eval("%%"),eval(";"),eval("while"),eval(" case")));
   var recoveredLocal1 = 0;
   while(recoveredLocal1 < 4)
   {
      eval("`#")[recoveredLocal1]._x = bbx;
      eval("`#")[recoveredLocal1]._y = bby;
      var recoveredLocal2 = 60 + random(80);
      eval("`#")[recoveredLocal1]._xscale = recoveredLocal2;
      eval("`#")[recoveredLocal1]._yscale = recoveredLocal2;
      eval("`#")[recoveredLocal1]._rotation += -45 + random(91);
      eval("`#")[recoveredLocal1]._visible = 1;
      eval("`#")[recoveredLocal1].gotoAndPlay(2);
      recoveredLocal1++;
   }
   gbcount += 1;
}

// Original timeline function: " $"
function spawnSmoke(sx, sy)
{
   var smran = random(50);
   attachMovie("smoke","smoke" + smran,5800 + smran);
   var smoke = eval("smoke" + smran);
   smoke._x = sx;
   smoke._y = sy;
   smoke.smokein.gotoAndStop(1 + random(5));
   smoke._rotation = random(360);
   var recoveredLocal1 = 30 + random(60);
   smoke._xscale = recoveredLocal1;
   smoke._yscale = recoveredLocal1;
}

// Original timeline function: "6%"
function spawnBodyChunks(sx, sy, cside)
{
   _root.allsounds[114 + random(5)].start();
   _root.allsounds[2 + random(3)].start();
   set("^$",new Array());
   pcount = 0;
   var recoveredLocal1 = 1;
   while(recoveredLocal1 <= 10)
   {
      attachMovie("bchunks","cp" + pcount,30000 + pcount);
      var recoveredLocal2 = eval("cp" + pcount);
      eval("^$").push(recoveredLocal2);
      recoveredLocal2._x = sx - 4 * cside;
      recoveredLocal2._y = sy;
      recoveredLocal2.gotoAndStop(recoveredLocal1);
      var recoveredLocal3 = 12 + Math.random() * 12;
      recoveredLocal2._xscale = recoveredLocal3;
      recoveredLocal2._yscale = recoveredLocal3;
      recoveredLocal2.vx = (-20 + Math.random() * 30) * cside;
      recoveredLocal2.vy = -10 - Math.random() * 50;
      pcount += 1;
      recoveredLocal1++;
   }
}

// Original timeline function: "+!"
function updateBodyChunks()
{
   for(var _loc4_ in eval("^$"))
   {
      var _loc2_ = eval("^$")[_loc4_];
      _loc2_._x += _loc2_.vx;
      _loc2_._y += _loc2_.vy;
      _loc2_._rotation += _loc2_.vx * 4;
      _loc2_.vy += 3;
      if(_loc2_._y > 80)
      {
         _loc2_.vx /= 1.5;
         _loc2_.vy = 0;
         if(!_loc2_.dead)
         {
            var _loc3_ = 28 + random(6);
            _root.allsounds[_loc3_].start();
            _root.allsounds[_loc3_].setVolume(20 + random(30));
         }
         _loc2_.dead = 1;
      }
   }
}

// Original timeline function: "#$"
function spawnFeathers(birdclip)
{
   set("else",3 + random(6));
   set(" var",0);
   while(eval(" var") < eval("else"))
   {
      attachMovie("feathers","feather" + fecount,45303 + fecount);
      feather = eval("feather" + fecount);
      feather._x = birdclip._x + (-20 + random(40));
      feather._y = birdclip._y + (-20 + random(40));
      feather._xscale = 10 + random(20);
      feather._yscale = 10 + random(20);
      feather.featherin.gotoAndPlay(1 + random(10));
      feather.xvel = -5 + random(11);
      feather.yvel = 4 + random(6);
      fecount += 1;
      set(" var",eval(" var") + 1);
   }
}

// Preserve original names used by other timeline scripts and dynamic lookups.
this[">%"] = initializeRound;
this["native"] = applyCharacterAppearance;
this["use "] = updatePlayerAim;
this["`"] = firePlayerShot;
this["%"] = updateBottleThrowAnimation;
this["@$"] = updateGameplay;
this["9%"] = drawAimGuide;
this[" else"] = applyFaceDownHeadHit;
this[";$"] = applyHeadHitVariant1;
this["3\""] = applyHeadHitVariant2;
this["return"] = applyHeadHitVariant3;
this[" set"] = applyFatalUpperBodyHit;
this[" "] = applyUpperBodyHitVariant1;
this["<#"] = applyUpperBodyHitVariant2;
this["each "] = applyLegHitVariant1;
this["catch"] = applyLegHitVariant2;
this["do"] = applyFootHit;
this["!%"] = dispatchCharacterHit;
this[" get"] = finishRound;
this["'#"] = updatePlayerProjectile;
this["var"] = updateOpponentProjectile;
this["^#"] = updateDetachedHead;
this["@"] = updateOpponentHat;
this[">$"] = updatePlayerHat;
this["]"] = detachHat;
this["+%"] = updateThrownBottle;
this["]\""] = updateLooseBottles;
this["0"] = updateBirds;
this["0%"] = updateCameraScale;
this["9!"] = updateCountdown;
this["!"] = updateOpponentAim;
this["0\""] = updateBloodParticles;
this["#%"] = spawnBloodParticles;
this["!\""] = spawnGroundBlood;
this["!!"] = spawnBulletImpact;
this[" $"] = spawnSmoke;
this["6%"] = spawnBodyChunks;
this["+!"] = updateBodyChunks;
this["#$"] = spawnFeathers;

initializeRound();
updateCameraScale();
clearInterval(_root.mainint);
_root.mainint = setInterval(updateGameplay,30);
false;
