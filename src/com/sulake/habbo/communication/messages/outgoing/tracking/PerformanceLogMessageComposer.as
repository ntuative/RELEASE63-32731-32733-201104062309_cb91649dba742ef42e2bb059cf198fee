package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2480:int = 0;
      
      private var var_1540:String = "";
      
      private var var_1990:String = "";
      
      private var var_2482:String = "";
      
      private var var_2484:String = "";
      
      private var var_1835:int = 0;
      
      private var var_2483:int = 0;
      
      private var var_2481:int = 0;
      
      private var var_1538:int = 0;
      
      private var var_2479:int = 0;
      
      private var var_1541:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2480 = param1;
         this.var_1540 = param2;
         this.var_1990 = param3;
         this.var_2482 = param4;
         this.var_2484 = param5;
         if(param6)
         {
            this.var_1835 = 1;
         }
         else
         {
            this.var_1835 = 0;
         }
         this.var_2483 = param7;
         this.var_2481 = param8;
         this.var_1538 = param9;
         this.var_2479 = param10;
         this.var_1541 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2480,this.var_1540,this.var_1990,this.var_2482,this.var_2484,this.var_1835,this.var_2483,this.var_2481,this.var_1538,this.var_2479,this.var_1541];
      }
   }
}
