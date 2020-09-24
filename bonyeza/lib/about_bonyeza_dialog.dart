import 'package:flutter/material.dart';

Widget aboutBonyeza(BuildContext context,String message){
  return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
   child: Container(
     padding: EdgeInsets.all(20.0),
     child: Text(
       message
     ),
   ),
  );
}