package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_901:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_332:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_901);
         this.var_332 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_332;
      }
   }
}
