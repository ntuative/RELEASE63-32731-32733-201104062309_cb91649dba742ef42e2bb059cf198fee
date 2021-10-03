package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1664:int;
      
      private var var_2630:String;
      
      private var var_1565:int;
      
      private var var_1280:int;
      
      private var var_1862:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1664 = param1.readInteger();
         this.var_2630 = param1.readString();
         this.var_1565 = param1.readInteger();
         this.var_1280 = param1.readInteger();
         this.var_1862 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1664;
      }
      
      public function get petName() : String
      {
         return this.var_2630;
      }
      
      public function get level() : int
      {
         return this.var_1565;
      }
      
      public function get petType() : int
      {
         return this.var_1280;
      }
      
      public function get breed() : int
      {
         return this.var_1862;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
