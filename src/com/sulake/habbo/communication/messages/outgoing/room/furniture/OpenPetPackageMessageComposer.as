package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_378:int;
      
      private var var_2630:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_378 = param1;
         this.var_2630 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_378,this.var_2630];
      }
      
      public function dispose() : void
      {
      }
   }
}
