onClipEvent(enterFrame){
   var _temp_4 = 1;
   var _temp_3 = "for";
   var _temp_2 = "for";
   var _temp_1 = 0;
   var _temp_1 = "getEndIndex";
   set(_temp_2,Selection[_temp_1]() - Selection.getBeginIndex());
   if(eval(_temp_3) < _temp_4)
   {
      var _temp_9 = 0;
      var _temp_8 = "length";
      var _temp_7 = "5";
      var _temp_6 = "5";
      var _temp_5 = 0;
      var _temp_1 = "getFocus";
      set(_temp_6,Selection[_temp_1]());
      Selection.setSelection(_temp_9,eval(eval(_temp_7))[_temp_8]);
   }
   set("get ",1);
}
