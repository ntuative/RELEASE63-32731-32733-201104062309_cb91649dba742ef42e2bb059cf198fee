package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1079:int = 0;
       
      
      private var var_421:BitmapData = null;
      
      private var var_1975:String = "";
      
      private var var_325:Boolean = true;
      
      private var var_2146:String = "";
      
      private var var_2149:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2148:String = "normal";
      
      private var var_1363:Boolean = false;
      
      private var var_1362:Boolean = false;
      
      private var _offset:Point;
      
      private var var_276:int = 0;
      
      private var _height:int = 0;
      
      private var var_1159:Number = 0;
      
      private var var_2152:Boolean = false;
      
      private var var_2151:Boolean = true;
      
      private var var_2147:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2150:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1079++;
      }
      
      public function dispose() : void
      {
         this.var_421 = null;
         this.var_276 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_421;
      }
      
      public function get assetName() : String
      {
         return this.var_1975;
      }
      
      public function get visible() : Boolean
      {
         return this.var_325;
      }
      
      public function get tag() : String
      {
         return this.var_2146;
      }
      
      public function get alpha() : int
      {
         return this.var_2149;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2148;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1362;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1363;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_276;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1159;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2152;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2151;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2147;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2150;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_276 = param1.width;
            this._height = param1.height;
         }
         this.var_421 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1975 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_325 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2146 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2149 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2148 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2150 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1363 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1362 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1159 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2152 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2151 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2147 = param1;
         ++this._updateID;
      }
   }
}
