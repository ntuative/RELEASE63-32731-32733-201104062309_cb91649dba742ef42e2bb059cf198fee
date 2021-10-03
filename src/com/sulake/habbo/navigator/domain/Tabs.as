package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_424:int = 1;
      
      public static const const_227:int = 2;
      
      public static const const_335:int = 3;
      
      public static const const_394:int = 4;
      
      public static const const_273:int = 5;
      
      public static const const_414:int = 1;
      
      public static const const_793:int = 2;
      
      public static const const_715:int = 3;
      
      public static const const_731:int = 4;
      
      public static const const_267:int = 5;
      
      public static const const_759:int = 6;
      
      public static const const_898:int = 7;
      
      public static const const_225:int = 8;
      
      public static const const_428:int = 9;
      
      public static const const_1812:int = 10;
      
      public static const const_867:int = 11;
      
      public static const const_463:int = 12;
       
      
      private var var_422:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_422 = new Array();
         this.var_422.push(new Tab(this._navigator,const_424,const_463,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_477));
         this.var_422.push(new Tab(this._navigator,const_227,const_414,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_477));
         this.var_422.push(new Tab(this._navigator,const_394,const_867,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1211));
         this.var_422.push(new Tab(this._navigator,const_335,const_267,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_477));
         this.var_422.push(new Tab(this._navigator,const_273,const_225,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_817));
         this.setSelectedTab(const_424);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_394;
      }
      
      public function get tabs() : Array
      {
         return this.var_422;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_422)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_422)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
