onClipEvent(enterFrame){
   var _temp_1 = 100;
   var _temp_1 = "_y";
   if(_parent[_temp_1] < _temp_1)
   {
      var _temp_5 = "xvel";
      var _temp_4 = "_parent";
      var _temp_3 = "_x";
      var _temp_2 = "_parent";
      var _temp_1 = "_y";
      _parent[_temp_1] = _parent._y + _parent.yvel;
      eval(_temp_2)[_temp_3] = _parent._x + _parent.xvel;
      eval(_temp_4)[_temp_5] = _parent.xvel / 1.1;
   }
   else
   {
      var _temp_6 = 0;
      var _temp_1 = "stop";
      this[_temp_1]();
   }
}
