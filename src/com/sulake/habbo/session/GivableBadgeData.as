package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_332:int;
      
      private var var_2588:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_332 = param1;
         this.var_2588 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_332;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2588;
      }
   }
}
