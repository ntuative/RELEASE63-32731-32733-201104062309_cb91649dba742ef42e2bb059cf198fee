package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_229:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2189:int = 0;
      
      private var var_2192:int = 0;
      
      private var var_2193:int = 0;
      
      private var var_2190:Boolean = false;
      
      private var var_2191:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_229,param6,param7);
         this.var_2189 = param1;
         this.var_2192 = param2;
         this.var_2193 = param3;
         this.var_2190 = param4;
         this.var_2191 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2189;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2192;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2193;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2190;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2191;
      }
   }
}
