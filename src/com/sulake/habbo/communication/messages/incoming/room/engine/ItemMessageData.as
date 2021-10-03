package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2220:Boolean = false;
      
      private var var_2219:int = 0;
      
      private var var_2221:int = 0;
      
      private var var_2217:int = 0;
      
      private var var_2218:int = 0;
      
      private var var_150:Number = 0;
      
      private var var_149:Number = 0;
      
      private var var_364:String = "";
      
      private var _type:int = 0;
      
      private var var_2932:String = "";
      
      private var var_1526:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_182:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2220 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_182 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2220;
      }
      
      public function get wallX() : Number
      {
         return this.var_2219;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_2219 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2221;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_2221 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2217;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_2217 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2218;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_2218 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_150;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_150 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_149;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_149 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_364;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_364 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_182)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_182)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_182)
         {
            this._data = param1;
         }
      }
   }
}
