package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1891:int;
      
      private var var_2606:int;
      
      private var var_1460:int;
      
      private var var_2561:int;
      
      private var var_120:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1891 = param1.readInteger();
         this.var_2606 = param1.readInteger();
         this.var_1460 = param1.readInteger();
         this.var_2561 = param1.readInteger();
         this.var_120 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1891);
      }
      
      public function get callId() : int
      {
         return this.var_1891;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2606;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1460;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2561;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_120;
      }
   }
}
