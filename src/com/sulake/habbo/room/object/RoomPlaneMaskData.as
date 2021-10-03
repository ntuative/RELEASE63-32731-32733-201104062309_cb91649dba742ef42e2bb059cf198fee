package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2156:Number = 0.0;
      
      private var var_2155:Number = 0.0;
      
      private var var_2154:Number = 0.0;
      
      private var var_2153:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2156 = param1;
         this.var_2155 = param2;
         this.var_2154 = param3;
         this.var_2153 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2156;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2155;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2154;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2153;
      }
   }
}
