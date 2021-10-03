package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2298:Number;
      
      private var var_1947:Number;
      
      private var var_905:Number;
      
      private var var_511:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2298 = param1;
         this.var_1947 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_905 = param1;
         this.var_511 = 0;
      }
      
      public function update() : void
      {
         this.var_905 += this.var_1947;
         this.var_511 += this.var_905;
         if(this.var_511 > 0)
         {
            this.var_511 = 0;
            this.var_905 = this.var_2298 * -1 * this.var_905;
         }
      }
      
      public function get location() : Number
      {
         return this.var_511;
      }
   }
}
