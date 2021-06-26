import 'package:flutter/material.dart';


 class Listpaymodel{
   String _imagepath;
   String _title;
   

   Listpaymodel(this._imagepath, this._title);


   String get title => _title;

   set title(String value) {
     _title = value;
   }

   String get imagepath => _imagepath;

   set imagepath(String value) {
     _imagepath = value;
   }


 }