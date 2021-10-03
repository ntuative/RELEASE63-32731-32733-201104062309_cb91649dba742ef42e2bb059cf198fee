package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1452:Boolean = false;
      
      private var var_1876:int;
      
      private var var_1678:Array;
      
      private var var_733:Array;
      
      private var var_734:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1452 = _loc2_.isWrappingEnabled;
         this.var_1876 = _loc2_.wrappingPrice;
         this.var_1678 = _loc2_.stuffTypes;
         this.var_733 = _loc2_.boxTypes;
         this.var_734 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1452;
      }
      
      public function get price() : int
      {
         return this.var_1876;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1678;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_733;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_734;
      }
   }
}
