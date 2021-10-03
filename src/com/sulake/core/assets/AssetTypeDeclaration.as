package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2185:String;
      
      private var var_2184:Class;
      
      private var var_2186:Class;
      
      private var var_1628:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2185 = param1;
         this.var_2184 = param2;
         this.var_2186 = param3;
         if(rest == null)
         {
            this.var_1628 = new Array();
         }
         else
         {
            this.var_1628 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2185;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2184;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2186;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1628;
      }
   }
}
