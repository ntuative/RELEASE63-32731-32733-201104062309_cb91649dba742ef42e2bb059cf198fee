package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1565:int;
      
      private var var_1747:int;
      
      private var var_2142:int;
      
      private var var_2033:int;
      
      private var var_1566:int;
      
      private var var_2502:String = "";
      
      private var var_2546:String = "";
      
      private var var_2547:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1565 = param1.readInteger();
         this.var_2502 = param1.readString();
         this.var_1747 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_2033 = param1.readInteger();
         this.var_1566 = param1.readInteger();
         this.var_2547 = param1.readInteger();
         this.var_2546 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1565;
      }
      
      public function get points() : int
      {
         return this.var_1747;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2142;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2033;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1566;
      }
      
      public function get badgeID() : String
      {
         return this.var_2502;
      }
      
      public function get achievementID() : int
      {
         return this.var_2547;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2546;
      }
   }
}
