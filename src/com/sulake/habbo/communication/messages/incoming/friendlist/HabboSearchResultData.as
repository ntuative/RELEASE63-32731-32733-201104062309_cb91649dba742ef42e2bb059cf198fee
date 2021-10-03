package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2123:int;
      
      private var var_1690:String;
      
      private var var_2119:String;
      
      private var var_2122:Boolean;
      
      private var var_2120:Boolean;
      
      private var var_2121:int;
      
      private var var_2124:String;
      
      private var var_2118:String;
      
      private var var_1688:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2123 = param1.readInteger();
         this.var_1690 = param1.readString();
         this.var_2119 = param1.readString();
         this.var_2122 = param1.readBoolean();
         this.var_2120 = param1.readBoolean();
         param1.readString();
         this.var_2121 = param1.readInteger();
         this.var_2124 = param1.readString();
         this.var_2118 = param1.readString();
         this.var_1688 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2123;
      }
      
      public function get avatarName() : String
      {
         return this.var_1690;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2119;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2122;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2120;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2121;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2124;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2118;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
   }
}
