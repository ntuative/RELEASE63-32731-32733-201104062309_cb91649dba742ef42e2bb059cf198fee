package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_786;
         param1["bitmap"] = const_838;
         param1["border"] = const_666;
         param1["border_notify"] = const_1600;
         param1["button"] = const_517;
         param1["button_thick"] = const_648;
         param1["button_icon"] = const_1506;
         param1["button_group_left"] = const_889;
         param1["button_group_center"] = const_869;
         param1["button_group_right"] = const_915;
         param1["canvas"] = const_812;
         param1["checkbox"] = const_692;
         param1["closebutton"] = const_1021;
         param1["container"] = const_358;
         param1["container_button"] = const_857;
         param1["display_object_wrapper"] = const_728;
         param1["dropmenu"] = const_566;
         param1["dropmenu_item"] = const_461;
         param1["frame"] = const_421;
         param1["frame_notify"] = const_1493;
         param1["header"] = const_656;
         param1["html"] = const_1157;
         param1["icon"] = const_1177;
         param1["itemgrid"] = const_1212;
         param1["itemgrid_horizontal"] = const_535;
         param1["itemgrid_vertical"] = const_891;
         param1["itemlist"] = const_1064;
         param1["itemlist_horizontal"] = const_395;
         param1["itemlist_vertical"] = const_412;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1712;
         param1["menu"] = const_1670;
         param1["menu_item"] = const_1572;
         param1["submenu"] = const_1089;
         param1["minimizebox"] = const_1564;
         param1["notify"] = const_1662;
         param1["null"] = const_745;
         param1["password"] = const_671;
         param1["radiobutton"] = const_748;
         param1["region"] = const_579;
         param1["restorebox"] = const_1452;
         param1["scaler"] = const_495;
         param1["scaler_horizontal"] = const_1475;
         param1["scaler_vertical"] = const_1437;
         param1["scrollbar_horizontal"] = const_603;
         param1["scrollbar_vertical"] = const_769;
         param1["scrollbar_slider_button_up"] = const_1022;
         param1["scrollbar_slider_button_down"] = const_1037;
         param1["scrollbar_slider_button_left"] = const_1023;
         param1["scrollbar_slider_button_right"] = const_1074;
         param1["scrollbar_slider_bar_horizontal"] = const_1180;
         param1["scrollbar_slider_bar_vertical"] = const_1056;
         param1["scrollbar_slider_track_horizontal"] = const_1066;
         param1["scrollbar_slider_track_vertical"] = const_1049;
         param1["scrollable_itemlist"] = const_1697;
         param1["scrollable_itemlist_vertical"] = const_577;
         param1["scrollable_itemlist_horizontal"] = const_1128;
         param1["selector"] = const_779;
         param1["selector_list"] = const_831;
         param1["submenu"] = const_1089;
         param1["tab_button"] = const_584;
         param1["tab_container_button"] = const_1185;
         param1["tab_context"] = const_521;
         param1["tab_content"] = const_1229;
         param1["tab_selector"] = const_909;
         param1["text"] = const_491;
         param1["input"] = const_801;
         param1["toolbar"] = const_1550;
         param1["tooltip"] = const_392;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
