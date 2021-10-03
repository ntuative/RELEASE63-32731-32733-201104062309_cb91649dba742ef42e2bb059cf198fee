package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_374:int;
      
      private var var_2580:int;
      
      private var var_2655:Boolean;
      
      private var var_2234:int;
      
      private var _ownerName:String;
      
      private var var_120:RoomData;
      
      private var var_771:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_374 = param1.readInteger();
         this.var_2580 = param1.readInteger();
         this.var_2655 = param1.readBoolean();
         this.var_2234 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_120 = new RoomData(param1);
         this.var_771 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_120 != null)
         {
            this.var_120.dispose();
            this.var_120 = null;
         }
         if(this.var_771 != null)
         {
            this.var_771.dispose();
            this.var_771 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get userCount() : int
      {
         return this.var_2580;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2655;
      }
      
      public function get ownerId() : int
      {
         return this.var_2234;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_120;
      }
      
      public function get event() : RoomData
      {
         return this.var_771;
      }
   }
}
