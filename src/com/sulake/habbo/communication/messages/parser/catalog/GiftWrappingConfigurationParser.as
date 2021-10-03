package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2569:Boolean;
      
      private var var_2570:int;
      
      private var var_1678:Array;
      
      private var var_733:Array;
      
      private var var_734:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2569;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2570;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1678 = [];
         this.var_733 = [];
         this.var_734 = [];
         this.var_2569 = param1.readBoolean();
         this.var_2570 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1678.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_733.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_734.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
