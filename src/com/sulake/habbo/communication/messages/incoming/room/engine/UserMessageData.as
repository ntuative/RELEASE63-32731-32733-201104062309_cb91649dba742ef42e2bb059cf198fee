package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1206:String = "M";
      
      public static const const_1602:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_150:Number = 0;
      
      private var var_149:Number = 0;
      
      private var var_364:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_975:String = "";
      
      private var var_640:String = "";
      
      private var var_2353:String = "";
      
      private var var_2358:int;
      
      private var var_2356:int = 0;
      
      private var var_2355:String = "";
      
      private var var_2357:int = 0;
      
      private var var_2354:int = 0;
      
      private var var_2352:String = "";
      
      private var var_182:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_182 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_182)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_364;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_364 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_182)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_182)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_975;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_975 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_640 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2353;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2353 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2358;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2358 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2356;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2356 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2355;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2355 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2357;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2357 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2354;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2354 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2352;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2352 = param1;
         }
      }
   }
}
