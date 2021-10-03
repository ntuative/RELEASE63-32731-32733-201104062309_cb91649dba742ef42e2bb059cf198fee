package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_524:int = -1;
      
      public static const const_1041:int = -1;
      
      private static const const_1282:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_150:int = 0;
      
      private var var_2323:int = 1;
      
      private var var_919:int = 1;
      
      private var var_1716:int = 1;
      
      private var var_2324:int = -1;
      
      private var var_2325:int = 0;
      
      private var var_2326:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_150 = param3;
         _loc9_.var_2326 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2323 = param4;
         if(param5 < 0)
         {
            param5 = const_524;
         }
         _loc9_.var_919 = param5;
         _loc9_.var_1716 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_2324 = param7;
            _loc9_.var_2325 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_150;
      }
      
      public function get repeats() : int
      {
         return this.var_2323;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_919;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2326;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_919 < 0)
         {
            return const_524;
         }
         return this.var_1716;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_919 > 0 && param1 > this.var_919)
         {
            param1 = this.var_919;
         }
         this.var_1716 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2324;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2325;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1282)
            {
               POOL.push(this);
            }
         }
      }
   }
}
