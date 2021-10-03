package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_106:String = "RWPIUE_PET_INFO";
       
      
      private var var_1565:int;
      
      private var var_2388:int;
      
      private var var_2237:int;
      
      private var var_2386:int;
      
      private var _energy:int;
      
      private var var_2385:int;
      
      private var _nutrition:int;
      
      private var var_2383:int;
      
      private var var_805:int;
      
      private var _petRespect:int;
      
      private var var_536:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_46:BitmapData;
      
      private var var_1280:int;
      
      private var var_2387:int;
      
      private var var_2384:Boolean;
      
      private var var_2234:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2168:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_106,param10,param11);
         this.var_1280 = param1;
         this.var_2387 = param2;
         this._name = param3;
         this._id = param4;
         this.var_46 = param5;
         this.var_2384 = param6;
         this.var_2234 = param7;
         this._ownerName = param8;
         this.var_2168 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1280;
      }
      
      public function get petRace() : int
      {
         return this.var_2387;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2384;
      }
      
      public function get ownerId() : int
      {
         return this.var_2234;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2168;
      }
      
      public function get age() : int
      {
         return this.var_536;
      }
      
      public function get level() : int
      {
         return this.var_1565;
      }
      
      public function get levelMax() : int
      {
         return this.var_2388;
      }
      
      public function get experience() : int
      {
         return this.var_2237;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2386;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2385;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2383;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_805;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1565 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2237 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2385 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2383 = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_805 = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_536 = param1;
      }
   }
}
