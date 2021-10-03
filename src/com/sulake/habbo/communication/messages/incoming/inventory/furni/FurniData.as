package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2493:int;
      
      private var var_1455:String;
      
      private var _objId:int;
      
      private var var_1831:int;
      
      private var _category:int;
      
      private var var_2100:String;
      
      private var var_2496:Boolean;
      
      private var var_2494:Boolean;
      
      private var var_2497:Boolean;
      
      private var var_2495:Boolean;
      
      private var var_2174:int;
      
      private var var_1526:int;
      
      private var var_1852:String = "";
      
      private var var_1597:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2493 = param1;
         this.var_1455 = param2;
         this._objId = param3;
         this.var_1831 = param4;
         this._category = param5;
         this.var_2100 = param6;
         this.var_2496 = param7;
         this.var_2494 = param8;
         this.var_2497 = param9;
         this.var_2495 = param10;
         this.var_2174 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1852 = param1;
         this.var_1526 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2493;
      }
      
      public function get itemType() : String
      {
         return this.var_1455;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1831;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2496;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2494;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2497;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2495;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2174;
      }
      
      public function get slotId() : String
      {
         return this.var_1852;
      }
      
      public function get songId() : int
      {
         return this.var_1597;
      }
      
      public function get extra() : int
      {
         return this.var_1526;
      }
   }
}
