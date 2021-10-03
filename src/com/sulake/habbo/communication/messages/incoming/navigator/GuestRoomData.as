package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_771:Boolean;
      
      private var var_973:String;
      
      private var _ownerName:String;
      
      private var var_2440:int;
      
      private var var_2580:int;
      
      private var var_2672:int;
      
      private var var_1615:String;
      
      private var var_2670:int;
      
      private var var_2442:Boolean;
      
      private var var_751:int;
      
      private var var_1580:int;
      
      private var var_2671:String;
      
      private var var_872:Array;
      
      private var var_2669:RoomThumbnailData;
      
      private var var_2625:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_872 = new Array();
         super();
         this.var_374 = param1.readInteger();
         this.var_771 = param1.readBoolean();
         this.var_973 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2440 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this.var_2672 = param1.readInteger();
         this.var_1615 = param1.readString();
         this.var_2670 = param1.readInteger();
         this.var_2442 = param1.readBoolean();
         this.var_751 = param1.readInteger();
         this.var_1580 = param1.readInteger();
         this.var_2671 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_872.push(_loc4_);
            _loc3_++;
         }
         this.var_2669 = new RoomThumbnailData(param1);
         this.var_2625 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_872 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get event() : Boolean
      {
         return this.var_771;
      }
      
      public function get roomName() : String
      {
         return this.var_973;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2440;
      }
      
      public function get userCount() : int
      {
         return this.var_2580;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2672;
      }
      
      public function get description() : String
      {
         return this.var_1615;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2670;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2442;
      }
      
      public function get score() : int
      {
         return this.var_751;
      }
      
      public function get categoryId() : int
      {
         return this.var_1580;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2671;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2669;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2625;
      }
   }
}
