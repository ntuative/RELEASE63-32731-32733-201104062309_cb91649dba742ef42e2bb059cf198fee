package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_895:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1197:String = "inventory_effects";
      
      public static const const_1075:String = "inventory_badges";
      
      public static const const_1466:String = "inventory_clothes";
      
      public static const const_1657:String = "inventory_furniture";
       
      
      private var var_2216:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_895);
         this.var_2216 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2216;
      }
   }
}
