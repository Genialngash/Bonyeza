import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget contactUs(BuildContext context) {
  return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => Navigator.pop(context)),
            ),
            Text(
              'Feel free to use Bonyeza',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('copyright 2020 Nganga \n All rights reserved'),
            SizedBox(
              height: 30.0,
            ),
            Text('Email'),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 210.0,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('ngashgenial@gmail.com'),
                  IconButton(icon: Icon(Icons.content_copy,color: Colors.brown,),
                      onPressed: () async {
                        Clipboard.setData(
                            ClipboardData(text: 'ngashgenial@gmail.com'));
                      }
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ));
}
