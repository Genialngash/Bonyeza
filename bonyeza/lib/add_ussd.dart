
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'datase_helper.dart';


String newDialNumber;
String newDialName;

class AddUssd extends StatefulWidget {


   final AppDatabase database;
//   final dynamic bodyRuntimeType;
  AddUssd(this.database);
  @override
  _AddUssdState createState() => _AddUssdState(database);
}

class _AddUssdState extends State<AddUssd> {

//  //interstitial ad
//  InterstitialAd _interstitialAd;
//  bool _isInterstitialAdReady;
//  void _loadInterstitialAd() {
//    _interstitialAd.load();
//  }

//  void _onInterstitialAdEvent(MobileAdEvent event) {
//    switch (event) {
//      case MobileAdEvent.loaded:
//        _isInterstitialAdReady = true;
//        break;
//      case MobileAdEvent.failedToLoad:
//        _isInterstitialAdReady = false;
//        print('Failed to load an interstitial ad');
//        break;
//      case MobileAdEvent.closed:
//       Navigator.of(context).pop();
//        break;
//      default:
//      // do nothing
//    }
//  }

  List<bool> _isSelected = [false,false,false,false];
  TextStyle toggleButtonsStyle =  TextStyle(fontWeight: FontWeight.w500);
  TextEditingController controllerDialNumber;
  TextEditingController controllerDialName;
  AppDatabase database;

  _AddUssdState(this.database);
  @override
  void initState() {
    super.initState();
//    _loadInterstitialAd();
//    _isInterstitialAdReady = false;
//    _interstitialAd = InterstitialAd(
//      adUnitId: AdManager.interstitialAdUnitId,
//      listener: _onInterstitialAdEvent,
//    );

    controllerDialNumber = TextEditingController();
    controllerDialName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return
       Container(
      height: 300.0,
        padding: EdgeInsets.all(11.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Add USSD',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            TextField(
              controller: controllerDialNumber,
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.center,
               decoration: InputDecoration(
                 hintText: 'Enter the digits eg *100#',
               ) ,
               autofocus: true,
               onChanged: (newValue){
                  newDialNumber = newValue;
               },
            ),
            TextField(
              controller: controllerDialName,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Input the service type',
              ),
              autofocus: true,
              onChanged: (newValue){
                newDialName = newValue;
              },
            ),

            ToggleButtons(
                children: <Widget>[
                  Text('Safaricom',style:toggleButtonsStyle),
                  Text('Airtel',style: toggleButtonsStyle,),
                  Text('Telkom',style: toggleButtonsStyle,),
                  Text('Banks',style: toggleButtonsStyle,)
                ],
                onPressed: (int index){
                   setState(() {
                     _isSelected[index] = !_isSelected[index];
                   });
                },
                color: Colors.black,
                splashColor: Colors.lightGreen,
                borderColor: Colors.blueGrey,
              borderRadius: BorderRadius.circular(15.0),
                selectedBorderColor: Colors.black12,
                selectedColor: Color(0xff080848),
                fillColor: Colors.blueGrey,
                isSelected:_isSelected ,
            ),
            RaisedButton(
                elevation: 17.0,
                color: Colors.blueAccent,
//            color: Color(0xff02020D),
                hoverColor: Colors.greenAccent,
                onPressed:()async{

                  SafaricomUssd safaricomUssd =SafaricomUssd(id: null, dialNumber: newDialNumber,dialName: newDialName);
                  AirtelUssd airtelUssd = AirtelUssd(id: null,dialNumber: newDialNumber,dialName: newDialName);
                  TelkomUssd telkomUssd = TelkomUssd(id: null,dialNumber: newDialNumber,dialName: newDialName);
                  BankUssd bankUssd = BankUssd(id: null,dialNumber: newDialNumber,dialName: newDialName);


                  if(_isSelected[0 ]== true){
                    database.insertSafaricomUssd(safaricomUssd);
                  }
                  if(_isSelected[1 ]== true){
                    database.insertAirtelUssd(airtelUssd);
                  }
                  if(_isSelected[2 ]== true){
                    database.insertTelkomUssd(telkomUssd);
                  }
                  if(_isSelected[3]== true){
                    database.insertBankUssd(bankUssd);
                  }

//                  _loadInterstitialAd();
//                  _isInterstitialAdReady = false;
//                  _interstitialAd = InterstitialAd(
//                    adUnitId: AdManager.interstitialAdUnitId,
//                    listener: _onInterstitialAdEvent,
//                  );
//
//                  if (_isInterstitialAdReady) {
//                    _interstitialAd.show();
//                  }

                  resetValuesAfterSubmit();
                  Navigator.pop(context);
                },
                child: Text('Add',style: TextStyle(fontSize: 18.0,color: Colors.white),)),
          ],
        ),
    );

  }


  void resetValuesAfterSubmit(){
    setState(() {
      newDialNumber= null;
      newDialName = null;
      controllerDialNumber.clear();
      controllerDialName.clear();
    });
  }
}
