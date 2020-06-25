import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'datase_helper.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;

class ConstantsClass {

  BuildContext context;
  ConstantsClass(this.context);


  Widget buildListItem(dynamic itemTask, AppDatabase database) {


    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.4,
      secondaryActions: [
        IconSlideAction(
          icon: Icons.delete,
          caption: 'DELETE',
          color: Colors.pink,
          onTap: () {
            //TODO: use switch
            if(itemTask.runtimeType == SafaricomUssd){
              database.deleteSafaricomUssd(itemTask);
            }
            if(itemTask.runtimeType == AirtelUssd){
              database.deleteAirtelUssd(itemTask);
            }
            showSnackBar(context, 'DELETED !!');

          },
        )
      ],
      child: Card(
        color: Colors.white,
        elevation: 4.0,
        shadowColor: Colors.grey,
        child: ListTile(
          leading: Icon(
            Icons.phone,
            size: 35.0,
            color: Colors.green,
          ),
          title: Text(itemTask.dialNumber?? 'null',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(itemTask.dialName?? 'null'),
          trailing: copyToClipBoard(itemTask),
          onTap: () => callUssd(itemTask),
        ),
      ),
    );
  }

  Widget copyToClipBoard(dynamic itemTask) {
    return GestureDetector(
      child: Icon(
        Icons.content_copy,
        color: Colors.red,
      ),
      onTap: () {
        String message = 'Dial Number copied to clipBoard';
        showSnackBar(context, message);
        Clipboard.setData(ClipboardData(text: itemTask.dialNumber));
      },
    );
  }




  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void callUssd(dynamic itemTask) async {
    android_intent.Intent()
      ..setAction(android_action.Action.ACTION_CALL)
      ..setData(Uri(scheme: "tel", path: itemTask.dialNumber))
      ..startActivity().catchError(
              (e) => showSnackBar(context, 'Could not Place the call'));
  }

}