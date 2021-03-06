package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2290:int;
      
      private var var_2288:int;
      
      private var var_2291:int;
      
      private var _dayOffsets:Array;
      
      private var var_1860:Array;
      
      private var var_1861:Array;
      
      private var var_2287:int;
      
      private var var_2289:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2290;
      }
      
      public function get offerCount() : int
      {
         return this.var_2288;
      }
      
      public function get historyLength() : int
      {
         return this.var_2291;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1860;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1861;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2287;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2289;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2290 = param1.readInteger();
         this.var_2288 = param1.readInteger();
         this.var_2291 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1860 = [];
         this.var_1861 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1860.push(param1.readInteger());
            this.var_1861.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2289 = param1.readInteger();
         this.var_2287 = param1.readInteger();
         return true;
      }
   }
}
