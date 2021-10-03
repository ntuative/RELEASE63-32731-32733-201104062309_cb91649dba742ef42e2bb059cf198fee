package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1597:int;
      
      private var var_1951:Number;
      
      private var var_2713:Number;
      
      private var var_2716:int;
      
      private var var_2715:Number;
      
      private var var_2714:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1597 = param1;
         this.var_1951 = param2;
         this.var_2713 = param3;
         this.var_2715 = param4;
         this.var_2714 = param5;
         this.var_2716 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1597;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1951 < 0)
         {
            return 0;
         }
         return this.var_1951 + (getTimer() - this.var_2716) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2713;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2715;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2714;
      }
   }
}
