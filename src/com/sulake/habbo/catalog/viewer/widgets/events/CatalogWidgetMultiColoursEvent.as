package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_1012:Array;
      
      private var var_2252:String;
      
      private var var_2253:String;
      
      private var var_2251:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_1012 = param1;
         this.var_2252 = param2;
         this.var_2253 = param3;
         this.var_2251 = param4;
      }
      
      public function get method_2() : Array
      {
         return this.var_1012;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2252;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2253;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2251;
      }
   }
}
