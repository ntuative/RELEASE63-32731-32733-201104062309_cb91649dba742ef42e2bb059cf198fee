package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_640:String;
      
      private var var_975:String;
      
      private var var_2267:String;
      
      private var var_1688:String;
      
      private var var_2263:int;
      
      private var var_2268:String;
      
      private var var_2264:int;
      
      private var var_2265:int;
      
      private var var_2266:int;
      
      private var _respectLeft:int;
      
      private var var_805:int;
      
      private var var_2269:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_640 = param1.readString();
         this.var_975 = param1.readString();
         this.var_2267 = param1.readString();
         this.var_1688 = param1.readString();
         this.var_2263 = param1.readInteger();
         this.var_2268 = param1.readString();
         this.var_2264 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_805 = param1.readInteger();
         this.var_2269 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function get customData() : String
      {
         return this.var_2267;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
      
      public function get tickets() : int
      {
         return this.var_2263;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2268;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2264;
      }
      
      public function get directMail() : int
      {
         return this.var_2265;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2266;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_805;
      }
      
      public function get identityId() : int
      {
         return this.var_2269;
      }
   }
}
