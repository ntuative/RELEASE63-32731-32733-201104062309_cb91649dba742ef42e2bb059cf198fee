package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_149:Number = 0;
      
      private var var_2515:Number = 0;
      
      private var var_2512:Number = 0;
      
      private var var_2511:Number = 0;
      
      private var var_2514:Number = 0;
      
      private var var_364:int = 0;
      
      private var var_2510:int = 0;
      
      private var var_336:Array;
      
      private var var_2513:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_336 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_150 = param3;
         this.var_149 = param4;
         this.var_2515 = param5;
         this.var_364 = param6;
         this.var_2510 = param7;
         this.var_2512 = param8;
         this.var_2511 = param9;
         this.var_2514 = param10;
         this.var_2513 = param11;
         this.var_336 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get localZ() : Number
      {
         return this.var_2515;
      }
      
      public function get targetX() : Number
      {
         return this.var_2512;
      }
      
      public function get targetY() : Number
      {
         return this.var_2511;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2514;
      }
      
      public function get dir() : int
      {
         return this.var_364;
      }
      
      public function get dirHead() : int
      {
         return this.var_2510;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2513;
      }
      
      public function get actions() : Array
      {
         return this.var_336.slice();
      }
   }
}
