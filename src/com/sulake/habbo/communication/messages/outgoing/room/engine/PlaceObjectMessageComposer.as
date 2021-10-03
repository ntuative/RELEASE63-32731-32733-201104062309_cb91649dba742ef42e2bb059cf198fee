package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_378:int;
      
      private var var_2145:int;
      
      private var var_1900:String;
      
      private var _x:int = 0;
      
      private var var_150:int = 0;
      
      private var var_364:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_378 = param1;
         this.var_2145 = param2;
         this.var_1900 = param3;
         this._x = param4;
         this.var_150 = param5;
         this.var_364 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2145)
         {
            case RoomObjectCategoryEnum.const_28:
               return [this.var_378 + " " + this._x + " " + this.var_150 + " " + this.var_364];
            case RoomObjectCategoryEnum.const_26:
               return [this.var_378 + " " + this.var_1900];
            default:
               return [];
         }
      }
   }
}
