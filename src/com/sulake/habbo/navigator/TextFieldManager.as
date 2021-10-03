package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_77:ITextFieldWindow;
      
      private var var_668:Boolean;
      
      private var var_1406:String = "";
      
      private var var_1965:int;
      
      private var var_1964:Function;
      
      private var var_2733:String = "";
      
      private var var_139:IWindowContainer;
      
      private var var_2731:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2732:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_77 = param2;
         this.var_1965 = param3;
         this.var_1964 = param4;
         if(param5 != null)
         {
            this.var_668 = true;
            this.var_1406 = param5;
            this.var_77.text = param5;
         }
         Util.setProcDirectly(this.var_77,this.onInputClick);
         this.var_77.addEventListener(WindowKeyboardEvent.const_181,this.checkEnterPress);
         this.var_77.addEventListener(WindowEvent.const_110,this.checkMaxLen);
         this.var_2731 = this.var_77.textBackground;
         this._orgTextBackgroundColor = this.var_77.textBackgroundColor;
         this.var_2732 = this.var_77.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_77.textBackground = this.var_2731;
         this.var_77.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_77.textColor = this.var_2732;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_77.textBackground = true;
         this.var_77.textBackgroundColor = 4294021019;
         this.var_77.textColor = 4278190080;
         if(this.var_139 == null)
         {
            this.var_139 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_139,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_77.parent).addChild(this.var_139);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_139.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_139.findChildByName("border").width = _loc2_.width + 15;
         this.var_139.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_77.getLocalPosition(_loc3_);
         this.var_139.x = _loc3_.x;
         this.var_139.y = _loc3_.y - this.var_139.height + 3;
         var _loc4_:IWindow = this.var_139.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_139.width / 2 - _loc4_.width / 2;
         this.var_139.x += (this.var_77.width - this.var_139.width) / 2;
         this.var_139.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1406 != null)
         {
            this.var_77.text = this.var_1406;
            this.var_668 = true;
         }
         else
         {
            this.var_77.text = "";
            this.var_668 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_668)
         {
            return this.var_2733;
         }
         return this.var_77.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_668 = false;
         this.var_77.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_139 != null)
         {
            this.var_139.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_77;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_668 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_313)
         {
            return;
         }
         if(!this.var_668)
         {
            return;
         }
         this.var_77.text = this.var_2733;
         this.var_668 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_1964 != null)
            {
               this.var_1964();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_77.text;
         if(_loc2_.length > this.var_1965)
         {
            this.var_77.text = _loc2_.substring(0,this.var_1965);
         }
      }
   }
}
