package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_640:String;
      
      private var var_2462:String;
      
      private var var_968:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_640 = param1;
         this.var_968 = param2;
         this.var_2462 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function get race() : String
      {
         return this.var_2462;
      }
      
      public function get gender() : String
      {
         return this.var_968;
      }
   }
}
