import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contact_us_dialog.dart';
import 'about_bonyeza_dialog.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity, //stretches out to its parent widget
              padding: EdgeInsets.symmetric(vertical: 10.0),
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
                      'BONYEZA APP.',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Dial and add ussds easily',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            drawerListTile(
                Icon(Icons.home), 'Home', () => Navigator.of(context).pop()),
            drawerListTile(Icon(Icons.share), 'Share app', () {
              return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    String message = ' https://play.google.com/store/apps/ '
                        ' or  https://www.apkfiles.com/apk-604226/bonyeza  ';
                    return aboutBonyeza(context, message);
                  });
            }),
            drawerListTile(
                Icon(Icons.contact_mail),
                'Contact us',
                () => showDialog(
                    context: context,
                    builder: (BuildContext context) => contactUs(
                        context))), // => Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()))
            drawerListTile(Icon(Icons.star_border), 'Rate 5 stars',
                () {}),
            drawerListTile(
              Icon(Icons.android),
              'About Bonyeza',
              () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    String message = '''
       Unstructured Supplementary Service Data (USSD),  is a communications protocol used by GSM cellular telephones to  communicate with the mobile network operator's computers.
       USSD can be used for WAP browsing, prepaid callback service, mobile-money services,menu-based information services.
               
       Bonyeza is an app that helps you to dial the USSD easily by just tapping on the respective digits
         You dont have to always recall all the USSD codes with Bonyeza in your phone.
              ''';
                    return aboutBonyeza(context, message);
                  }),
            )
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
