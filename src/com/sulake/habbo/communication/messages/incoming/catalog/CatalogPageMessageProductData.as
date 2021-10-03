package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_76:String = "s";
      
      public static const const_182:String = "e";
       
      
      private var var_1422:String;
      
      private var var_2686:int;
      
      private var var_1420:String;
      
      private var var_1421:int;
      
      private var var_1791:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1422 = param1.readString();
         this.var_2686 = param1.readInteger();
         this.var_1420 = param1.readString();
         this.var_1421 = param1.readInteger();
         this.var_1791 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1422;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2686;
      }
      
      public function get extraParam() : String
      {
         return this.var_1420;
      }
      
      public function get productCount() : int
      {
         return this.var_1421;
      }
      
      public function get expiration() : int
      {
         return this.var_1791;
      }
   }
}
