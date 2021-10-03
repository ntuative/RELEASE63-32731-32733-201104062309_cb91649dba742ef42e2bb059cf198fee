package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_407:int;
      
      private var _type:String;
      
      private var var_1626:String;
      
      private var var_1624:int;
      
      private var var_1623:String;
      
      private var var_716:String;
      
      private var var_1625:String;
      
      private var var_2179:String;
      
      private var var_2180:uint;
      
      private var var_2178:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_407 = param1.readInteger();
         this._type = param1.readString();
         this.var_1626 = param1.readString();
         this.var_1624 = param1.readInteger();
         this.var_1623 = param1.readString();
         this.var_716 = param1.readString();
         this.var_2179 = param1.readString();
         this.var_2178 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_716.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_716.charAt(_loc3_)))
         {
            _loc2_ = this.var_716.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1625 = this.var_716.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1625 = this.var_716;
         }
         this.var_2180 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_407 = 0;
         this._type = "";
         this.var_1626 = "";
         this.var_1624 = 0;
         this.var_1623 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_407;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1626;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1624;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1623;
      }
      
      public function get localizationCode() : String
      {
         return this.var_716;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2180;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2178;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1625;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2179;
      }
   }
}
