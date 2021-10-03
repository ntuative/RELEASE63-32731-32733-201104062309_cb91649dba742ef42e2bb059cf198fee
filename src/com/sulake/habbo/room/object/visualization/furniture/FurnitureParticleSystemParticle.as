package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_150:Number;
      
      private var var_149:Number;
      
      private var var_1945:Number;
      
      private var var_1943:Number;
      
      private var var_1946:Number;
      
      private var var_1232:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_536:int = 0;
      
      private var var_999:int;
      
      private var var_2700:Boolean = false;
      
      private var var_1944:Boolean = false;
      
      private var var_1537:Number;
      
      private var _alphaMultiplier:Number = 1.0;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get fade() : Boolean
      {
         return this.var_1944;
      }
      
      public function get alphaMultiplier() : Number
      {
         return this._alphaMultiplier;
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function get age() : int
      {
         return this.var_536;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null, param10:Boolean = false) : void
      {
         this._x = param1;
         this.var_150 = param2;
         this.var_149 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1945 = this._x - this._direction.x * param6;
         this.var_1943 = this.var_150 - this._direction.y * param6;
         this.var_1946 = this.var_149 - this._direction.z * param6;
         this.var_536 = 0;
         this.var_1232 = false;
         this.var_999 = param7;
         this.var_2700 = param8;
         this._frames = param9;
         this.var_1944 = param10;
         this._alphaMultiplier = 1;
         this.var_1537 = 0.5 + Math.random() * 0.5;
      }
      
      public function update() : void
      {
         ++this.var_536;
         if(this.var_536 == this.var_999)
         {
            this.ignite();
         }
         if(this.var_1944)
         {
            if(this.var_536 / this.var_999 > this.var_1537)
            {
               this._alphaMultiplier = (this.var_999 - this.var_536) / (this.var_999 * (1 - this.var_1537));
            }
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_536 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2700;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_536 <= this.var_999;
      }
      
      public function dispose() : void
      {
         this._direction = null;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_150;
      }
      
      public function get z() : Number
      {
         return this.var_149;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_150 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_149 = param1;
      }
      
      public function get lastX() : Number
      {
         return this.var_1945;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1232 = true;
         this.var_1945 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1943;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1232 = true;
         this.var_1943 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1946;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1232 = true;
         this.var_1946 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1232;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_150,this.var_149].toString();
      }
   }
}
