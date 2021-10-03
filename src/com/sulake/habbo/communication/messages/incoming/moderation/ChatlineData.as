package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2128:int;
      
      private var var_2130:int;
      
      private var var_2127:int;
      
      private var var_2129:String;
      
      private var var_1637:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2128 = param1.readInteger();
         this.var_2130 = param1.readInteger();
         this.var_2127 = param1.readInteger();
         this.var_2129 = param1.readString();
         this.var_1637 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2128;
      }
      
      public function get minute() : int
      {
         return this.var_2130;
      }
      
      public function get chatterId() : int
      {
         return this.var_2127;
      }
      
      public function get chatterName() : String
      {
         return this.var_2129;
      }
      
      public function get msg() : String
      {
         return this.var_1637;
      }
   }
}
