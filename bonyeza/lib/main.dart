
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ad_manager.dart';
import 'main_drawer.dart';
import 'add_ussd.dart';
import 'package:provider/provider.dart';
import 'ussd_list_class.dart';
import 'datase_helper.dart';
import 'package:splashscreen/splashscreen.dart';
import 'tabbed_appBar.dart';
import 'package:firebase_admob/firebase_admob.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

//_launchURL() async {
//  // Replace 12345678 with your tel. no.
//  android_intent.Intent()
//    ..setAction(android_action.Action.ACTION_CALL)
//    ..setData(Uri(scheme: "tel", path: "102"))
//    ..startActivity().catchError((e) => print(e));
//}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      backgroundColor: Colors.white,
      image: Image.asset('images/BONYEZA_LAUNCH.png'),
      loaderColor: Colors.black,
      photoSize: 150.0,
      loadingText: Text('Loading...'),
      navigateAfterSeconds: MyAppAfterSplashScreen(),
    );
  }
}

class MyAppAfterSplashScreen extends StatelessWidget {
  Future<void> _initAdMob() {
    return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }
  @override
  void initState(){
    _initAdMob();
  }
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AppDatabase(),
      child: MaterialApp(
        title: 'Bonyeza',
        home: BonyezaHome(),
      ),
    );
  }
}

class BonyezaHome extends StatefulWidget {
  @override
  _BonyezaHomeState createState() => _BonyezaHomeState();
}

class _BonyezaHomeState extends State<BonyezaHome> {
  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;
  void _loadBannerAd() {
    _bannerAd
      ..load()
      ..show(anchorType: AnchorType.bottom);
  }
  void _loadInterstitialAd(){
     _interstitialAd
       ..load()
       ..show();
  }
@override
  void initState() {
  _bannerAd = BannerAd(
    adUnitId: AdManager.bannerAdUnitId,
    size: AdSize.banner,
    );
  _interstitialAd = InterstitialAd(
    adUnitId: AdManager.interstitialAdUnitId,

  );
    _loadBannerAd();
   _loadInterstitialAd();
  }
  @override
  void dispose() {
    _bannerAd?.dispose();
    _interstitialAd?.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final database = Provider.of<AppDatabase>(context);

    dynamic safaricom = database.watchSafaricomAllUssds();
    dynamic airtel = database.watchAirtelAllUssds();
    dynamic telkom = database.watchTelkomAllUssds();
    dynamic banks = database.watchBankAllUssds();
    dynamic android = database.watchAndroidAllUssds();

    return DefaultTabController(
      length: 5,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black87,
            elevation: 19.0,
            onPressed: () async {
              final database = Provider.of<AppDatabase>(context,listen: false);

              FirebaseAdMob.instance.initialize(appId: AdManager.appId);
              BannerAd _bannerAd;
              InterstitialAd _interstitialAd;
              _bannerAd = BannerAd(
                adUnitId: AdManager.bannerAdUnitId,
                size: AdSize.banner,
              );
              _bannerAd
                ..load()
                ..show(anchorType: AnchorType.bottom);
              _interstitialAd = InterstitialAd(
               adUnitId: AdManager.interstitialAdUnitId,

              );
              _interstitialAd
                 ..load()
                 ..show();

              Dialog dialog = Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, child: AddUssd(database)),
              );
              await showDialog(
                  context: context, builder: (BuildContext context) => dialog);
            },
            child: Icon(
              Icons.add,
              size: 35.0,
            ),
          ),
          appBar: AppBar(
            bottomOpacity: 0.7,
              toolbarOpacity: 0.8,
              elevation: 10.0,
              backgroundColor:Color(0xff000010),
              title: Text('Bonyeza'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search,),
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: TabBarWidgetClass(),
              )),
          drawer: MainDrawer(),
          body: AnimatedContainer(
            duration: Duration(microseconds: 2),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.lightBlueAccent,
                Colors.teal,
                Colors.lightGreen,
//              Colors.lightGreenAccent
              ],
            )),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: TabBarView(
                children: [
                  UssdListClass(safaricom),
                  UssdListClass(airtel),
                  UssdListClass(telkom),
                  UssdListClass(banks),
                  UssdListClass(android),
                ],
              ),
            ),
          )),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
//    return Center(
//      child: Container(
//        height: 100.0,
//        width:  100.0,
//        child: Card(
//          color: Colors.red,
//          shape: StadiumBorder(),
//          child: Center(
//            child: Text(query),
//          ),
//        ),
//      ),
//    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final database = Provider.of<AppDatabase>(context);

    dynamic filterSafaricom = database.filterStreamSafaricomUssd(query);
    dynamic filterAirtel = database.filterStreamAirtelUssd(query);
    dynamic filterTelkom = database.filterStreamTelkomUssd(query);
    dynamic filterBank = database.filterStreamBankUssd(query);
    dynamic filterAndroid = database.filterStreamAndroidUssd(query);

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: TabBarWidgetClass(),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(
              children: [
                UssdListClass(filterSafaricom),
                UssdListClass(filterAirtel),
                UssdListClass(filterTelkom),
                UssdListClass(filterBank),
                UssdListClass(filterAndroid),
              ],
            ),
          ),
        ),
      ),
    );
  }
  }

//
//    final database = Provider.of<AppDatabase>(context);
//    Future<List<Ussd>> suggestion() async {
//      return await database.filterUssds(query);
//
//    }
//
//    return ListView.builder(
//        itemCount: searchList.length,
//        itemBuilder: (context, index) => ListTile(
//              onTap: (){
//                showResults(context);
//              },
//              leading: Icon(Icons.trip_origin),
//          title: Text(suggestionList[index]),
////              title: RichText(text: TextSpan(
////                text: suggestionList[index].substring(0,query.length),
////                style: TextStyle(
////                  color: Colors.black,
////                  fontWeight: FontWeight.bold,
////                ),
////                children: [TextSpan(
////                  text: suggestionList[index].substring(query.length),
////                  style: TextStyle(
////                    color: Colors.grey
////                  )
////                )]
////              )),
//            ));


