package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_585:String = "RORMUM_ADD_MASK";
      
      public static const const_911:String = "RORMUM_ADD_MASK";
      
      public static const const_1646:String = "door";
      
      public static const const_602:String = "window";
      
      public static const const_257:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2487:String = "";
      
      private var var_2485:String = "";
      
      private var var_2488:Vector3d = null;
      
      private var var_2486:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2487 = param2;
         this.var_2485 = param3;
         if(param4 != null)
         {
            this.var_2488 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2486 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2487;
      }
      
      public function get maskType() : String
      {
         return this.var_2485;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2488;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2486;
      }
   }
}
