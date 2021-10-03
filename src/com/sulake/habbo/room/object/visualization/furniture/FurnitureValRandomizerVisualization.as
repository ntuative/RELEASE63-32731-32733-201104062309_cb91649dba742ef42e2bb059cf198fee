package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_963:int = 20;
      
      private static const const_619:int = 10;
      
      private static const const_1317:int = 31;
      
      private static const const_1318:int = 32;
      
      private static const const_618:int = 30;
       
      
      private var var_306:Array;
      
      private var var_775:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_306 = new Array();
         super();
         super.setAnimation(const_618);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_775)
            {
               this.var_775 = true;
               this.var_306 = new Array();
               this.var_306.push(const_1317);
               this.var_306.push(const_1318);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_619)
         {
            if(this.var_775)
            {
               this.var_775 = false;
               this.var_306 = new Array();
               if(direction == 2)
               {
                  this.var_306.push(const_963 + 5 - param1);
                  this.var_306.push(const_619 + 5 - param1);
               }
               else
               {
                  this.var_306.push(const_963 + param1);
                  this.var_306.push(const_619 + param1);
               }
               this.var_306.push(const_618);
               return;
            }
            super.setAnimation(const_618);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_306.length > 0)
            {
               super.setAnimation(this.var_306.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
