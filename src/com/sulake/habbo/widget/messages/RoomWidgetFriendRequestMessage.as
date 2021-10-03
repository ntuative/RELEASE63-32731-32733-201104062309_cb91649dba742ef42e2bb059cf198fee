package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_653:String = "RWFRM_ACCEPT";
      
      public static const const_696:String = "RWFRM_DECLINE";
       
      
      private var var_1220:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this.var_1220 = param2;
      }
      
      public function get requestId() : int
      {
         return this.var_1220;
      }
   }
}
