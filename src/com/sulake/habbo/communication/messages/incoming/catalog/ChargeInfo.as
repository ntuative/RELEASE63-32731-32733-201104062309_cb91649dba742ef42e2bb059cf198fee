package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2641:int;
      
      private var var_2727:int;
      
      private var var_1143:int;
      
      private var var_1142:int;
      
      private var _activityPointType:int;
      
      private var var_2728:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2641 = param1.readInteger();
         this.var_2727 = param1.readInteger();
         this.var_1143 = param1.readInteger();
         this.var_1142 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2728 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2641;
      }
      
      public function get charges() : int
      {
         return this.var_2727;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1143;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1142;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2728;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
