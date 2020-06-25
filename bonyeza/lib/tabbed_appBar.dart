import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Choice{
  final String title;
  final Icon icon;

  const Choice({this.title,this.icon});
}

const List<Choice> choices =<Choice>[
  Choice(title: 'Safaricom',icon: Icon(Icons.map,color: Colors.green,)),
  Choice(title: 'Airtel',icon: Icon(Icons.label,color: Colors.red,)),
  Choice(title: 'Telkom',icon: Icon(Icons.trip_origin,color: Colors.blue,)),
  Choice(title: 'Banks',icon: Icon(Icons.trip_origin,color: Colors.yellow,)),
  Choice(title: 'Android',icon: Icon(Icons.trip_origin,color: Colors.yellow,)),
];

Widget appbarTab(String tabTitle){
  return Container(
    height: 35.0,
//    decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(10),
//      border: Border.all(color: Colors.redAccent,width: 1),
//    ),
    child: Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(tabTitle,
          style: GoogleFonts.tillana(
            fontSize: 16,
           fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}