package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1283:Boolean;
      
      private var var_2840:int;
      
      private var var_2841:String;
      
      private var var_374:int;
      
      private var var_2843:int;
      
      private var var_2575:String;
      
      private var var_2839:String;
      
      private var var_2842:String;
      
      private var var_872:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_872 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1283 = false;
            return;
         }
         this.var_1283 = true;
         this.var_2840 = int(_loc2_);
         this.var_2841 = param1.readString();
         this.var_374 = int(param1.readString());
         this.var_2843 = param1.readInteger();
         this.var_2575 = param1.readString();
         this.var_2839 = param1.readString();
         this.var_2842 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_872.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2840;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2841;
      }
      
      public function get flatId() : int
      {
         return this.var_374;
      }
      
      public function get eventType() : int
      {
         return this.var_2843;
      }
      
      public function get eventName() : String
      {
         return this.var_2575;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2839;
      }
      
      public function get creationTime() : String
      {
         return this.var_2842;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1283;
      }
   }
}
