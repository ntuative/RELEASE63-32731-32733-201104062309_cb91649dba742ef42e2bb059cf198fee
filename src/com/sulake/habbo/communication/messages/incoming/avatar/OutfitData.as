package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1852:int;
      
      private var var_2572:String;
      
      private var var_968:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1852 = param1.readInteger();
         this.var_2572 = param1.readString();
         this.var_968 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1852;
      }
      
      public function get figureString() : String
      {
         return this.var_2572;
      }
      
      public function get gender() : String
      {
         return this.var_968;
      }
   }
}
