package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_998:IAssetLoader;
      
      private var var_1975:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1975 = param1;
         this.var_998 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1975;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_998;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_998 != null)
            {
               if(!this.var_998.disposed)
               {
                  this.var_998.dispose();
                  this.var_998 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
