package com.sulake.habbo.session.furniture
{
   public interface IFurnitureData
   {
       
      
      function get type() : String;
      
      function get id() : int;
      
      function get name() : String;
      
      function get colourIndex() : int;
      
      function get revision() : int;
      
      function get tileSizeX() : int;
      
      function get tileSizeY() : int;
      
      function get tileSizeZ() : int;
      
      function get method_2() : Array;
      
      function get title() : String;
      
      function get description() : String;
      
      function get adUrl() : String;
      
      function get catalogPageId() : int;
      
      function get offerId() : int;
   }
}
