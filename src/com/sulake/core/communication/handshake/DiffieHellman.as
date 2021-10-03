package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1008:BigInteger;
      
      private var var_2658:BigInteger;
      
      private var var_2022:BigInteger;
      
      private var var_2797:BigInteger;
      
      private var var_1557:BigInteger;
      
      private var var_2021:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1557 = param1;
         this.var_2021 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1557.toString() + ",generator: " + this.var_2021.toString() + ",secret: " + param1);
         this.var_1008 = new BigInteger();
         this.var_1008.fromRadix(param1,param2);
         this.var_2658 = this.var_2021.modPow(this.var_1008,this.var_1557);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2022 = new BigInteger();
         this.var_2022.fromRadix(param1,param2);
         this.var_2797 = this.var_2022.modPow(this.var_1008,this.var_1557);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2658.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2797.toRadix(param1);
      }
   }
}
