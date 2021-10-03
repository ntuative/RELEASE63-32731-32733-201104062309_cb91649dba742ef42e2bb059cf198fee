package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1567:IID;
      
      private var var_2038:String;
      
      private var var_102:IUnknown;
      
      private var var_846:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1567 = param1;
         this.var_2038 = getQualifiedClassName(this.var_1567);
         this.var_102 = param2;
         this.var_846 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1567;
      }
      
      public function get iis() : String
      {
         return this.var_2038;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_102;
      }
      
      public function get references() : uint
      {
         return this.var_846;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_102 == null;
      }
      
      public function dispose() : void
      {
         this.var_1567 = null;
         this.var_2038 = null;
         this.var_102 = null;
         this.var_846 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_846;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_846) : uint(0);
      }
   }
}
