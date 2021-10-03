package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2652:String;
      
      private var var_1922:String;
      
      private var var_2653:String;
      
      private var var_1921:Boolean;
      
      private var var_1920:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2652 = String(param1["set-type"]);
         this.var_1922 = String(param1["flipped-set-type"]);
         this.var_2653 = String(param1["remove-set-type"]);
         this.var_1921 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1920 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1920;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2652;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1922;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2653;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1921;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1921 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1922 = param1;
      }
   }
}
