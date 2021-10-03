package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_851:int = 1;
      
      public static const const_719:int = 2;
      
      public static const const_741:int = 3;
      
      public static const const_1080:int = 4;
      
      public static const const_689:int = 5;
      
      public static const const_1125:int = 6;
       
      
      private var _type:int;
      
      private var var_1249:int;
      
      private var var_2157:String;
      
      private var var_2158:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1249 = param2;
         this.var_2157 = param3;
         this.var_2158 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2157;
      }
      
      public function get time() : String
      {
         return this.var_2158;
      }
      
      public function get senderId() : int
      {
         return this.var_1249;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
