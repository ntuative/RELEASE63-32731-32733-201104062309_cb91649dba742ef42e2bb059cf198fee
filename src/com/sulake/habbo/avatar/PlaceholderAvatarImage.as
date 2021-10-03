package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_795:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_752)
         {
            _structure = null;
            _assets = null;
            var_244 = null;
            var_288 = null;
            var_640 = null;
            var_575 = null;
            var_336 = null;
            if(!var_1323 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_749 = null;
            var_752 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_795[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_795[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_377:
               switch(_loc3_)
               {
                  case AvatarAction.const_704:
                  case AvatarAction.const_556:
                  case AvatarAction.const_380:
                  case AvatarAction.const_908:
                  case AvatarAction.const_384:
                  case AvatarAction.const_776:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_339:
            case AvatarAction.const_788:
            case AvatarAction.const_271:
            case AvatarAction.const_805:
            case AvatarAction.const_834:
            case AvatarAction.const_663:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
