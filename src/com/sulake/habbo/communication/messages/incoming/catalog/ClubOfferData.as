package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1732:String;
      
      private var var_1876:int;
      
      private var var_2634:Boolean;
      
      private var var_2632:Boolean;
      
      private var var_2637:int;
      
      private var var_2636:int;
      
      private var var_2635:int;
      
      private var var_2638:int;
      
      private var var_2633:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1732 = param1.readString();
         this.var_1876 = param1.readInteger();
         this.var_2634 = param1.readBoolean();
         this.var_2632 = param1.readBoolean();
         this.var_2637 = param1.readInteger();
         this.var_2636 = param1.readInteger();
         this.var_2635 = param1.readInteger();
         this.var_2638 = param1.readInteger();
         this.var_2633 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1732;
      }
      
      public function get price() : int
      {
         return this.var_1876;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2634;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2632;
      }
      
      public function get periods() : int
      {
         return this.var_2637;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2636;
      }
      
      public function get year() : int
      {
         return this.var_2635;
      }
      
      public function get month() : int
      {
         return this.var_2638;
      }
      
      public function get day() : int
      {
         return this.var_2633;
      }
   }
}
