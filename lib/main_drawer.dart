import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity, //stretches out to its parent widget
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  gradient: LinearGradient(
                      colors: [Colors.lime, Colors.lightGreen, Colors.green])),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(top: 15.0, bottom: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/city_background.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      'danche ngash',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'danchengash@gmail.com',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
            drawerListTile(Icon(Icons.home), 'Home', () => Navigator.of(context).pop()),
            drawerListTile(Icon(Icons.share), 'Share app', () {}),
            drawerListTile(Icon(Icons.contact_mail), 'Contact us', () {}),
            drawerListTile(Icon(Icons.star_border), 'Give 5 stars', () {}),
            drawerListTile(Icon(Icons.lightbulb_outline), 'Change theme', () {}),
            SizedBox(height: 12.0,)
          ],
        ),
      ),
    );
  }

  Widget drawerListTile(Widget icon, String titleText, Function onTapFunc) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black12,
        foregroundColor: Colors.black,
        child: icon,
      ),
      title: Text(
        titleText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 20.0,
        ),
      ),
      onTap: onTapFunc,
    );
  }
}
