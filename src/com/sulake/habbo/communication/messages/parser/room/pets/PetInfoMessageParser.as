package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1664:int;
      
      private var _name:String;
      
      private var var_1565:int;
      
      private var var_2239:int;
      
      private var var_2237:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_640:String;
      
      private var var_2240:int;
      
      private var var_2238:int;
      
      private var var_2236:int;
      
      private var var_2235:int;
      
      private var var_2234:int;
      
      private var _ownerName:String;
      
      private var var_536:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1664;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1565;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2239;
      }
      
      public function get experience() : int
      {
         return this.var_2237;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_640;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2240;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2238;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2236;
      }
      
      public function get respect() : int
      {
         return this.var_2235;
      }
      
      public function get ownerId() : int
      {
         return this.var_2234;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_536;
      }
      
      public function flush() : Boolean
      {
         this.var_1664 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1664 = param1.readInteger();
         this._name = param1.readString();
         this.var_1565 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this.var_2237 = param1.readInteger();
         this.var_2240 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2236 = param1.readInteger();
         this.var_640 = param1.readString();
         this.var_2235 = param1.readInteger();
         this.var_2234 = param1.readInteger();
         this.var_536 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
