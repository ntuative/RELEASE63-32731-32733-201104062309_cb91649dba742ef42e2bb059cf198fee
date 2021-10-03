package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1788:int;
      
      private var var_2437:int;
      
      private var var_827:int;
      
      private var var_552:Number;
      
      private var var_2436:Boolean;
      
      private var var_2438:int;
      
      private var var_1787:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_552);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2437 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2438 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2436 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_827;
         if(this.var_827 == 1)
         {
            this.var_552 = param1;
            this.var_1788 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_827);
            this.var_552 = this.var_552 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2436 && param3 - this.var_1788 >= this.var_2437)
         {
            this.var_827 = 0;
            if(this.var_1787 < this.var_2438)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1787;
               this.var_1788 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
