package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_142:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1187:int = 2;
      
      public static const const_1184:int = 3;
      
      public static const const_1548:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1775:String = "";
      
      private var var_2358:int;
      
      private var var_2356:int = 0;
      
      private var var_2354:int = 0;
      
      private var var_640:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_279:Array;
      
      private var var_1730:Array;
      
      private var var_1400:int = 0;
      
      private var var_2360:String = "";
      
      private var var_2361:int = 0;
      
      private var var_2359:int = 0;
      
      private var var_1638:Boolean = false;
      
      private var var_1688:String = "";
      
      private var var_2415:Boolean = false;
      
      private var var_2416:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2412:Boolean = false;
      
      private var var_2409:Boolean = false;
      
      private var var_2413:Boolean = false;
      
      private var var_2410:Boolean = false;
      
      private var var_2408:Boolean = false;
      
      private var var_2411:Boolean = false;
      
      private var var_2414:int = 0;
      
      private var var_1639:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_279 = [];
         this.var_1730 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1775 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1775;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2358 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2358;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2356 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2356;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2354 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2354;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_640 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_279 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_279;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1730;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1730 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1400 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1400;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2360 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2360;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2415 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2415;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2412 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2412;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2409 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2409;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2413 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2413;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2410 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2410;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2408 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2408;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2411 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2411;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2414 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2414;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2416 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2416;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1639 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1639;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2361 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2361;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2359;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1638 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1638;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1688 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
   }
}
