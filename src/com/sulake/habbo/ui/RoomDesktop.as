package com.sulake.habbo.ui
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDisplayObjectWrapper;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.IHabboAvatarEditor;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.friendlist.events.FriendRequestEvent;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.moderation.IHabboModeration;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.RoomVariableEnum;
   import com.sulake.habbo.room.events.RoomEngineEvent;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.events.RoomEngineSoundMachineEvent;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectOperationEnum;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.roomevents.IHabboUserDefinedRoomEvents;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.IUserData;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.tracking.IHabboTracking;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.widget.IRoomWidget;
   import com.sulake.habbo.widget.IRoomWidgetFactory;
   import com.sulake.habbo.widget.IRoomWidgetMessageListener;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetLoadingBarUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetFurniToWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.room.events.RoomContentLoadedEvent;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.utils.ColorConverter;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.RoomGeometry;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilter;
   import flash.filters.BlurFilter;
   import flash.filters.DisplacementMapFilter;
   import flash.filters.DisplacementMapFilterMode;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class RoomDesktop implements IRoomDesktop, IRoomWidgetMessageListener, IRoomWidgetHandlerContainer
   {
      
      public static const const_452:int = -1;
      
      private static const const_1390:int = 1000;
       
      
      private var _events:EventDispatcher;
      
      private var _windowManager:IHabboWindowManager = null;
      
      private var _roomEngine:IRoomEngine = null;
      
      private var var_1240:IRoomWidgetFactory = null;
      
      private var var_305:ISessionDataManager = null;
      
      private var var_15:IRoomSessionManager = null;
      
      private var var_489:IAvatarRenderManager = null;
      
      private var _friendList:IHabboFriendList = null;
      
      private var _inventory:IHabboInventory = null;
      
      private var var_170:IHabboToolbar = null;
      
      private var _navigator:IHabboNavigator = null;
      
      private var var_1954:IHabboAvatarEditor = null;
      
      private var _catalog:IHabboCatalog = null;
      
      private var var_320:IAdManager = null;
      
      private var _localization:IHabboLocalizationManager = null;
      
      private var var_1113:IHabboHelp = null;
      
      private var _connection:IConnection = null;
      
      private var var_1007:IHabboModeration;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_354:IHabboSoundManager;
      
      private var _habboTracking:IHabboTracking;
      
      private var var_1239:IHabboUserDefinedRoomEvents;
      
      private var _assets:IAssetLibrary = null;
      
      private var var_31:IRoomSession = null;
      
      private var var_329:Array;
      
      private var var_36:Map;
      
      private var var_837:Map;
      
      private var var_838:Map;
      
      private var var_839:Map;
      
      private var var_395:Array;
      
      private var var_213:DesktopLayoutManager;
      
      private var var_2024:Boolean = true;
      
      private var var_2023:Boolean = true;
      
      private var var_840:Array;
      
      private var var_236:IToolTipWindow;
      
      private var var_2799:uint = 16777215;
      
      private var var_2798:Boolean = false;
      
      private var var_2025:int = 0;
      
      private var var_518:Timer;
      
      private var var_2026:Rectangle;
      
      public function RoomDesktop(param1:IRoomSession, param2:IAssetLibrary, param3:IConnection)
      {
         this.var_329 = [];
         super();
         this._events = new EventDispatcher();
         this.var_31 = param1;
         this._assets = param2;
         this._connection = param3;
         this.var_36 = new Map();
         this.var_837 = new Map();
         this.var_838 = new Map();
         this.var_839 = new Map();
         this.var_213 = new DesktopLayoutManager();
      }
      
      public function get roomSession() : IRoomSession
      {
         return this.var_31;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_305;
      }
      
      public function get events() : IEventDispatcher
      {
         return this._events;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return this._roomEngine;
      }
      
      public function get roomSessionManager() : IRoomSessionManager
      {
         return this.var_15;
      }
      
      public function get friendList() : IHabboFriendList
      {
         return this._friendList;
      }
      
      public function get avatarRenderManager() : IAvatarRenderManager
      {
         return this.var_489;
      }
      
      public function get inventory() : IHabboInventory
      {
         return this._inventory;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_170;
      }
      
      public function get roomWidgetFactory() : IRoomWidgetFactory
      {
         return this.var_1240;
      }
      
      public function get navigator() : IHabboNavigator
      {
         return this._navigator;
      }
      
      public function get avatarEditor() : IHabboAvatarEditor
      {
         return this.var_1954;
      }
      
      public function get catalog() : IHabboCatalog
      {
         return this._catalog;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this._localization;
      }
      
      public function get habboHelp() : IHabboHelp
      {
         return this.var_1113;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get soundManager() : IHabboSoundManager
      {
         return this.var_354;
      }
      
      public function get moderation() : IHabboModeration
      {
         return this.var_1007;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get habboTracking() : IHabboTracking
      {
         return this._habboTracking;
      }
      
      public function get session() : IRoomSession
      {
         return this.var_31;
      }
      
      public function set catalog(param1:IHabboCatalog) : void
      {
         this._catalog = param1;
      }
      
      public function set avatarEditor(param1:IHabboAvatarEditor) : void
      {
         this.var_1954 = param1;
      }
      
      public function set roomWidgetFactory(param1:IRoomWidgetFactory) : void
      {
         this.var_1240 = param1;
      }
      
      public function set sessionDataManager(param1:ISessionDataManager) : void
      {
         this.var_305 = param1;
      }
      
      public function set roomSessionManager(param1:IRoomSessionManager) : void
      {
         this.var_15 = param1;
      }
      
      public function get userDefinedRoomEvents() : IHabboUserDefinedRoomEvents
      {
         return this.var_1239;
      }
      
      public function get connection() : IConnection
      {
         return this._connection;
      }
      
      public function set friendList(param1:IHabboFriendList) : void
      {
         this._friendList = param1;
         if(this._friendList)
         {
            this._friendList.events.addEventListener(FriendRequestEvent.const_47,this.processEvent);
            this._friendList.events.addEventListener(FriendRequestEvent.const_289,this.processEvent);
         }
      }
      
      public function set avatarRenderManager(param1:IAvatarRenderManager) : void
      {
         this.var_489 = param1;
      }
      
      public function set windowManager(param1:IHabboWindowManager) : void
      {
         this._windowManager = param1;
      }
      
      public function set inventory(param1:IHabboInventory) : void
      {
         this._inventory = param1;
      }
      
      public function set navigator(param1:IHabboNavigator) : void
      {
         this._navigator = param1;
      }
      
      public function set adManager(param1:IAdManager) : void
      {
         this.var_320 = param1;
      }
      
      public function set localization(param1:IHabboLocalizationManager) : void
      {
         this._localization = param1;
      }
      
      public function set habboHelp(param1:IHabboHelp) : void
      {
         this.var_1113 = param1;
      }
      
      public function set moderation(param1:IHabboModeration) : void
      {
         this.var_1007 = param1;
      }
      
      public function set config(param1:IHabboConfigurationManager) : void
      {
         this._config = param1;
      }
      
      public function set soundManager(param1:IHabboSoundManager) : void
      {
         this.var_354 = param1;
      }
      
      public function set habboTracking(param1:IHabboTracking) : void
      {
         this._habboTracking = param1;
      }
      
      public function set userDefinedRoomEvents(param1:IHabboUserDefinedRoomEvents) : void
      {
         this.var_1239 = param1;
      }
      
      public function set roomEngine(param1:IRoomEngine) : void
      {
         this._roomEngine = param1;
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_420,this.onRoomContentLoaded);
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_564,this.onRoomContentLoaded);
            this._roomEngine.events.addEventListener(RoomContentLoadedEvent.const_814,this.onRoomContentLoaded);
         }
      }
      
      public function set toolbar(param1:IHabboToolbar) : void
      {
         this.var_170 = param1;
         this.var_170.events.addEventListener(HabboToolbarEvent.const_467,this.onToolbarRepositionEvent);
         this.var_170.events.addEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
      }
      
      public function set layout(param1:XML) : void
      {
         this.var_213.setLayout(param1,this._windowManager,this._config);
         if(this.var_170 != null)
         {
            this.var_213.toolbarSize = this.var_170.size;
            this.var_213.toolbarOrientation = this.var_170.orientation;
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(this._roomEngine != null && this.var_31 != null)
         {
            _loc2_ = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,this.getFirstCanvasId());
            if(_loc2_ != null)
            {
               this.trackZoomTime(_loc2_.isZoomedIn());
            }
         }
         var _loc1_:int = 0;
         if(this.var_329 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_329.length)
            {
               _loc3_ = this.var_329[_loc1_];
               _loc4_ = this.getWindowName(_loc3_);
               if(this._windowManager)
               {
                  this._windowManager.removeWindow(_loc4_);
               }
               _loc1_++;
            }
         }
         this.var_395 = null;
         if(this.var_36 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_36.length)
            {
               _loc5_ = this.var_36.getWithIndex(_loc1_) as IRoomWidget;
               if(_loc5_ != null)
               {
                  _loc5_.dispose();
               }
               _loc1_++;
            }
            this.var_36.dispose();
            this.var_36 = null;
         }
         if(this.var_837 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.var_837.length)
            {
               _loc6_ = this.var_837.getWithIndex(_loc1_) as IRoomWidgetHandler;
               if(_loc6_ != null)
               {
                  _loc6_.dispose();
               }
               _loc1_++;
            }
            this.var_837.dispose();
            this.var_837 = null;
         }
         if(this.var_838 != null)
         {
            this.var_838.dispose();
            this.var_838 = null;
         }
         if(this.var_839 != null)
         {
            this.var_839.dispose();
            this.var_839 = null;
         }
         this._assets = null;
         this.var_489 = null;
         this.var_329 = null;
         this._events = null;
         if(this._friendList && this._friendList.events)
         {
            this._friendList.events.removeEventListener(FriendRequestEvent.const_47,this.processEvent);
            this._friendList.events.removeEventListener(FriendRequestEvent.const_289,this.processEvent);
         }
         this._friendList = null;
         this.var_213.dispose();
         this.var_213 = null;
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_420,this.onRoomContentLoaded);
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_564,this.onRoomContentLoaded);
            this._roomEngine.events.removeEventListener(RoomContentLoadedEvent.const_814,this.onRoomContentLoaded);
         }
         this._roomEngine = null;
         this.var_15 = null;
         this.var_1240 = null;
         this.var_31 = null;
         this.var_305 = null;
         this._windowManager = null;
         this._inventory = null;
         if(this.var_170 && this.var_170.events)
         {
            this.var_170.events.removeEventListener(HabboToolbarEvent.const_467,this.onToolbarRepositionEvent);
            this.var_170.events.removeEventListener(HabboToolbarEvent.const_37,this.onHabboToolbarEvent);
         }
         this.var_170 = null;
         this._localization = null;
         this._config = null;
         this.var_354 = null;
         if(this.var_236 != null)
         {
            this.var_236.dispose();
            this.var_236 = null;
         }
         if(this.var_518 != null)
         {
            this.var_518.reset();
            this.var_518.removeEventListener(TimerEvent.TIMER,this.onResizeTimerEvent);
            this.var_518 = null;
         }
         this.var_2026 = null;
      }
      
      public function init() : void
      {
         if(this._roomEngine != null && this.var_31 != null)
         {
            this.var_840 = this._roomEngine.loadRoomResources(this.var_31.roomResources);
            if(this.var_840.length > 0)
            {
               this.var_2023 = false;
               this.processEvent(new RoomWidgetLoadingBarUpdateEvent(RoomWidgetLoadingBarUpdateEvent.const_105));
            }
         }
         if(this.var_320 != null && this.var_31.state == RoomSessionEvent.const_243)
         {
            this.var_2024 = !this.var_320.showInterstitial();
         }
         this.checkInterrupts();
      }
      
      private function onRoomContentLoaded(param1:RoomContentLoadedEvent) : void
      {
         if(this.var_840 == null || this.var_840.length == 0)
         {
            return;
         }
         var _loc2_:int = this.var_840.indexOf(param1.contentType);
         if(_loc2_ != -1)
         {
            this.var_840.splice(_loc2_,1);
         }
         if(this.var_840.length == 0)
         {
            this.var_2023 = true;
            this.checkInterrupts();
         }
      }
      
      public function createWidget(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         if(this.var_1240 == null)
         {
            return;
         }
         _loc2_ = this.var_1240.createWidget(param1);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.messageListener = this;
         _loc2_.registerUpdateEvents(this._events);
         this.var_213.addWidgetWindow(_loc2_.mainWindow);
         if(!this.var_36.add(param1,_loc2_))
         {
            _loc2_.dispose();
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_378:
               _loc5_ = new ChatWidgetHandler();
               _loc5_.connection = this._connection;
               _loc4_ = _loc5_ as IRoomWidgetHandler;
               break;
            case RoomWidgetEnum.const_458:
               _loc4_ = new InfoStandWidgetHandler(this.var_354.musicController);
               break;
            case RoomWidgetEnum.CHAT_INPUT_WIDGET:
               _loc3_ = true;
               _loc4_ = new ChatInputWidgetHandler();
               break;
            case RoomWidgetEnum.const_508:
               _loc4_ = new MeMenuWidgetHandler();
               break;
            case RoomWidgetEnum.const_758:
               _loc4_ = new PlaceholderWidgetHandler();
               break;
            case RoomWidgetEnum.const_557:
               _loc4_ = new FurnitureCreditWidgetHandler();
               break;
            case RoomWidgetEnum.const_466:
               _loc4_ = new FurnitureStickieWidgetHandler();
               break;
            case RoomWidgetEnum.const_536:
               _loc4_ = new FurniturePresentWidgetHandler();
               break;
            case RoomWidgetEnum.const_525:
               _loc4_ = new FurnitureTrophyWidgetHandler();
               break;
            case RoomWidgetEnum.const_470:
               _loc4_ = new FurnitureTeaserWidgetHandler();
               break;
            case RoomWidgetEnum.const_600:
               _loc4_ = new FurnitureEcotronBoxWidgetHandler();
               break;
            case RoomWidgetEnum.const_474:
               _loc4_ = new PetPackageFurniWidgetHandler();
               break;
            case RoomWidgetEnum.const_118:
               _loc4_ = new DoorbellWidgetHandler();
               break;
            case RoomWidgetEnum.const_782:
               _loc4_ = new RoomQueueWidgetHandler();
               break;
            case RoomWidgetEnum.const_518:
               _loc4_ = new LoadingBarWidgetHandler();
               break;
            case RoomWidgetEnum.const_113:
               _loc4_ = new VoteWidgetHandler();
               break;
            case RoomWidgetEnum.const_369:
               _loc4_ = new PollWidgetHandler();
               break;
            case RoomWidgetEnum.const_578:
               _loc4_ = new FurniChooserWidgetHandler();
               break;
            case RoomWidgetEnum.const_327:
               _loc4_ = new UserChooserWidgetHandler();
               break;
            case RoomWidgetEnum.const_531:
               _loc4_ = new FurnitureDimmerWidgetHandler();
               break;
            case RoomWidgetEnum.const_150:
               _loc4_ = new FriendRequestWidgetHandler();
               break;
            case RoomWidgetEnum.const_516:
               _loc4_ = new FurnitureClothingChangeWidgetHandler();
               break;
            case RoomWidgetEnum.const_842:
               _loc4_ = new ConversionPointWidgetHandler();
               break;
            case RoomWidgetEnum.const_119:
               _loc4_ = new UserNotificationWidgetHandler();
               break;
            case RoomWidgetEnum.const_390:
               _loc4_ = new PurseWidgetHandler();
               break;
            case RoomWidgetEnum.const_115:
               _loc4_ = new AvatarInfoWidgetHandler();
               break;
            case RoomWidgetEnum.const_597:
               _loc4_ = new WelcomeGiftWidgetHandler();
               break;
            case RoomWidgetEnum.const_1231:
               break;
            case RoomWidgetEnum.const_478:
               _loc4_ = new RoomInfoWidgetHandler();
         }
         if(_loc4_ != null)
         {
            _loc4_.container = this;
            if(!this.var_837.add(param1,_loc4_))
            {
               _loc4_.dispose();
            }
            _loc6_ = null;
            _loc7_ = _loc4_.getWidgetMessages();
            if(_loc7_ != null)
            {
               for each(_loc9_ in _loc7_)
               {
                  _loc6_ = this.var_838.getValue(_loc9_);
                  if(_loc6_ == null)
                  {
                     _loc6_ = [];
                     this.var_838.add(_loc9_,_loc6_);
                  }
                  else
                  {
                     Logger.log("Room widget message \'" + _loc9_ + "\' handled by more than one widget message handler, could cause problems. Be careful!");
                  }
                  _loc6_.push(_loc4_);
               }
            }
            _loc8_ = _loc4_.getProcessedEvents();
            if(_loc8_ != null)
            {
               for each(_loc10_ in _loc8_)
               {
                  _loc6_ = this.var_839.getValue(_loc10_);
                  if(_loc6_ == null)
                  {
                     _loc6_ = [];
                     this.var_839.add(_loc10_,_loc6_);
                  }
                  _loc6_.push(_loc4_);
               }
            }
         }
         if(_loc3_)
         {
            param1 = "null";
            _loc11_ = new RoomWidgetRoomViewUpdateEvent(param1,this.var_213.roomViewRect);
            this.events.dispatchEvent(_loc11_);
         }
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Array = this.var_838.getValue(param1.type);
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = _loc3_.processWidgetMessage(param1);
               if(_loc4_ != null)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc3_:* = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Array = this.var_839.getValue(param1.type);
         if(_loc2_ != null)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_.processEvent(param1);
            }
         }
      }
      
      public function roomObjectEventHandler(param1:RoomEngineObjectEvent) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = int(param1.objectId);
         var _loc3_:int = int(param1.category);
         var _loc4_:* = null;
         var _loc5_:* = null;
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_846:
               _loc4_ = new RoomWidgetRoomObjectUpdateEvent(RoomWidgetRoomObjectUpdateEvent.const_389,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               if(this.var_1007 != null && _loc3_ == RoomObjectCategoryEnum.const_34)
               {
                  _loc7_ = this.var_31.userDataManager.getUserDataByIndex(_loc2_);
                  if(_loc7_ != null && _loc7_.type == RoomObjectTypeEnum.const_179)
                  {
                     this.var_1007.userSelected(_loc7_.webID,_loc7_.name);
                  }
               }
               break;
            case RoomEngineObjectEvent.const_363:
               switch(_loc3_)
               {
                  case RoomObjectCategoryEnum.const_28:
                  case RoomObjectCategoryEnum.const_26:
                     _loc6_ = "null";
                     break;
                  case RoomObjectCategoryEnum.const_34:
                     _loc6_ = "null";
               }
               if(_loc6_ != null)
               {
                  _loc4_ = new RoomWidgetRoomObjectUpdateEvent(_loc6_,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               }
               break;
            case RoomEngineObjectEvent.const_894:
               switch(_loc3_)
               {
                  case RoomObjectCategoryEnum.const_28:
                  case RoomObjectCategoryEnum.const_26:
                     _loc6_ = "null";
                     break;
                  case RoomObjectCategoryEnum.const_34:
                     _loc6_ = "null";
               }
               if(_loc6_ != null)
               {
                  _loc4_ = new RoomWidgetRoomObjectUpdateEvent(_loc6_,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               }
               break;
            case RoomEngineObjectEvent.const_496:
               _loc4_ = new RoomWidgetRoomObjectUpdateEvent(RoomWidgetRoomObjectUpdateEvent.const_155,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               break;
            case RoomEngineObjectEvent.const_824:
               if(!this.var_31.isRoomController && !this.var_305.isAnyRoomController)
               {
                  return;
               }
               this._roomEngine.modifyRoomObject(param1.objectId,param1.category,RoomObjectOperationEnum.OBJECT_MOVE);
               break;
            case RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_918,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_157:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_777,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_160:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_675,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_158:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_658,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_TEASER:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_850,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_139:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_866,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_147:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_916,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_153:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_1050,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_514:
            case RoomEngineObjectEvent.const_534:
               this.handleRoomAdClick(param1);
               break;
            case RoomEngineObjectEvent.const_490:
            case RoomEngineObjectEvent.const_562:
               this.handleRoomAdTooltip(param1);
               break;
            case RoomEngineObjectEvent.const_107:
               this.processEvent(param1);
               break;
            case RoomEngineObjectEvent.const_161:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_693,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineObjectEvent.const_141:
               _loc5_ = new RoomWidgetFurniToWidgetMessage(RoomWidgetFurniToWidgetMessage.const_1634,_loc2_,_loc3_,param1.roomId,param1.roomCategory);
               this.processWidgetMessage(_loc5_);
               break;
            case RoomEngineSoundMachineEvent.const_387:
               this.processEvent(param1);
         }
         if(_loc4_ != null)
         {
            this.events.dispatchEvent(_loc4_);
         }
      }
      
      public function roomEngineEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomEngineEvent.const_519:
               _loc2_ = new RoomWidgetRoomEngineUpdateEvent(RoomWidgetRoomEngineUpdateEvent.const_93,param1.roomId,param1.roomCategory);
               break;
            case RoomEngineEvent.const_592:
               _loc2_ = new RoomWidgetRoomEngineUpdateEvent(RoomWidgetRoomEngineUpdateEvent.const_430,param1.roomId,param1.roomCategory);
         }
         if(_loc2_ != null)
         {
            this.events.dispatchEvent(_loc2_);
         }
      }
      
      public function createRoomView(param1:int) : void
      {
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:* = null;
         var _loc2_:Rectangle = this.var_213.roomViewRect;
         var _loc3_:int = _loc2_.width;
         var _loc4_:int = _loc2_.height;
         var _loc5_:int = 0;
         if(this.var_329.indexOf(param1) >= 0)
         {
            return;
         }
         if(this.var_31 == null || this._windowManager == null || this._roomEngine == null)
         {
            return;
         }
         var _loc6_:DisplayObject = this._roomEngine.createRoomCanvas(this.var_31.roomId,this.var_31.roomCategory,param1,_loc3_,_loc4_,_loc5_);
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:RoomGeometry = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,param1) as RoomGeometry;
         if(_loc7_ != null)
         {
            _loc13_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_854);
            _loc14_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_811);
            _loc15_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_756);
            _loc16_ = this._roomEngine.getRoomNumberValue(this.var_31.roomId,this.var_31.roomCategory,RoomVariableEnum.const_925);
            _loc17_ = (_loc13_ + _loc14_) / 2;
            _loc18_ = (_loc15_ + _loc16_) / 2;
            _loc19_ = 20;
            _loc17_ += _loc19_ - 1;
            _loc18_ += _loc19_ - 1;
            _loc20_ = Math.sqrt(_loc19_ * _loc19_ + _loc19_ * _loc19_) * Math.tan(0);
            _loc7_.location = new Vector3d(_loc17_,_loc18_,_loc20_);
         }
         var _loc8_:XmlAsset = this._assets.getAssetByName("room_view_container_xml") as XmlAsset;
         if(_loc8_ == null)
         {
            return;
         }
         var _loc9_:IWindowContainer = this._windowManager.buildFromXML(_loc8_.content as XML) as IWindowContainer;
         if(_loc9_ == null)
         {
            return;
         }
         _loc9_.width = _loc3_;
         _loc9_.height = _loc4_;
         var _loc10_:IDisplayObjectWrapper = _loc9_.findChildByName("room_canvas_wrapper") as IDisplayObjectWrapper;
         if(_loc10_ == null)
         {
            return;
         }
         _loc10_.setDisplayObject(_loc6_);
         _loc10_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_284,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_180,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_44,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_58,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowMouseEvent.const_194,this.canvasMouseHandler);
         _loc10_.addEventListener(WindowEvent.const_38,this.onRoomViewResized);
         var _loc11_:Sprite = new Sprite();
         _loc11_.mouseEnabled = false;
         _loc11_.blendMode = BlendMode.MULTIPLY;
         _loc10_ = _loc9_.findChildByName("colorizer_wrapper") as IDisplayObjectWrapper;
         if(_loc10_ == null)
         {
            return;
         }
         _loc10_.setDisplayObject(_loc11_);
         _loc10_.addEventListener(WindowEvent.const_38,this.resizeColorizer);
         if(this.var_31.isSpectatorMode)
         {
            _loc21_ = this.getSpectatorModeVisualization();
            if(_loc21_ != null)
            {
               _loc21_.width = _loc9_.width;
               _loc21_.height = _loc9_.height;
               _loc9_.addChild(_loc21_);
            }
         }
         this.var_213.addRoomView(_loc9_);
         this.var_329.push(param1);
         var _loc12_:String = this._roomEngine.getWorldType(this.var_31.roomId,this.var_31.roomCategory);
         if(!this._roomEngine.isPublicRoomWorldType(_loc12_))
         {
            this.var_2798 = true;
            this.var_2025 = getTimer();
         }
      }
      
      private function resizeColorizer(param1:WindowEvent) : void
      {
         var _loc2_:IDisplayObjectWrapper = param1.target as IDisplayObjectWrapper;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:Sprite = _loc2_.getDisplayObject() as Sprite;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.graphics.clear();
         _loc3_.graphics.beginFill(this.var_2799);
         _loc3_.graphics.drawRect(0,0,_loc2_.width,_loc2_.height);
         _loc3_.graphics.endFill();
      }
      
      public function setRoomViewColor(param1:uint, param2:int) : void
      {
         var _loc3_:IWindowContainer = this.var_213.getRoomView() as IWindowContainer;
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:IDisplayObjectWrapper = _loc3_.getChildByName("colorizer_wrapper") as IDisplayObjectWrapper;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:Sprite = _loc4_.getDisplayObject() as Sprite;
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:int = ColorConverter.rgbToHSL(param1);
         _loc6_ = (_loc6_ & 16776960) + param2;
         param1 = ColorConverter.hslToRGB(_loc6_);
         this.var_2799 = param1;
         _loc5_.graphics.clear();
         _loc5_.graphics.beginFill(param1);
         _loc5_.graphics.drawRect(0,0,_loc4_.width,_loc4_.height);
         _loc5_.graphics.endFill();
      }
      
      public function getFirstCanvasId() : int
      {
         if(this.var_329 != null)
         {
            if(this.var_329.length > 0)
            {
               return this.var_329[0];
            }
         }
         return 0;
      }
      
      public function getRoomViewRect() : Rectangle
      {
         if(!this.var_213)
         {
            return null;
         }
         return this.var_213.roomViewRect;
      }
      
      public function canvasMouseHandler(param1:WindowEvent) : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(this._roomEngine == null || this.var_31 == null)
         {
            return;
         }
         var _loc2_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = "";
         switch(_loc2_.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_284:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_44:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_58:
            case WindowMouseEvent.const_194:
               _loc3_ = "null";
               break;
            case WindowMouseEvent.const_180:
               _loc3_ = "null";
               break;
            default:
               return;
         }
         var _loc4_:IDisplayObjectWrapper = _loc2_.target as IDisplayObjectWrapper;
         if(_loc4_ == _loc2_.target)
         {
            _loc5_ = new Point();
            _loc4_.getGlobalPosition(_loc5_);
            _loc6_ = _loc2_.stageX - _loc5_.x;
            _loc7_ = _loc2_.stageY - _loc5_.y;
            this._roomEngine.setActiveRoom(this.var_31.roomId,this.var_31.roomCategory);
            this._roomEngine.handleRoomCanvasMouseEvent(this.var_329[0],_loc6_,_loc7_,_loc3_,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown);
         }
         if(_loc3_ == MouseEvent.MOUSE_MOVE && this.var_236 != null)
         {
            _loc8_ = new Point(_loc2_.stageX,_loc2_.stageY);
            _loc8_.offset(-this.var_236.width / 2,15);
            this.var_236.setGlobalPosition(_loc8_);
         }
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         var _loc2_:IWindow = param1.window;
         this.var_2026 = _loc2_.rectangle;
         this._roomEngine.modifyRoomCanvas(this.var_31.roomId,this.var_31.roomCategory,this.var_329[0],_loc2_.width,_loc2_.height);
         if(this.var_518 == null)
         {
            this.var_518 = new Timer(const_1390,1);
            this.var_518.addEventListener(TimerEvent.TIMER,this.onResizeTimerEvent);
         }
         else
         {
            this.var_518.reset();
         }
         this.var_518.start();
      }
      
      private function onResizeTimerEvent(param1:TimerEvent) : void
      {
         var _loc2_:String = "null";
         this.events.dispatchEvent(new RoomWidgetRoomViewUpdateEvent(_loc2_,this.var_2026));
      }
      
      private function onToolbarRepositionEvent(param1:HabboToolbarEvent) : void
      {
         if(this.var_213 != null)
         {
            this.var_213.toolbarOrientation = param1.orientation;
         }
      }
      
      private function trackZoomTime(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.var_2798)
         {
            _loc2_ = getTimer();
            _loc3_ = Math.round((_loc2_ - this.var_2025) / 1000);
            if(this._habboTracking != null)
            {
               if(param1)
               {
                  this._habboTracking.track("zoomEnded","in",_loc3_);
               }
               else
               {
                  this._habboTracking.track("zoomEnded","out",_loc3_);
               }
            }
            this.var_2025 = _loc2_;
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.iconId == HabboToolbarIconEnum.ZOOM)
         {
            if(this.var_31 != null)
            {
               _loc2_ = this._roomEngine.getRoomCanvasGeometry(this.var_31.roomId,this.var_31.roomCategory,this.getFirstCanvasId());
               if(_loc2_ != null)
               {
                  this.trackZoomTime(_loc2_.isZoomedIn());
                  _loc2_.performZoom();
                  _loc3_ = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_89,HabboToolbarIconEnum.ZOOM);
                  if(_loc2_.isZoomedIn())
                  {
                     _loc3_.iconState = "2";
                     this.var_170.events.dispatchEvent(_loc3_);
                  }
                  else
                  {
                     _loc3_.iconState = "0";
                     this.var_170.events.dispatchEvent(_loc3_);
                  }
               }
            }
         }
      }
      
      public function update() : void
      {
         var _loc3_:* = null;
         if(this.var_395 == null)
         {
            return;
         }
         var _loc1_:int = this.var_395.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.var_395.getWithIndex(_loc2_) as IRoomWidgetHandler;
            if(_loc3_ != null)
            {
               _loc3_.update();
            }
            _loc2_++;
         }
      }
      
      private function getWindowName(param1:int) : String
      {
         return "Room_Engine_Window_" + param1;
      }
      
      private function createFilter(param1:int, param2:int) : Array
      {
         var _loc3_:BlurFilter = new BlurFilter(2,2);
         return [];
      }
      
      private function getBitmapFilter(param1:int, param2:int) : BitmapFilter
      {
         var _loc3_:BitmapData = new BitmapData(param1,param2);
         _loc3_.perlinNoise(param1,param2,5,Math.random() * 2000000000,true,false);
         var _loc4_:Point = new Point(0,0);
         var _loc5_:int = 0;
         var _loc6_:uint = _loc5_;
         var _loc7_:uint = _loc5_;
         var _loc8_:Number = param1 / 20;
         var _loc9_:Number = -param1 / 25;
         var _loc10_:String = "null";
         return new DisplacementMapFilter(_loc3_,_loc4_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,0,0);
      }
      
      public function checkInterrupts() : void
      {
         if(this.var_15 != null && this.var_31 != null && this.var_2024 && this.var_2023)
         {
            this.var_15.startSession(this.var_31);
            this.processEvent(new RoomWidgetLoadingBarUpdateEvent(RoomWidgetLoadingBarUpdateEvent.const_338));
         }
      }
      
      public function setInterstitialCompleted() : void
      {
         this.var_2024 = true;
         this.checkInterrupts();
      }
      
      private function handleRoomAdClick(param1:RoomEngineObjectEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:IRoomObject = this._roomEngine.getRoomObject(param1.roomId,param1.roomCategory,param1.objectId,param1.category);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel() as IRoomObjectModel;
         var _loc4_:String = _loc3_.getString(RoomObjectVariableEnum.const_374);
         if(_loc4_ == null || _loc4_.indexOf("http") != 0)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_514:
               if(this.var_31.isRoomController || this.var_305.isAnyRoomController)
               {
                  return;
               }
               HabboWebTools.openWebPage(_loc4_);
               break;
            case RoomEngineObjectEvent.const_534:
               if(!this.var_31.isRoomController && !this.var_305.isAnyRoomController)
               {
                  return;
               }
               HabboWebTools.openWebPage(_loc4_);
               break;
         }
      }
      
      private function handleRoomAdTooltip(param1:RoomEngineObjectEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineObjectEvent.const_490:
               if(this.var_236 != null)
               {
                  return;
               }
               _loc2_ = this._roomEngine.getRoomObject(param1.roomId,param1.roomCategory,param1.objectId,param1.category);
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = this._localization.getKey(_loc2_.getType() + ".tooltip","${ads.roomad.tooltip}");
               this.var_236 = this._windowManager.createWindow("room_ad_tooltip",_loc3_,WindowType.const_392,WindowStyle.const_808,WindowParam.const_100) as IToolTipWindow;
               this.var_236.setParamFlag(WindowParam.const_31,false);
               this.var_236.visible = true;
               this.var_236.center();
               break;
            case RoomEngineObjectEvent.const_562:
               if(this.var_236 == null)
               {
                  return;
               }
               this.var_236.dispose();
               this.var_236 = null;
               break;
         }
      }
      
      private function getSpectatorModeVisualization() : IWindow
      {
         var _loc1_:XmlAsset = this._assets.getAssetByName("spectator_mode_xml") as XmlAsset;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:IWindowContainer = this._windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         if(_loc2_ == null)
         {
            return null;
         }
         this.setBitmap(_loc2_.findChildByName("top_left"),"spec_top_left_png");
         this.setBitmap(_loc2_.findChildByName("top_middle"),"spec_top_middle_png");
         this.setBitmap(_loc2_.findChildByName("top_right"),"spec_top_right_png");
         this.setBitmap(_loc2_.findChildByName("middle_left"),"spec_middle_left_png");
         this.setBitmap(_loc2_.findChildByName("middle_right"),"spec_middle_right_png");
         this.setBitmap(_loc2_.findChildByName("bottom_left"),"spec_bottom_left_png");
         this.setBitmap(_loc2_.findChildByName("bottom_middle"),"spec_bottom_middle_png");
         this.setBitmap(_loc2_.findChildByName("bottom_right"),"spec_bottom_right_png");
         return _loc2_;
      }
      
      private function setBitmap(param1:IWindow, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1 as IBitmapWrapperWindow;
         if(_loc3_ == null || this._assets == null)
         {
            return;
         }
         var _loc4_:BitmapDataAsset = this._assets.getAssetByName(param2) as BitmapDataAsset;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:BitmapData = _loc4_.content as BitmapData;
         if(_loc5_ == null)
         {
            return;
         }
         _loc3_.bitmap = _loc5_.clone();
      }
      
      public function initializeWidget(param1:String, param2:int = 0) : void
      {
         var _loc3_:IRoomWidget = this.var_36[param1];
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.initialize(param2);
      }
      
      public function getWidgetState(param1:String) : int
      {
         var _loc2_:IRoomWidget = this.var_36[param1];
         if(_loc2_ == null)
         {
            return const_452;
         }
         return _loc2_.state;
      }
      
      public function addUpdateListener(param1:IRoomWidgetHandler) : void
      {
         if(this.var_395 == null)
         {
            this.var_395 = new Array();
         }
         if(this.var_395.indexOf(param1) == -1)
         {
            this.var_395.push(param1);
         }
      }
      
      public function removeUpdateListener(param1:IRoomWidgetHandler) : void
      {
         if(this.var_395 == null)
         {
            return;
         }
         var _loc2_:int = this.var_395.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.var_395.splice(_loc2_,1);
         }
      }
   }
}
