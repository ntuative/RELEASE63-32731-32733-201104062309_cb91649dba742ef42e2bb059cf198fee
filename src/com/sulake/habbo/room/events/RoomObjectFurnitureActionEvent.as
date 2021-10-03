package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_601:String = "ROFCAE_DICE_OFF";
      
      public static const const_482:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_484:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_596:String = "ROFCAE_STICKIE";
      
      public static const const_497:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_522:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_544:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_487:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_588:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_473:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_499:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_527:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_532:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_445:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_459:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_373:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_550:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
