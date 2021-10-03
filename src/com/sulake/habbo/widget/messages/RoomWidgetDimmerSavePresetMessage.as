package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_665:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2599:int;
      
      private var var_2597:int;
      
      private var _color:uint;
      
      private var var_1259:int;
      
      private var var_2598:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_665);
         this.var_2599 = param1;
         this.var_2597 = param2;
         this._color = param3;
         this.var_1259 = param4;
         this.var_2598 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2599;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2597;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1259;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2598;
      }
   }
}
