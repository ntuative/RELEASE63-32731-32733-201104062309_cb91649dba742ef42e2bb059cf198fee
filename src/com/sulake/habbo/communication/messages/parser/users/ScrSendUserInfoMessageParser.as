package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1939:int = 1;
      
      public static const const_1598:int = 2;
       
      
      private var var_967:String;
      
      private var var_2831:int;
      
      private var var_2835:int;
      
      private var var_2834:int;
      
      private var var_2837:int;
      
      private var var_2833:Boolean;
      
      private var var_2204:Boolean;
      
      private var var_2205:int;
      
      private var var_2206:int;
      
      private var var_2832:Boolean;
      
      private var var_2838:int;
      
      private var var_2836:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_967 = param1.readString();
         this.var_2831 = param1.readInteger();
         this.var_2835 = param1.readInteger();
         this.var_2834 = param1.readInteger();
         this.var_2837 = param1.readInteger();
         this.var_2833 = param1.readBoolean();
         this.var_2204 = param1.readBoolean();
         this.var_2205 = param1.readInteger();
         this.var_2206 = param1.readInteger();
         this.var_2832 = param1.readBoolean();
         this.var_2838 = param1.readInteger();
         this.var_2836 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_967;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2831;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2835;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2834;
      }
      
      public function get responseType() : int
      {
         return this.var_2837;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2833;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2204;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2205;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2206;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2832;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2838;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2836;
      }
   }
}
