package com.sulake.habbo.messenger
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SendMsgMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class MessengerView implements IDisposable
   {
       
      
      private var var_129:HabboMessenger;
      
      private var var_984:ConversationsTabView;
      
      private var var_974:ITextFieldWindow;
      
      private var var_16:IFrameWindow;
      
      private var var_1488:ConversationView;
      
      private var var_518:Timer;
      
      private var _disposed:Boolean = false;
      
      public function MessengerView(param1:HabboMessenger)
      {
         super();
         this.var_129 = param1;
         this.var_518 = new Timer(300,1);
         this.var_518.addEventListener(TimerEvent.TIMER,this.onResizeTimer);
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_518)
            {
               this.var_518.stop();
               this.var_518.removeEventListener(TimerEvent.TIMER,this.onResizeTimer);
               this.var_518 = null;
            }
            this.var_129 = null;
            this._disposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function isMessengerOpen() : Boolean
      {
         return this.var_16 != null && this.var_16.visible;
      }
      
      public function close() : void
      {
         if(this.var_16 != null)
         {
            this.var_16.visible = false;
         }
      }
      
      public function openMessenger() : void
      {
         if(this.var_129.conversations.openConversations.length < 1)
         {
            return;
         }
         if(this.var_16 == null)
         {
            this.prepareContent();
            this.refresh();
            this.var_129.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_60,HabboToolbarIconEnum.MESSENGER,this.var_16));
         }
         else
         {
            this.refresh();
            this.var_16.visible = true;
            this.var_16.activate();
         }
      }
      
      public function refresh() : void
      {
         if(this.var_16 == null)
         {
            return;
         }
         var _loc1_:Conversation = this.var_129.conversations.findSelectedConversation();
         this.var_16.caption = _loc1_ == null ? "" : _loc1_.name;
         this.var_984.refresh();
         this.var_1488.refresh();
         if(this.var_129.conversations.openConversations.length < 1)
         {
            this.var_16.visible = false;
            this.var_129.setHabboToolbarIcon(false,false);
         }
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         if(this.var_16 == null)
         {
            return;
         }
         if(!param1.selected)
         {
            return;
         }
         this.var_1488.addMessage(param2);
      }
      
      private function prepareContent() : void
      {
         this.var_16 = IFrameWindow(this.var_129.getXmlWindow("main_window"));
         var _loc1_:IWindow = this.var_16.findChildByTag("close");
         _loc1_.procedure = this.onWindowClose;
         this.var_16.procedure = this.onWindow;
         this.var_16.title.color = 4294623744;
         this.var_16.title.textColor = 4287851525;
         this.var_984 = new ConversationsTabView(this.var_129,this.var_16);
         this.var_984.refresh();
         this.var_974 = ITextFieldWindow(this.var_16.findChildByName("message_input"));
         this.var_974.addEventListener(WindowKeyboardEvent.const_181,this.onMessageInput);
         this.var_1488 = new ConversationView(this.var_129,this.var_16);
         this.var_16.scaler.setParamFlag(HabboWindowParam.const_770,false);
         this.var_16.scaler.setParamFlag(HabboWindowParam.const_1057,true);
      }
      
      private function onMessageInput(param1:WindowKeyboardEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:IWindow = IWindow(param1.target);
         if(param1.charCode == Keyboard.ENTER)
         {
            this.sendMsg();
         }
         else
         {
            _loc3_ = 120;
            _loc4_ = this.var_974.text;
            if(_loc4_.length > _loc3_)
            {
               this.var_974.text = _loc4_.substring(0,_loc3_);
            }
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_38 || param2 != this.var_16)
         {
            return;
         }
         if(!this.var_518.running)
         {
            this.var_518.reset();
            this.var_518.start();
         }
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         Logger.log("XXX RESIZE XXX");
         this.var_1488.afterResize();
         this.var_984.refresh();
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.var_16.visible = false;
      }
      
      private function sendMsg() : void
      {
         var _loc1_:String = this.var_974.text;
         Logger.log("Send msg: " + _loc1_);
         if(_loc1_ == "")
         {
            Logger.log("No text...");
            return;
         }
         var _loc2_:Conversation = this.var_129.conversations.findSelectedConversation();
         if(_loc2_ == null)
         {
            Logger.log("No conversation...");
            return;
         }
         this.var_129.send(new SendMsgMessageComposer(_loc2_.id,_loc1_));
         if(_loc2_.messages.length == 1)
         {
            this.var_129.playSendSound();
         }
         this.var_974.text = "";
         this.var_129.conversations.addMessageAndUpdateView(new Message(Message.const_851,_loc2_.id,_loc1_,Util.getFormattedNow()));
      }
      
      public function getTabCount() : int
      {
         return this.var_984 == null ? 7 : int(this.var_984.getTabCount());
      }
   }
}
