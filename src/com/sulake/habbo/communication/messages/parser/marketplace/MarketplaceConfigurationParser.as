package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1452:Boolean;
      
      private var var_2201:int;
      
      private var var_1896:int;
      
      private var var_1897:int;
      
      private var var_2198:int;
      
      private var var_2199:int;
      
      private var var_2200:int;
      
      private var var_2197:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1452;
      }
      
      public function get commission() : int
      {
         return this.var_2201;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1896;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1897;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2199;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2198;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2200;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2197;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1452 = param1.readBoolean();
         this.var_2201 = param1.readInteger();
         this.var_1896 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_2199 = param1.readInteger();
         this.var_2198 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         return true;
      }
   }
}
