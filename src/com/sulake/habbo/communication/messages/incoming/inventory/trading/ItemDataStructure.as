package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2273:int;
      
      private var var_1455:String;
      
      private var var_2278:int;
      
      private var var_2277:int;
      
      private var _category:int;
      
      private var var_2100:String;
      
      private var var_1526:int;
      
      private var var_2274:int;
      
      private var var_2271:int;
      
      private var var_2276:int;
      
      private var var_2272:int;
      
      private var var_2275:Boolean;
      
      private var var_2935:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2273 = param1;
         this.var_1455 = param2;
         this.var_2278 = param3;
         this.var_2277 = param4;
         this._category = param5;
         this.var_2100 = param6;
         this.var_1526 = param7;
         this.var_2274 = param8;
         this.var_2271 = param9;
         this.var_2276 = param10;
         this.var_2272 = param11;
         this.var_2275 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2273;
      }
      
      public function get itemType() : String
      {
         return this.var_1455;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2278;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2277;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2100;
      }
      
      public function get extra() : int
      {
         return this.var_1526;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2274;
      }
      
      public function get creationDay() : int
      {
         return this.var_2271;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2276;
      }
      
      public function get creationYear() : int
      {
         return this.var_2272;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2275;
      }
      
      public function get songID() : int
      {
         return this.var_1526;
      }
   }
}
