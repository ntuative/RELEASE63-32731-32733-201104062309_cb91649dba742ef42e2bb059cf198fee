package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1642:int = 0;
      
      private var var_1643:int = 0;
      
      private var var_2591:int = 0;
      
      private var var_2592:Boolean = false;
      
      private var var_2204:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1642 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1643 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2591 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2592 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2204 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1642;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1643;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2591;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2592;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2204;
      }
   }
}
