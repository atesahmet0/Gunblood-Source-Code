var _temp_16 = 0;
var _temp_15 = "bonusgo";
var _temp_14 = "mainclip";
var _temp_13 = "scaleclip";
var _temp_12 = "_root";
var _temp_11 = "_visible";
var _temp_10 = "finally";
var _temp_9 = "1#";
var _temp_8 = "_visible";
var _temp_7 = "if ";
var _temp_6 = "1#";
var _temp_5 = "_visible";
var _temp_4 = "super";
var _temp_3 = "1#";
var _temp_2 = "setmouse";
var _temp_1 = "mainclip";
var _temp_1 = "scaleclip";
_root[_temp_1][_temp_1][_temp_2] = 0;
eval(_temp_3)[_temp_4][_temp_5] = 1;
eval(_temp_6)[_temp_7][_temp_8] = 1;
eval(_temp_9)[_temp_10][_temp_11] = 1;
if(eval(_temp_12)[_temp_13][_temp_14][_temp_15] == _temp_16)
{
   var _temp_20 = 0;
   var _temp_19 = "life";
   var _temp_18 = "char";
   var _temp_17 = "mainclip";
   var _temp_1 = "scaleclip";
   if(_root[_temp_1][_temp_17][_temp_18][_temp_19] > _temp_20)
   {
      var _temp_30 = 0;
      var _temp_29 = "&!";
      var _temp_28 = "1#";
      var _temp_27 = "&!";
      var _temp_26 = "1#";
      var _temp_25 = "roundshots";
      var _temp_24 = "1#";
      var _temp_23 = 0;
      var _temp_22 = "Celebrate";
      var _temp_21 = "mainclip";
      var _temp_1 = "scaleclip";
      _root[_temp_1][_temp_21][_temp_22]();
      eval(_temp_24)[_temp_25] = _root.scaleclip.mainclip.char.shotstaken;
      eval(_temp_26)[_temp_27] = Math.round(10 - _root.scaleclip.mainclip.gametime);
      if(eval(_temp_28)[_temp_29] < _temp_30)
      {
         var _temp_1 = "&!";
         eval("1#")[_temp_1] = 0;
      }
      var _temp_31 = 10;
      var _temp_1 = "&!";
      if(eval("1#")[_temp_1] > _temp_31)
      {
         var _temp_1 = "&!";
         eval("1#")[_temp_1] = 10;
      }
      var _temp_1 = "0!";
      eval("1#")[_temp_1] = Math.round(_root.scaleclip.mainclip.char2.hitstaken / eval("1#").roundshots * 10);
      var _temp_34 = 0;
      var _temp_33 = "drawgame";
      var _temp_32 = "_root";
      eval("1#")[" for"] = Math.ceil(_root.scaleclip.mainclip.char.life / 10);
      if(eval(_temp_32)[_temp_33] == _temp_34)
      {
         var _temp_38 = "`$";
         var _temp_37 = "_root";
         var _temp_36 = "throw";
         var _temp_35 = "_root";
         var _temp_1 = "3%";
         _root[_temp_1] = _root["3%"] + Number(eval("1#")["&!"]);
         eval(_temp_35)[_temp_36] = _root["throw"] + Number(eval("1#")["0!"]);
         eval(_temp_37)[_temp_38] = _root["`$"] + Number(eval("1#")[" for"]);
      }
      var _temp_39 = 9;
      var _temp_1 = "gamelevel";
      if(_root[_temp_1] == _temp_39 && _root[_temp_1][_temp_40][_temp_41][_temp_42] <= _temp_43)
      {
         var _temp_46 = 0;
         var _temp_45 = "start";
         var _temp_44 = 134;
         var _temp_1 = "allsounds";
         _root[_temp_1][_temp_44][_temp_45]();
      }
      var _temp_1 = "&!";
      _root["null"].push((Number(eval("1#")[_temp_1]) + Number(eval("1#")["0!"]) + Number(eval("1#")[" for"])) * _root["<%"]);
   }
   var _temp_1 = "totalscore";
   eval("1#")[_temp_1] = _root["3%"] + _root["throw"] + _root["`$"];
   eval("1#")["7%"] = _root.gamelevel;
}
else
{
   var _temp_49 = 2;
   var _temp_48 = "bonusgo";
   var _temp_47 = "mainclip";
   var _temp_1 = "scaleclip";
   if(_root[_temp_1][_temp_47][_temp_48] == _temp_49)
   {
      var _temp_1 = "&!";
      eval("1#")[_temp_1] = Math.round(14 - _root.scaleclip.mainclip.gametime);
   }
   else
   {
      var _temp_52 = 3;
      var _temp_51 = "bonusgo";
      var _temp_50 = "mainclip";
      var _temp_1 = "scaleclip";
      if(_root[_temp_1][_temp_50][_temp_51] == _temp_52)
      {
         var _temp_1 = "&!";
         eval("1#")[_temp_1] = Math.round(12 - _root.scaleclip.mainclip.gametime);
      }
      else
      {
         var _temp_1 = "&!";
         eval("1#")[_temp_1] = Math.round(18 - _root.scaleclip.mainclip.gametime);
      }
   }
   var _temp_53 = 0;
   var _temp_1 = "&!";
   if(eval("1#")[_temp_1] < _temp_53)
   {
      var _temp_1 = "&!";
      eval("1#")[_temp_1] = 0;
   }
   var _temp_54 = 10;
   var _temp_1 = "&!";
   if(eval("1#")[_temp_1] > _temp_54)
   {
      var _temp_1 = "&!";
      eval("1#")[_temp_1] = 10;
   }
   var _temp_1 = "0!";
   eval("1#")[_temp_1] = _root.scaleclip.mainclip.botbreak * 5;
   if(_root.scaleclip.mainclip.bonusfail)
   {
      2; //unpopped
      var _temp_60 = 1;
      var _temp_59 = "gotoAndStop";
      var _temp_58 = "bonusclip";
      var _temp_57 = "1#";
      var _temp_56 = "0!";
      var _temp_55 = "1#";
      var _temp_1 = "&!";
      eval("1#")[_temp_1] = 0;
      eval(_temp_55)[_temp_56] = 0;
      eval(_temp_57)[_temp_58][_temp_59]();
   }
   else
   {
      var _temp_1 = "3%";
      _root[_temp_1] = _root["3%"] + Number(eval("1#")["&!"]);
      _root["throw"] += Number(eval("1#")["0!"]);
   }
   var _temp_1 = "totalscore";
   eval("1#")[_temp_1] = _root["3%"] + _root["throw"] + _root["`$"];
   _root["null"].push((Number(eval("1#")["&!"]) + Number(eval("1#")["0!"])) * _root["<%"]);
}
