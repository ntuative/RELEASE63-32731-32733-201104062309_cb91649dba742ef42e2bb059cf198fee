package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_640:String;
      
      private var var_975:String;
      
      private var var_1868:String;
      
      private var var_2358:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function get customInfo() : String
      {
         return this.var_1868;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2358;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_640 = "";
         this.var_975 = "";
         this.var_1868 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_640 = param1.readString();
         this.var_975 = param1.readString();
         this.var_1868 = param1.readString();
         this.var_2358 = param1.readInteger();
         if(this.var_975)
         {
            this.var_975 = this.var_975.toUpperCase();
         }
         return true;
      }
   }
}
