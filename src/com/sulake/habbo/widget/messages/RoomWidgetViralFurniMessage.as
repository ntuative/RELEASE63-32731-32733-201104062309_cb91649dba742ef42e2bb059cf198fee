package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_843:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_170:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_378:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_378 = param1;
      }
   }
}
