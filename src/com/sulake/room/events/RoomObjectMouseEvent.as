package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_144:String = "ROE_MOUSE_CLICK";
      
      public static const const_1885:String = "ROE_MOUSE_ENTER";
      
      public static const const_539:String = "ROE_MOUSE_MOVE";
      
      public static const const_1921:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1782:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2007:String = "";
      
      private var var_2685:Boolean;
      
      private var var_2684:Boolean;
      
      private var var_2683:Boolean;
      
      private var var_2682:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2007 = param2;
         this.var_2685 = param5;
         this.var_2684 = param6;
         this.var_2683 = param7;
         this.var_2682 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2007;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2685;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2684;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2683;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2682;
      }
   }
}
