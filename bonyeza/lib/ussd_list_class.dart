import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'datase_helper.dart';
import 'scroll_event_notifier.dart';
import 'constants.dart';


class UssdListClass extends StatelessWidget{
 UssdListClass(this.ussdFunction);
 final Stream  ussdFunction;
  @override
  Widget build(BuildContext context) {

    final database = Provider.of<AppDatabase>(context); //access the database
    ConstantsClass constantsClass = ConstantsClass(context);

    return StreamBuilder<List<dynamic>>(
      stream: ussdFunction,
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        final ussds = snapshot.data ?? List();

        return ChangeNotifierProvider.value(
          value: ScrollEventNotifier(false),
          child: Builder(
            builder: (context) {
              var scrollListener = Provider.of<ScrollEventNotifier>(context);
              return NotificationListener<ScrollNotification>(
                // ListViews have a scroll notification .Listen for changes and use the provider widget
                onNotification: (notification) {
                  if (notification is ScrollStartNotification) {
                    scrollListener.isScrolling = true;
                  } else if (notification is ScrollEndNotification) {
                    scrollListener.isScrolling = false;
                  }
                  return true;
                },
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.amberAccent,),

                  itemCount: ussds.length,
                  itemBuilder: (BuildContext context, int index) {

                    bool isScrolling =
                        Provider.of<ScrollEventNotifier>(context).isScrolling;
                    final itemTask = ussds[index];

                    return TweenAnimationBuilder(
                      tween: Tween(begin: isScrolling ? 0.0 : -0.1, end: isScrolling ? -0.2 : 0.0),

                      duration: Duration(milliseconds: 170),
                      builder: (_, double rotation, _child) {
                        return Transform(
                            transform: Matrix4.identity()
                              ..setEntry(3, 2, 0.01)
                              ..rotateX(rotation), // transformation matrix
                            alignment: Alignment.center,
                            child: constantsClass.buildListItem(itemTask, database));
                      },
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
