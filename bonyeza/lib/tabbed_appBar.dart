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
            fontSize: 17,
           fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}


class TabBarWidgetClass extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.deepOrangeAccent,
      indicatorSize: TabBarIndicatorSize.tab,
//                labelColor: Colors.black12,
      isScrollable: true,
      indicator: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.red, Colors.orangeAccent]),
        borderRadius: BorderRadius.circular(20),
        color: Colors.redAccent,
      ),

//              tabs: choices.map<Widget>((Choice choice){
//                return Tab(
//                  text: choice.title,
//                  icon: choice.icon,
//                );
//              }).toList(),
      tabs: [
        appbarTab('Safaricom'),
        appbarTab('Airtel'),
        appbarTab('Telkom'),
        appbarTab('Banks'),
        appbarTab('Android')
      ],
    );
  }
}