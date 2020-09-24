import 'defaultUssds.dart';
import 'package:moor_flutter/moor_flutter.dart';
part 'datase_helper.g.dart';


//table Ussds represents safaricom short codes

class SafaricomUssds extends Table{

  IntColumn get id => integer().autoIncrement()();// makes it the primary key
  TextColumn get dialNumber => text().nullable()();
  TextColumn get dialName => text().nullable()();
}

// table for airtel short codes

class AirtelUssds extends Table{

  IntColumn get id => integer().autoIncrement()();// makes it the primary key
  TextColumn get dialNumber => text().nullable()();
  TextColumn get dialName => text().nullable()();
}

class TelkomUssds extends Table{

  IntColumn get id => integer().autoIncrement()();// makes it the primary key
  TextColumn get dialNumber => text().nullable()();
  TextColumn get dialName => text().nullable()();
}

class BankUssds extends Table{

  IntColumn get id => integer().autoIncrement()();// makes it the primary key
  TextColumn get dialNumber => text().nullable()();
  TextColumn get dialName => text().nullable()();
}
class AndroidUssds extends Table{

  IntColumn get id => integer().autoIncrement()();// makes it the primary key
  TextColumn get dialNumber => text().nullable()();
  TextColumn get dialName => text().nullable()();
}



@UseMoor(tables:[SafaricomUssds,AirtelUssds,TelkomUssds,BankUssds,AndroidUssds])
class  AppDatabase extends _$AppDatabase {

AppDatabase():super(FlutterQueryExecutor.inDatabaseFolder(path: 'ussdDb.db',logStatements:true,),);

@override
int get schemaVersion => 1;

MigrationStrategy get migration{
  return MigrationStrategy(
    onCreate: (Migrator m)=> m.createAll().then((value) {
      for(var s in defaultSafaricom){
    insertSafaricomUssd(s);
    }
    for(var a in defaultAirtel) {
      insertAirtelUssd(a);
    }
      for(var t in defaultTelkom) {
        insertTelkomUssd(t);
      }
      for(var b in defaultBank) {
        insertBankUssd(b);
      }
      for(var n in defaultAndroid) {
        insertAndroidUssd(n);
      }
    })
//    beforeOpen: (details)async{
//      await into(ussds).insert(
//        UssdsCompanion(
//          dialNumber: Value('*144#'),
//          dialName: Value('balance'),
//        )
//      );
//    }

  );
}



//Safaricom queries
Future<List<SafaricomUssd>> getAllSafaricomUssds() => select(safaricomUssds).get();
Stream <List<SafaricomUssd>> watchSafaricomAllUssds()=> select(safaricomUssds).watch();
Stream<List<SafaricomUssd>> filterStreamSafaricomUssd(String value){
  return(select(safaricomUssds)..where((tbl) => tbl.dialNumber.contains(value) | tbl.dialName.contains(value) )).watch();
}
Future<int> insertSafaricomUssd(SafaricomUssd ussd) => into(safaricomUssds).insert(ussd);
Future deleteSafaricomUssd(SafaricomUssd ussd)=> delete(safaricomUssds).delete(ussd);
Future updateSafaricomUssd (SafaricomUssd ussd )=> update(safaricomUssds).replace(ussd);


//Airtel queries
  Stream <List<AirtelUssd>> watchAirtelAllUssds()=> select(airtelUssds).watch();
  Stream<List<AirtelUssd>> filterStreamAirtelUssd(String value){
    return(select(airtelUssds)..where((tbl) => tbl.dialNumber.contains(value) | tbl.dialName.contains(value) )).watch();
  }
  Future<int> insertAirtelUssd(AirtelUssd ussd) => into(airtelUssds).insert(ussd);
  Future deleteAirtelUssd(AirtelUssd ussd)=> delete(airtelUssds).delete(ussd);


  //Telkom queries
  Stream <List<TelkomUssd>> watchTelkomAllUssds()=> select(telkomUssds).watch();
  Stream<List<TelkomUssd>> filterStreamTelkomUssd(String value){
    return(select(telkomUssds)..where((tbl) => tbl.dialNumber.contains(value) | tbl.dialName.contains(value) )).watch();
  }
  Future<int> insertTelkomUssd(TelkomUssd ussd) => into(telkomUssds).insert(ussd);
  Future deleteTelkomUssd(TelkomUssd ussd)=> delete(telkomUssds).delete(ussd);


