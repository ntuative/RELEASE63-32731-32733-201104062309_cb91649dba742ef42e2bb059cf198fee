package com.sulake.habbo.widget.infostand
{
   import flash.utils.Dictionary;
   
   public class CommandConfiguration
   {
       
      
      private var var_2328:Array;
      
      private var var_1075:Dictionary;
      
      public function CommandConfiguration(param1:Array, param2:Array)
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.var_1075 = new Dictionary();
         super();
         this.var_2328 = param1;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            this.var_1075[_loc4_] = true;
            _loc3_++;
         }
      }
      
      public function get allCommandIds() : Array
      {
         return this.var_2328;
      }
      
      public function isEnabled(param1:int) : Boolean
      {
         return this.var_1075[param1] != null;
      }
   }
}
