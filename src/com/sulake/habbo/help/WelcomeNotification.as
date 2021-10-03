package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2246:String;
      
      private var var_2244:String;
      
      private var var_2245:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2246 = param1;
         this.var_2244 = param2;
         this.var_2245 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2246;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2244;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2245;
      }
   }
}
