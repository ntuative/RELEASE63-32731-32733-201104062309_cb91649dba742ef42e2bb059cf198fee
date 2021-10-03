package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1838:int = 0;
      
      public static const const_1530:int = 1;
      
      public static const const_1716:int = 2;
      
      public static const const_1866:int = 3;
      
      public static const const_1947:int = 4;
      
      public static const const_1875:int = 5;
      
      public static const const_1498:int = 10;
      
      public static const const_1934:int = 11;
      
      public static const const_1803:int = 12;
      
      public static const const_1904:int = 13;
      
      public static const const_1814:int = 16;
      
      public static const const_1823:int = 17;
      
      public static const const_1855:int = 18;
      
      public static const const_1813:int = 19;
      
      public static const const_1797:int = 20;
      
      public static const const_1961:int = 22;
      
      public static const const_1940:int = 23;
      
      public static const const_1810:int = 24;
      
      public static const const_1780:int = 25;
      
      public static const const_1990:int = 26;
      
      public static const const_1824:int = 27;
      
      public static const const_1923:int = 28;
      
      public static const const_1905:int = 29;
      
      public static const const_1778:int = 100;
      
      public static const const_1794:int = 101;
      
      public static const const_1911:int = 102;
      
      public static const const_1820:int = 103;
      
      public static const const_1981:int = 104;
      
      public static const const_1847:int = 105;
      
      public static const const_1833:int = 106;
      
      public static const const_1944:int = 107;
      
      public static const const_1909:int = 108;
      
      public static const const_1830:int = 109;
      
      public static const const_1800:int = 110;
      
      public static const const_1883:int = 111;
      
      public static const const_1859:int = 112;
      
      public static const const_1783:int = 113;
      
      public static const const_1807:int = 114;
      
      public static const const_1811:int = 115;
      
      public static const const_1907:int = 116;
      
      public static const const_1960:int = 117;
      
      public static const const_1984:int = 118;
      
      public static const const_1815:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1530:
            case const_1498:
               return "banned";
            case const_1716:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
