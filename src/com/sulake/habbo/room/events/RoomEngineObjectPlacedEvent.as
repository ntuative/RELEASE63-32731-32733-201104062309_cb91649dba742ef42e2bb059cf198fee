package com.sulake.habbo.room.events
{
   public class RoomEngineObjectPlacedEvent extends RoomEngineObjectEvent
   {
       
      
      private var var_1900:String = "";
      
      private var _x:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_149:Number = 0;
      
      private var _direction:int = 0;
      
      private var var_2775:Boolean = false;
      
      public function RoomEngineObjectPlacedEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:int, param11:Boolean, param12:Boolean = false, param13:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param12,param13);
         this.var_1900 = param6;
         this._x = param7;
         this.var_150 = param8;
         this.var_149 = param9;
         this._direction = param10;
         this.var_2775 = param11;
      }
      
      public function get wallLocation() : String
      {
         return this.var_1900;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_150;
      }
      
      public function get z() : Number
      {
         return this.var_149;
      }
      
      public function get direction() : int
      {
         return this._direction;
      }
      
      public function get placedInRoom() : Boolean
      {
         return this.var_2775;
      }
   }
}
