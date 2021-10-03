package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1842:int = 0;
      
      private var var_1841:int = 0;
      
      private var _activityPointType:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1842;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1841;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function flush() : Boolean
      {
         this.var_1842 = 0;
         this.var_1841 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1842 = param1.readInteger();
         this.var_1841 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         return true;
      }
   }
}
