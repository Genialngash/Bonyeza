
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'datase_helper.dart';
import 'ussd_list_class.dart';



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
  TextEditingController controllerDialNumber;
  TextEditingController controllerDialName;
  AppDatabase database;

  _AddUssdState(this.database);
  @override
  void initState() {
    super.initState();
    controllerDialNumber = TextEditingController();
    controllerDialName = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return
       Container(
      height: 300.0,
        padding: EdgeInsets.all(15.0),

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
            RaisedButton(
              elevation: 17.0,
                color: Colors.indigoAccent,
                onPressed:()async{
//                  Ussd ussd =Ussd(id: null, dialNumber: newDialNumber,dialName: newDialName);
//                  await database.insertUssd(ussd);

                  resetValuesAfterSubmit();
                  Navigator.pop(context);
                },
                child: Text('Add',style: TextStyle(fontSize: 18.0),))
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
