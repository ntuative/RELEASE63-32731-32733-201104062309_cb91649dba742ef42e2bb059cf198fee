package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1732:String;
      
      private var var_1876:int;
      
      private var var_2634:Boolean;
      
      private var var_2632:Boolean;
      
      private var var_2637:int;
      
      private var var_2636:int;
      
      private var var_345:ICatalogPage;
      
      private var var_2635:int;
      
      private var var_2638:int;
      
      private var var_2633:int;
      
      private var var_1355:String;
      
      private var var_2847:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1732 = param2;
         this.var_1876 = param3;
         this.var_2634 = param4;
         this.var_2632 = param5;
         this.var_2637 = param6;
         this.var_2636 = param7;
         this.var_2635 = param8;
         this.var_2638 = param9;
         this.var_2633 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1355;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1355 = param1;
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_209;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1876;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_345;
      }
      
      public function get priceType() : String
      {
         return Offer.const_880;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1732;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_345 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2847;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2847 = param1;
      }
   }
}
