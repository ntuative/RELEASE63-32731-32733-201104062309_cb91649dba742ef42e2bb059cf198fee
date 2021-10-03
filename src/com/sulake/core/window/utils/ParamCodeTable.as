package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_196;
         param1["bound_to_parent_rect"] = const_100;
         param1["child_window"] = const_1178;
         param1["embedded_controller"] = const_1148;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_900;
         param1["mouse_dragging_target"] = const_247;
         param1["mouse_dragging_trigger"] = const_370;
         param1["mouse_scaling_target"] = const_345;
         param1["mouse_scaling_trigger"] = const_548;
         param1["horizontal_mouse_scaling_trigger"] = const_252;
         param1["vertical_mouse_scaling_trigger"] = const_237;
         param1["observe_parent_input_events"] = const_1191;
         param1["optimize_region_to_layout_size"] = const_555;
         param1["parent_window"] = const_1028;
         param1["relative_horizontal_scale_center"] = const_193;
         param1["relative_horizontal_scale_fixed"] = const_130;
         param1["relative_horizontal_scale_move"] = const_371;
         param1["relative_horizontal_scale_strech"] = const_405;
         param1["relative_scale_center"] = const_1159;
         param1["relative_scale_fixed"] = const_639;
         param1["relative_scale_move"] = const_1189;
         param1["relative_scale_strech"] = const_1063;
         param1["relative_vertical_scale_center"] = const_205;
         param1["relative_vertical_scale_fixed"] = const_148;
         param1["relative_vertical_scale_move"] = const_259;
         param1["relative_vertical_scale_strech"] = const_296;
         param1["on_resize_align_left"] = const_726;
         param1["on_resize_align_right"] = const_492;
         param1["on_resize_align_center"] = const_469;
         param1["on_resize_align_top"] = const_674;
         param1["on_resize_align_bottom"] = const_541;
         param1["on_resize_align_middle"] = const_520;
         param1["on_accommodate_align_left"] = const_1129;
         param1["on_accommodate_align_right"] = const_549;
         param1["on_accommodate_align_center"] = const_874;
         param1["on_accommodate_align_top"] = const_1145;
         param1["on_accommodate_align_bottom"] = const_558;
         param1["on_accommodate_align_middle"] = const_905;
         param1["route_input_events_to_parent"] = const_523;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1124;
         param1["scalable_with_mouse"] = const_1109;
         param1["reflect_horizontal_resize_to_parent"] = const_551;
         param1["reflect_vertical_resize_to_parent"] = const_488;
         param1["reflect_resize_to_parent"] = const_331;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1194;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
