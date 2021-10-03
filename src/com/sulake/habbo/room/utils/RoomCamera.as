package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_965:int = 3;
       
      
      private var var_2543:int = -1;
      
      private var var_2536:int = -2;
      
      private var var_227:Vector3d = null;
      
      private var var_205:Vector3d = null;
      
      private var var_1856:Vector3d;
      
      private var var_2542:Boolean = false;
      
      private var var_2539:Boolean = false;
      
      private var var_2541:Boolean = false;
      
      private var var_2544:Boolean = false;
      
      private var var_2540:int = 0;
      
      private var var_2537:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2545:int = 0;
      
      private var var_2538:int = 0;
      
      private var var_1665:int = -1;
      
      private var var_1454:int = 0;
      
      private var var_1855:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1856 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_205;
      }
      
      public function get targetId() : int
      {
         return this.var_2543;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2536;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1856;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2542;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2539;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2541;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2544;
      }
      
      public function get screenWd() : int
      {
         return this.var_2540;
      }
      
      public function get screenHt() : int
      {
         return this.var_2537;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get method_3() : int
      {
         return this.var_2545;
      }
      
      public function get roomHt() : int
      {
         return this.var_2538;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1665;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_227 != null && this.var_205 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2543 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1856.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2536 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2542 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2539 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2541 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2544 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2540 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2537 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1855 = true;
         }
      }
      
      public function set method_3(param1:int) : void
      {
         this.var_2545 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2538 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1665 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_227 == null)
         {
            this.var_227 = new Vector3d();
         }
         if(this.var_227.x != param1.x || this.var_227.y != param1.y || this.var_227.z != param1.z)
         {
            this.var_227.assign(param1);
            this.var_1454 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_227 = null;
         this.var_205 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_205 != null)
         {
            return;
         }
         this.var_205 = new Vector3d();
         this.var_205.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_205 == null)
         {
            this.var_205 = new Vector3d();
         }
         this.var_205.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_227 != null && this.var_205 != null)
         {
            ++this.var_1454;
            if(this.var_1855)
            {
               this.var_1855 = false;
               this.var_205 = this.var_227;
               this.var_227 = null;
               return;
            }
            _loc4_ = Vector3d.dif(this.var_227,this.var_205);
            if(_loc4_.length <= param2)
            {
               this.var_205 = this.var_227;
               this.var_227 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_965 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1454 <= const_965)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_205 = Vector3d.sum(this.var_205,_loc4_);
            }
         }
      }
   }
}
