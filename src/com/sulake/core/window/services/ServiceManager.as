package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2891:uint;
      
      private var var_145:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_245:IWindowContext;
      
      private var var_1094:IMouseDraggingService;
      
      private var var_1092:IMouseScalingService;
      
      private var var_1091:IMouseListenerService;
      
      private var var_1095:IFocusManagerService;
      
      private var var_1093:IToolTipAgentService;
      
      private var var_1090:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2891 = 0;
         this.var_145 = param2;
         this.var_245 = param1;
         this.var_1094 = new WindowMouseDragger(param2);
         this.var_1092 = new WindowMouseScaler(param2);
         this.var_1091 = new WindowMouseListener(param2);
         this.var_1095 = new FocusManager(param2);
         this.var_1093 = new WindowToolTipAgent(param2);
         this.var_1090 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1094 != null)
         {
            this.var_1094.dispose();
            this.var_1094 = null;
         }
         if(this.var_1092 != null)
         {
            this.var_1092.dispose();
            this.var_1092 = null;
         }
         if(this.var_1091 != null)
         {
            this.var_1091.dispose();
            this.var_1091 = null;
         }
         if(this.var_1095 != null)
         {
            this.var_1095.dispose();
            this.var_1095 = null;
         }
         if(this.var_1093 != null)
         {
            this.var_1093.dispose();
            this.var_1093 = null;
         }
         if(this.var_1090 != null)
         {
            this.var_1090.dispose();
            this.var_1090 = null;
         }
         this.var_145 = null;
         this.var_245 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1094;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1092;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1091;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1095;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1093;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1090;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
