package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1584:String = "WE_DESTROY";
      
      public static const const_332:String = "WE_DESTROYED";
      
      public static const const_1614:String = "WE_OPEN";
      
      public static const const_1562:String = "WE_OPENED";
      
      public static const const_1703:String = "WE_CLOSE";
      
      public static const const_1665:String = "WE_CLOSED";
      
      public static const const_1683:String = "WE_FOCUS";
      
      public static const const_313:String = "WE_FOCUSED";
      
      public static const const_1582:String = "WE_UNFOCUS";
      
      public static const const_1652:String = "WE_UNFOCUSED";
      
      public static const const_1426:String = "WE_ACTIVATE";
      
      public static const const_598:String = "WE_ACTIVATED";
      
      public static const const_1673:String = "WE_DEACTIVATE";
      
      public static const const_599:String = "WE_DEACTIVATED";
      
      public static const const_300:String = "WE_SELECT";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_587:String = "WE_UNSELECT";
      
      public static const const_582:String = "WE_UNSELECTED";
      
      public static const const_1650:String = "WE_LOCK";
      
      public static const const_1645:String = "WE_LOCKED";
      
      public static const const_1442:String = "WE_UNLOCK";
      
      public static const const_1659:String = "WE_UNLOCKED";
      
      public static const const_781:String = "WE_ENABLE";
      
      public static const const_231:String = "WE_ENABLED";
      
      public static const const_662:String = "WE_DISABLE";
      
      public static const const_184:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_269:String = "WE_RELOCATED";
      
      public static const const_1170:String = "WE_RESIZE";
      
      public static const const_38:String = "WE_RESIZED";
      
      public static const const_1540:String = "WE_MINIMIZE";
      
      public static const const_1713:String = "WE_MINIMIZED";
      
      public static const const_1520:String = "WE_MAXIMIZE";
      
      public static const const_1626:String = "WE_MAXIMIZED";
      
      public static const const_1601:String = "WE_RESTORE";
      
      public static const const_1526:String = "WE_RESTORED";
      
      public static const const_563:String = "WE_CHILD_ADDED";
      
      public static const const_429:String = "WE_CHILD_REMOVED";
      
      public static const const_208:String = "WE_CHILD_RELOCATED";
      
      public static const const_145:String = "WE_CHILD_RESIZED";
      
      public static const const_340:String = "WE_CHILD_ACTIVATED";
      
      public static const const_797:String = "WE_PARENT_ADDED";
      
      public static const const_1704:String = "WE_PARENT_REMOVED";
      
      public static const const_1658:String = "WE_PARENT_RELOCATED";
      
      public static const const_1087:String = "WE_PARENT_RESIZED";
      
      public static const const_1126:String = "WE_PARENT_ACTIVATED";
      
      public static const const_200:String = "WE_OK";
      
      public static const const_910:String = "WE_CANCEL";
      
      public static const const_110:String = "WE_CHANGE";
      
      public static const const_464:String = "WE_SCROLL";
      
      public static const const_173:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_697:IWindow;
      
      protected var var_1068:Boolean;
      
      protected var var_474:Boolean;
      
      protected var var_570:Boolean;
      
      protected var var_696:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_697 = param3;
         _loc5_.var_474 = param4;
         _loc5_.var_570 = false;
         _loc5_.var_696 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_697;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_474;
      }
      
      public function recycle() : void
      {
         if(this.var_570)
         {
            throw new Error("Event already recycled!");
         }
         this.var_697 = null;
         this._window = null;
         this.var_570 = true;
         this.var_1068 = false;
         this.var_696.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1068;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1068 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1068;
      }
      
      public function stopPropagation() : void
      {
         this.var_1068 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1068 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_474 + " window: " + this._window + " }";
      }
   }
}
