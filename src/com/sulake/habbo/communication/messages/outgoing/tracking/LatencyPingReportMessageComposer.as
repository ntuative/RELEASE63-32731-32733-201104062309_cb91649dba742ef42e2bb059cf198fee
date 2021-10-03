package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2781:int;
      
      private var var_2780:int;
      
      private var var_2779:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2781 = param1;
         this.var_2780 = param2;
         this.var_2779 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2781,this.var_2780,this.var_2779];
      }
      
      public function dispose() : void
      {
      }
   }
}
