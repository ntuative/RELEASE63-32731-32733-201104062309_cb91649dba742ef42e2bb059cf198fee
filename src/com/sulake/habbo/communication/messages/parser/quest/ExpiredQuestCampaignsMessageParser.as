package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ExpiredQuestCampaignsMessageParser implements IMessageParser
   {
       
      
      private var var_1505:Array;
      
      public function ExpiredQuestCampaignsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1505 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:* = null;
         this.var_1505 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            if(!(_loc4_ && _loc4_.length > 0))
            {
               return true;
            }
            this.var_1505.push(_loc4_);
            _loc3_++;
         }
         return true;
      }
      
      public function get campaignCodes() : Array
      {
         return this.var_1505;
      }
   }
}
