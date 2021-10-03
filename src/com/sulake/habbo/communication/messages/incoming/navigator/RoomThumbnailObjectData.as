package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1560:int;
      
      private var var_1559:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1560 = this.var_1560;
         _loc1_.var_1559 = this.var_1559;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1560 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1559 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1560;
      }
      
      public function get imgId() : int
      {
         return this.var_1559;
      }
   }
}
