package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_378:int = 0;
      
      private var var_1757:int = 0;
      
      private var var_1756:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_378;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1757;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1756;
      }
      
      public function flush() : Boolean
      {
         this.var_378 = 0;
         this.var_1757 = 0;
         this.var_1756 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_378 = param1.readInteger();
         this.var_1757 = param1.readInteger();
         this.var_1756 = param1.readString();
         return true;
      }
   }
}
