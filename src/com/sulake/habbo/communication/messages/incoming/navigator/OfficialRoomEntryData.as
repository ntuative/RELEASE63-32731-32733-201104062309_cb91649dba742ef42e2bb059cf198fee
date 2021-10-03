package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1203:int = 1;
      
      public static const const_887:int = 2;
      
      public static const const_670:int = 3;
      
      public static const const_1488:int = 4;
       
      
      private var _index:int;
      
      private var var_2708:String;
      
      private var var_2711:String;
      
      private var var_2710:Boolean;
      
      private var var_2712:String;
      
      private var var_989:String;
      
      private var var_2709:int;
      
      private var var_2580:int;
      
      private var _type:int;
      
      private var var_2146:String;
      
      private var var_1003:GuestRoomData;
      
      private var var_1004:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2708 = param1.readString();
         this.var_2711 = param1.readString();
         this.var_2710 = param1.readInteger() == 1;
         this.var_2712 = param1.readString();
         this.var_989 = param1.readString();
         this.var_2709 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1203)
         {
            this.var_2146 = param1.readString();
         }
         else if(this._type == const_670)
         {
            this.var_1004 = new PublicRoomData(param1);
         }
         else if(this._type == const_887)
         {
            this.var_1003 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1003 != null)
         {
            this.var_1003.dispose();
            this.var_1003 = null;
         }
         if(this.var_1004 != null)
         {
            this.var_1004.dispose();
            this.var_1004 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2708;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2711;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2710;
      }
      
      public function get picText() : String
      {
         return this.var_2712;
      }
      
      public function get picRef() : String
      {
         return this.var_989;
      }
      
      public function get folderId() : int
      {
         return this.var_2709;
      }
      
      public function get tag() : String
      {
         return this.var_2146;
      }
      
      public function get userCount() : int
      {
         return this.var_2580;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1003;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1004;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1203)
         {
            return 0;
         }
         if(this.type == const_887)
         {
            return this.var_1003.maxUserCount;
         }
         if(this.type == const_670)
         {
            return this.var_1004.maxUsers;
         }
         return 0;
      }
   }
}
