package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1327:IHabboTracking;
      
      private var var_1890:Boolean = false;
      
      private var var_2848:int = 0;
      
      private var var_2040:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1327 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1327 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1890 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2848 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1890)
         {
            return;
         }
         ++this.var_2040;
         if(this.var_2040 <= this.var_2848)
         {
            this.var_1327.track("toolbar",param1);
         }
      }
   }
}
