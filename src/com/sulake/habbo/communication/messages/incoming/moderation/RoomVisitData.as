package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1608:Boolean;
      
      private var _roomId:int;
      
      private var var_973:String;
      
      private var var_2532:int;
      
      private var var_2533:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1608 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_973 = param1.readString();
         this.var_2532 = param1.readInteger();
         this.var_2533 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1608;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_973;
      }
      
      public function get enterHour() : int
      {
         return this.var_2532;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2533;
      }
   }
}
