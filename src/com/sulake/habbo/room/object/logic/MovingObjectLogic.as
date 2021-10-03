package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_642:int = 500;
      
      private static var var_1026:Vector3d = new Vector3d();
       
      
      private var var_551:Vector3d;
      
      private var var_92:Vector3d;
      
      private var var_1985:int = 0;
      
      private var var_2766:int;
      
      private var var_1139:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_551 = new Vector3d();
         this.var_92 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1985;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_92 = null;
         this.var_551 = null;
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1139 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               this.var_92.assign(param1.loc);
               _loc3_ = _loc2_.targetLoc;
               this.var_2766 = this.var_1985;
               this.var_551.assign(_loc3_);
               this.var_551.sub(this.var_92);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.var_551.length > 0)
         {
            _loc2_ = param1 - this.var_2766;
            if(_loc2_ > this.var_1139)
            {
               _loc2_ = this.var_1139;
            }
            var_1026.assign(this.var_551);
            var_1026.mul(_loc2_ / Number(this.var_1139));
            var_1026.add(this.var_92);
            if(object != null)
            {
               object.setLocation(var_1026);
            }
            if(_loc2_ == this.var_1139)
            {
               this.var_551.x = 0;
               this.var_551.y = 0;
               this.var_551.z = 0;
            }
         }
         this.var_1985 = param1;
      }
   }
}
