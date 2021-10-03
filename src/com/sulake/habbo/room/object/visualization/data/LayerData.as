package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_827:String = "";
      
      public static const const_393:int = 0;
      
      public static const const_538:int = 255;
      
      public static const const_646:Boolean = false;
      
      public static const const_583:int = 0;
      
      public static const const_455:int = 0;
      
      public static const const_403:int = 0;
      
      public static const const_1070:int = 1;
      
      public static const const_1084:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2146:String = "";
      
      private var var_1812:int = 0;
      
      private var var_2149:int = 255;
      
      private var var_2530:Boolean = false;
      
      private var var_2531:int = 0;
      
      private var var_2528:int = 0;
      
      private var var_2529:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2146 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2146;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1812 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1812;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2149 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2149;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2530 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2530;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2531 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2531;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2528 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2528;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2529 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2529;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
