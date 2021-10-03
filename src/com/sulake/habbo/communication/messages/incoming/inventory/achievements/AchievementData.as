package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1565:int;
      
      private var var_332:String;
      
      private var var_2143:int;
      
      private var var_2142:int;
      
      private var var_2033:int;
      
      private var var_2141:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1565 = param1.readInteger();
         this.var_332 = param1.readString();
         this.var_2143 = param1.readInteger();
         this.var_2142 = param1.readInteger();
         this.var_2033 = param1.readInteger();
         this.var_2141 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_332;
      }
      
      public function get level() : int
      {
         return this.var_1565;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2143;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2142;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2033;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2141;
      }
   }
}