  // Bank queries
  Stream <List<BankUssd>> watchBankAllUssds()=> select(bankUssds).watch();
  Stream<List<BankUssd>> filterStreamBankUssd(String value){
    return(select(bankUssds)..where((tbl) => tbl.dialNumber.contains(value) | tbl.dialName.contains(value) )).watch();
  }
  Future<int> insertBankUssd(BankUssd ussd) => into(bankUssds).insert(ussd);
  Future deleteBankUssd(BankUssd ussd)=> delete(bankUssds).delete(ussd);

  // Android queries
  Stream <List<AndroidUssd>> watchAndroidAllUssds()=> select(androidUssds).watch();
  Stream<List<AndroidUssd>> filterStreamAndroidUssd(String value){
    return(select(androidUssds)..where((tbl) => tbl.dialNumber.contains(value) | tbl.dialName.contains(value) )).watch();
  }
  Future<int> insertAndroidUssd(AndroidUssd ussd) => into(androidUssds).insert(ussd);
  Future deleteAndroidUssd(AndroidUssd ussd)=> delete(androidUssds).delete(ussd);
}




















// import 'dart:io';
// import 'package:path/path.dart';
// import 'ussd_data.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import 'main.dart';
// import 'package:flutter/foundation.dart';
// import 'package:streamqflite/streamqflite.dart';
// import 'package:sqlbrite/sqlbrite.dart';

// class DatabaseHelper with ChangeNotifier {
//   List<Ussd>  ussdList;
//   int count;
//   DatabaseHelper();
// //  DatabaseHelper(){
// //    ussdList = [];
// //
// //  }
//   static Database _database;
//   static final _dbName = 'UssdDatabases.db';
//   static final _dbVersion = 1;
//   static final _tableName = 'ussdTable';
//   static final columnId = 'id';
//   static final columnDialNumber = 'dialNumber';
//   static final columnDialName = 'dialName';
//   final delaySec = Duration(seconds: 1);

// //  making DatabaseHelper a singleton class
//   DatabaseHelper._privateConstructor();
//   static  DatabaseHelper instance = DatabaseHelper._privateConstructor();

// //  var streamdb = BriteDatabase(_database);



//   Future<Database> get database async {
//     if (_database != null) return _database;

//     await initiateDatabase();
//     return _database;
//   }

//   initiateDatabase() async {
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = join(directory.path, _dbName); //set the path of the database using the join from 'path' package
//     // to ensure the path is correctly constructed for each platform
//     _database = await openDatabase(
//         path, version: _dbVersion, onCreate: _onCreate); //open the database


//   }
//   Future _onCreate(Database db , int version)async{
//     db.execute(
//       '''
//       CREATE TABLE $_tableName(
//       $columnId INTEGER PRIMARY KEY,
//       $columnDialNumber TEXT ,
//       $columnDialName TEXT
//       );
//       '''
//     );

//   }

//    Future<void> insert(Ussd ussd)async{
//     Database db = await database; //get reference to the database
//     if(db == null||!db.isOpen){

//        await  initiateDatabase();
//     }
//       await db.insert('$_tableName', ussd.toMap(), conflictAlgorithm: ConflictAlgorithm.replace); //conflict algorithm to use in case the same ussd is inserted twice replace any previous data
//     notifyListeners();
//     queryAll();
//     notifyListeners();
//   }

//  // Get the 'map List'
//   Future <List<Ussd>> queryAll()async{
//     Database db = await database; //get reference to the database
//     //Query the table for all Ussds
//     final List<Map<String,dynamic>> maps = await db.query('$_tableName');
//     //convert the List<Map<String,dynamic>>  into a List<Ussd>
//     return List.generate(maps.length, (i) {
//      return Ussd(
//        id: maps[i]['id'],
//        dialNumber: maps[i]['dialNumber'],
//        dialName: maps[i]['dialName'],
//      );
//     }
//     );
//   }





//   Future<void>update(Ussd ussd)async{
//     Database db = await database; //get reference to the database
//     await db.update('$_tableName',
//          ussd.toMap(),
//       where: 'id = ?',
//       whereArgs: [ussd.id], //whereArgs safeguards against SQL injection attacks
//     );
//     notifyListeners();
//   }
//   // Delete Operation: Delete a ussd object from database
// 	Future<int> deleteUssd(int id) async {
//     Database db = await database; //get reference to the database
// 		int result = await db.rawDelete('DELETE FROM $_tableName WHERE $columnId = $id');
// 		notifyListeners();
// 		return result;
// 	}



//   // get the number of ussd objects in the db
//   Future<int> getCount()async{
//     Database db = await database; //get reference to the database
//     List<Map<String , dynamic>> x = await db.rawQuery('SELECT COUNT(*) from $_tableName');
//     int result = Sqflite.firstIntValue(x);
//     return result;
//   }

// }
