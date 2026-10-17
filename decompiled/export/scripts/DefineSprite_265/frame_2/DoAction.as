function _SafeStr_4()
{
   var botsgo = 0;
   var b = 1;
   while(true)
   {
      var _temp_1 = 20;
      if(b > _temp_1)
      {
         break;
      }
      var _temp_13 = 0;
      var _temp_12 = "_xscale";
      var _temp_11 = "bottemp";
      var _temp_10 = "vy";
      var _temp_9 = "bottemp";
      var _temp_8 = "_yscale";
      var _temp_7 = "bottemp";
      var _temp_6 = "_xscale";
      var _temp_5 = "bottemp";
      var _temp_4 = "_y";
      var _temp_3 = "bottemp";
      var _temp_2 = "_x";
      var _temp_1 = "bottemp";
      var bottemp = eval("bp" + b);
      eval(_temp_1)[_temp_2] = bottemp._x + bottemp.vx;
      eval(_temp_3)[_temp_4] = bottemp._y + bottemp.vy;
      eval(_temp_5)[_temp_6] = bottemp._xscale - 4;
      eval(_temp_7)[_temp_8] = bottemp._yscale - 4;
      eval(_temp_9)[_temp_10] = bottemp.vy + 3;
      if(eval(_temp_11)[_temp_12] <= _temp_13)
      {
         var _temp_1 = "_visible";
         bottemp[_temp_1] = 0;
      }
      b++;
   }
}
var b = 1;
while(true)
{
   var _temp_1 = 20;
   if(b > _temp_1)
   {
      break;
   }
   var _temp_6 = "b";
   var _temp_5 = "b";
   var _temp_4 = "vy";
   var _temp_3 = "bottemp";
   var _temp_2 = "vx";
   var _temp_1 = "bottemp";
   var bottemp = eval("bp" + b);
   eval(_temp_1)[_temp_2] = -15 + random(31);
   eval(_temp_3)[_temp_4] = -25 + random(21);
   set(_temp_6,eval(_temp_5) + 1);
}

/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeStr_4 = "3$"
 */
