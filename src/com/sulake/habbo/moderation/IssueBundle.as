package com.sulake.habbo.moderation
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.parser.moderation.IssueMessageData;
   
   public class IssueBundle
   {
       
      
      private var _id:int;
      
      private var _issues:Map;
      
      private var _state:int;
      
      private var var_2555:int = 0;
      
      private var var_2678:String = "";
      
      private var var_1460:int;
      
      private var var_1222:int = 0;
      
      private var var_1221:int = 0;
      
      private var var_798:IssueMessageData = null;
      
      private var var_797:IssueMessageData = null;
      
      public function IssueBundle(param1:int, param2:IssueMessageData)
      {
         super();
         this._id = param1;
         this._issues = new Map();
         this._state = param2.state;
         this.var_2555 = param2.pickerUserId;
         this.var_2678 = param2.pickerUserName;
         this.var_1460 = param2.reportedUserId;
         this.addIssue(param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get issues() : Array
      {
         return this._issues.getValues();
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2555;
      }
      
      public function get pickerName() : String
      {
         return this.var_2678;
      }
      
      public function updateIssue(param1:IssueMessageData) : void
      {
         this.removeIssue(param1.issueId);
         this.addIssue(param1);
      }
      
      private function addIssue(param1:IssueMessageData) : void
      {
         this._issues.add(param1.issueId,param1);
         this.var_1222 += param1.priority;
         if(param1.message != null && param1.message != "")
         {
            ++this.var_1221;
         }
         if(this.var_798 == null || param1.timeStamp < this.var_798.timeStamp)
         {
            this.var_798 = param1;
         }
         if(this.var_797 == null || param1.priority > this.var_797.timeStamp)
         {
            this.var_797 = param1;
         }
      }
      
      public function removeIssue(param1:int) : IssueMessageData
      {
         var _loc2_:IssueMessageData = this._issues.remove(param1) as IssueMessageData;
         if(_loc2_ != null)
         {
            this.var_1222 -= _loc2_.priority;
            if(_loc2_.message != null && _loc2_.message != "")
            {
               --this.var_1221;
            }
            if(this.var_798 == _loc2_)
            {
               this.var_798 = null;
            }
            if(this.var_797 == _loc2_)
            {
               this.var_797 = null;
            }
         }
         return _loc2_;
      }
      
      public function get prioritySum() : int
      {
         return this.var_1222;
      }
      
      public function getHighestPriorityIssue() : IssueMessageData
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc1_:IssueMessageData = this.var_797;
         if(_loc1_ == null)
         {
            if(this._issues == null || this._issues.length < 1)
            {
               return null;
            }
            _loc1_ = this._issues.getWithIndex(0);
            _loc3_ = 1;
            while(_loc3_ < this._issues.length)
            {
               _loc2_ = this._issues.getWithIndex(_loc3_);
               if(_loc2_ != null && _loc2_.priority > _loc1_.priority)
               {
                  _loc1_ = _loc2_;
               }
               _loc3_++;
            }
            this.var_797 = _loc1_;
         }
         return _loc1_;
      }
      
      public function getIssueCount() : int
      {
         if(this._issues == null)
         {
            return 0;
         }
         return this._issues.length;
      }
      
      public function getIssueIds() : Array
      {
         if(this._issues == null)
         {
            return [];
         }
         return this._issues.getKeys();
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1460;
      }
      
      public function getMessageCount() : int
      {
         return this.var_1221;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc3_:* = null;
         var _loc2_:IssueMessageData = this.var_798;
         if(_loc2_ == null)
         {
            for each(_loc3_ in this._issues)
            {
               if(_loc2_ == null || _loc3_.timeStamp < _loc2_.timeStamp)
               {
                  _loc2_ = _loc3_;
               }
            }
            this.var_798 = _loc2_;
         }
         if(_loc2_ != null)
         {
            return _loc2_.getOpenTime(param1);
         }
         return "";
      }
   }
}
