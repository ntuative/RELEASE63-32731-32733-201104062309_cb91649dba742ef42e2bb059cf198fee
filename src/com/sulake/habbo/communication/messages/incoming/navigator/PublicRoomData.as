package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2256:String;
      
      private var var_2260:int;
      
      private var var_2259:int;
      
      private var var_2258:String;
      
      private var var_2257:int;
      
      private var var_1957:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2256 = param1.readString();
         this.var_2260 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         this.var_2258 = param1.readString();
         this.var_2257 = param1.readInteger();
         this.var_1957 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2256;
      }
      
      public function get unitPort() : int
      {
         return this.var_2260;
      }
      
      public function get worldId() : int
      {
         return this.var_2259;
      }
      
      public function get castLibs() : String
      {
         return this.var_2258;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2257;
      }
      
      public function get nodeId() : int
      {
         return this.var_1957;
      }
   }
}
