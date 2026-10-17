function _SafeStr_47()
{
   sc = 0;
   while(true)
   {
      var _temp_1 = 20;
      if(sc >= _temp_1)
      {
         break;
      }
      var _temp_10 = "sc";
      var _temp_9 = "ascores";
      var _temp_8 = "numout";
      var _temp_7 = "ascore";
      var _temp_6 = "scoreout";
      var _temp_5 = "ascore";
      var _temp_4 = "nameout";
      var _temp_3 = "ascore";
      var _temp_2 = "ascore";
      var _temp_1 = "score";
      var _temp_1 = 1;
      set(_temp_2,eval(_temp_1 + (sc + _temp_1)));
      eval(_temp_3)[_temp_4] = "";
      eval(_temp_5)[_temp_6] = "";
      eval(_temp_7)[_temp_8] = "";
      if(eval(_temp_9)[eval(_temp_10)])
      {
         var _temp_14 = "numout";
         var _temp_13 = "ascore";
         var _temp_12 = "scoreout";
         var _temp_11 = "ascore";
         var _temp_1 = "nameout";
         ascore[_temp_1] = anames[sc].toUpperCase();
         eval(_temp_11)[_temp_12] = ascores[sc];
         eval(_temp_13)[_temp_14] = sc + 1;
      }
      else
      {
         var _temp_1 = "nameout";
         ascore[_temp_1] = "";
         var _temp_16 = "numout";
         var _temp_15 = "ascore";
         ascore.scoreout = "";
         eval(_temp_15)[_temp_16] = "";
      }
      var _temp_1 = "sc";
      if(atrophies[eval(_temp_1)] == 1)
      {
         2; //unpopped
         var _temp_18 = 1;
         var _temp_17 = "gotoAndStop";
         var _temp_1 = "compstar";
         ascore[_temp_1][_temp_17]();
      }
      sc++;
   }
   thiscont = 1;
}
var _temp_1 = "_visible";
eval(" in")[_temp_1] = 1;
var _temp_9 = 0;
var _temp_8 = "use";
var _temp_7 = "_root";
var _temp_6 = "thiscont";
var _temp_5 = 0;
var _temp_4 = "_quality";
var _temp_3 = "_root";
var _temp_2 = "_visible";
var _temp_1 = "each";
eval("4\"")._visible = 0;
eval(_temp_1)[_temp_2] = 0;
eval(_temp_3)[_temp_4] = "HIGH";
set(_temp_6,0);
if(eval(_temp_7)[_temp_8] == _temp_9)
{
   set("7#","GLOBAL");
}
else
{
   var _temp_10 = "7#";
   var _temp_1 = "use";
   set(_temp_10,_root[_temp_1]);
}
var _temp_1 = 1;
if(newscores == _temp_1)
{
   anames = "";
   ascores = "";
   var _temp_12 = "newscores";
   var _temp_11 = 0;
   loadVariables("http://www.gunblood.com/getgunscores.php?rn=" + random(100000) + "&g=" + _root.use,getscores);
   set(_temp_12,0);
}
else
{
   "true "();
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_47 = "true "
 */
