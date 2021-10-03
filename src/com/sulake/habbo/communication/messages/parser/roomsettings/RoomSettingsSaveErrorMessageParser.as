package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1950:int = 1;
      
      public static const const_1924:int = 2;
      
      public static const const_1955:int = 3;
      
      public static const const_1922:int = 4;
      
      public static const const_1603:int = 5;
      
      public static const const_1899:int = 6;
      
      public static const const_1429:int = 7;
      
      public static const const_1439:int = 8;
      
      public static const const_1793:int = 9;
      
      public static const const_1450:int = 10;
      
      public static const const_1463:int = 11;
      
      public static const const_1481:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1594:int;
      
      private var var_1558:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1594 = param1.readInteger();
         this.var_1558 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1594;
      }
      
      public function get info() : String
      {
         return this.var_1558;
      }
   }
}
