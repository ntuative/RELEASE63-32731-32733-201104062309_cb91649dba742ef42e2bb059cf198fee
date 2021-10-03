package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2785:String = "";
      
      private var var_968:String;
      
      private var var_1459:Boolean;
      
      private var var_2495:Boolean = true;
      
      private var var_2787:int;
      
      private var var_2786:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2787 = parseInt(param1.@pattern);
         this.var_968 = String(param1.@gender);
         this.var_1459 = Boolean(parseInt(param1.@colorable));
         this.var_2785 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2495 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_968;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1459;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2495;
      }
      
      public function get patternId() : int
      {
         return this.var_2787;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2786;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2786 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2785;
      }
   }
}
