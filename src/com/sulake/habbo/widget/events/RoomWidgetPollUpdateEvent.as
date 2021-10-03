package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_151:String = "RWPUW_OFFER";
      
      public static const const_73:String = "RWPUW_ERROR";
      
      public static const const_152:String = "RWPUW_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_1695:String;
      
      private var var_1384:int = 0;
      
      private var var_1727:String = "";
      
      private var var_1728:String = "";
      
      private var var_1385:Array = null;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this._id = param1;
         super(param2,param3,param4);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1695;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_1695 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1384;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1384 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1727;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1727 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1728;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1728 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1385;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1385 = param1;
      }
   }
}
