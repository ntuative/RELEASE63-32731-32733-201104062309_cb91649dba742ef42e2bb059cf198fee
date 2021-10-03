package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_684:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_622:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_684);
         this.var_622 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_622;
      }
   }
}
