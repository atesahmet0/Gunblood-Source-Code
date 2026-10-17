function _SafeStr_46()
{
   if(_framesloaded == _totalframes && eval("3") >= _temp_1)
   {
      gotoAndStop(11);
   }
   else
   {
      set("import",Math.round(getBytesLoaded() / 1024));
      var _temp_8 = "_width";
      var _temp_7 = "in ";
      var _temp_6 = "+#";
      var _temp_5 = "LOADED ";
      var _temp_4 = ",!";
      var _temp_3 = ",!";
      var _temp_2 = "^!";
      var _temp_1 = "import";
      set("^!",Math.round(getBytesTotal() / 1024));
      set(_temp_3,Math.round((eval(_temp_1) / eval(_temp_2) * 100 + eval("3")) / 2));
      set(_temp_6,_temp_5 + eval(_temp_4) + "%");
      eval(_temp_7)[_temp_8] = 300 * (eval(",!") / 100);
   }
   var _temp_1 = 100;
   if(eval("3") < _temp_1)
   {
      var _temp_9 = "3";
      var _temp_1 = 1;
      set(_temp_9,eval("3") + _temp_1);
   }
}
if(!eval("5%"))
{
   loadMovie("http://www.gunblood.com/gbads1.swf",eval("each"));
}
var _temp_1 = "_quality";
_root[_temp_1] = "HIGH";
curchar = 2;
var _temp_12 = "gin";
var _temp_11 = "break";
var _temp_10 = "HIGH";
var _temp_9 = "case";
var _temp_8 = 1;
var _temp_7 = "rootsound";
var _temp_6 = 0;
var _temp_5 = "Sound";
var _temp_4 = "_visible";
var _temp_3 = "each";
var _temp_2 = "_visible";
var _temp_1 = "4\"";
var _temp_2 = "_visible";
eval(" in")[_temp_2] = 0;
eval(_temp_1)[_temp_2] = 0;
eval(_temp_3)[_temp_4] = 1;
set(_temp_7,new _temp_5());
set(_temp_9,1);
set(_temp_11,"HIGH");
if(eval(_temp_12))
{
   use = gin;
}
else
{
   use = 0;
}
set("-%",0);
pisound = 0;
set("3",1);
var _temp_20 = "menu";
var _temp_19 = "_root";
var _temp_18 = 0;
var _temp_17 = "hideBuiltInItems";
var _temp_16 = "8%";
var _temp_15 = "8%";
var _temp_14 = 0;
var _temp_13 = "ContextMenu";
fscommand("showmenu","false");
var _temp_15 = new _temp_13();
eval(_temp_16)[_temp_17]();
eval(_temp_19)[_temp_20] = eval("8%");
stop();

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_46 = "case "
 */
