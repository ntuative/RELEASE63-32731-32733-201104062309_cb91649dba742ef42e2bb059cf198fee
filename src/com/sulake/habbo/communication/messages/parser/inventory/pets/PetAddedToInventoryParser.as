package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_947:PetData;
      
      private var var_2501:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_947 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_947 = new PetData(param1);
         this.var_2501 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return this.var_947;
      }
      
      public function get purchased() : Boolean
      {
         return this.var_2501;
      }
   }
}
