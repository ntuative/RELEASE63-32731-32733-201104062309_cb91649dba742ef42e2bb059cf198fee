package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1744:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_202:MsgWithRequestId;
      
      private var var_613:RoomEventData;
      
      private var var_2373:Boolean;
      
      private var var_2365:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2123:int;
      
      private var var_255:GuestRoomData;
      
      private var var_925:PublicRoomShortData;
      
      private var var_2370:int;
      
      private var var_2367:Boolean;
      
      private var var_2372:int;
      
      private var var_2364:Boolean;
      
      private var var_1731:int;
      
      private var var_2369:Boolean;
      
      private var var_1387:Array;
      
      private var var_1386:Array;
      
      private var var_2371:int;
      
      private var var_1388:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1126:Boolean;
      
      private var var_2368:int;
      
      private var var_2366:Boolean;
      
      private var var_2374:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1387 = new Array();
         this.var_1386 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_255 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_255 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_925 = null;
         this.var_255 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_925 = param1.publicSpace;
            this.var_613 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_613 != null)
         {
            this.var_613.dispose();
            this.var_613 = null;
         }
         if(this.var_925 != null)
         {
            this.var_925.dispose();
            this.var_925 = null;
         }
         if(this.var_255 != null)
         {
            this.var_255.dispose();
            this.var_255 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_255 != null)
         {
            this.var_255.dispose();
         }
         this.var_255 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_613 != null)
         {
            this.var_613.dispose();
         }
         this.var_613 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_202 != null && this.var_202 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1126 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1126 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_202 = param1;
         this.var_1126 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_202 == null)
         {
            return;
         }
         this.var_202.dispose();
         this.var_202 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_202 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_202 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_202 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_613;
      }
      
      public function get avatarId() : int
      {
         return this.var_2123;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2373;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2365;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_255;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_925;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2367;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2372;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1731;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2364;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2368;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2370;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2369;
      }
      
      public function get adIndex() : int
      {
         return this.var_2374;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2366;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2123 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2372 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2367 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2373 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2365 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1731 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2369 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2374 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2366 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1387 = param1;
         this.var_1386 = new Array();
         for each(_loc2_ in this.var_1387)
         {
            if(_loc2_.visible)
            {
               this.var_1386.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1387;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1386;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2371 = param1.limit;
         this.var_1388 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1388 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_255.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_255 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_255.flatId;
         return this.var_1731 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function method_13() : Boolean
      {
         return this.var_1388 >= this.var_2371;
      }
      
      public function startLoading() : void
      {
         this.var_1126 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1126;
      }
   }
}
