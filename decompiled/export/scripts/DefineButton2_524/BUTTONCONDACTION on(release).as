on(release){
   var _temp_13 = "bi";
   var _temp_12 = 1;
   var _temp_11 = "birdgo";
   var _temp_10 = "mainclip";
   var _temp_9 = "scaleclip";
   var _temp_8 = "_root";
   var _temp_7 = "gameon";
   var _temp_6 = "mainclip";
   var _temp_5 = "scaleclip";
   var _temp_4 = "_root";
   var _temp_3 = 0;
   var _temp_2 = "start";
   var _temp_1 = 119;
   var _temp_1 = "allsounds";
   _root[_temp_1][_temp_1][_temp_2]();
   eval(_temp_4)[_temp_5][_temp_6][_temp_7] = 1;
   eval(_temp_8)[_temp_9][_temp_10][_temp_11] = 1;
   var _temp_13 = _temp_12;
   while(true)
   {
      var _temp_1 = 6;
      if(bi > _temp_1)
      {
         break;
      }
      "bi"; //unpopped
      "bi"; //unpopped
      var _temp_22 = 1;
      var _temp_20 = "2\"";
      var _temp_18 = 1;
      var _temp_17 = "2\"";
      var _temp_16 = "2\"";
      var _temp_15 = 18;
      var _temp_14 = 6;
      var birdclip = eval("_root.scaleclip.mainclip.birdclip" + bi);
      var _temp_16 = _temp_15 + random(_temp_14);
      var _temp_19 = eval(_temp_17);
      birdclip.wing1.gotoAndPlay();
      var _temp_21 = eval(_temp_19);
      birdclip.wing2.gotoAndPlay();
      set(_temp_22,eval(_temp_21) + 1);
   }
   var _temp_24 = "starttime";
   var _temp_23 = "mainclip";
   var _temp_1 = "scaleclip";
   _root[_temp_1][_temp_23][_temp_24] = getTimer();
   var _temp_27 = "_visible";
   var _temp_26 = "pausebox";
   var _temp_25 = "_root";
   _root.scaleclip.mainclip.Shoot2();
   eval(_temp_25)[_temp_26][_temp_27] = 0;
}
