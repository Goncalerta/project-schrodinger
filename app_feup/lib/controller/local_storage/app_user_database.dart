import 'dart:async';
import 'package:uni/controller/local_storage/app_database.dart';
import 'package:uni/model/entities/course.dart';
import 'package:uni/model/entities/profile.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tuple/tuple.dart';

//TODO save faculty
class AppUserDataDatabase extends AppDatabase {
  AppUserDataDatabase()
      : super('userdata.db', ['CREATE TABLE userdata(key TEXT, value TEXT)']);

  void saveUserData(Profile profile) async {
    await deleteUserData();
    await _insertUserData(profile);
  }

  Future<void> _insertUserData(Profile profile) async {
    for (Tuple2<String, String> keymap in profile.keymapValues()) {
      await insertInDatabase(
          'userdata', {'key': keymap.item1, 'value': keymap.item2});
    }
  }

  Future<Profile> userdata() async {
    // Get a reference to the database
    final Database db = await this.getDatabase();

    // Query the table for all the user data
    final List<Map<String, dynamic>> maps = await db.query('userdata');

    // Convert the List<Map<String, dynamic> into a Profile.
    String name, email, balance, feesBalance, feesLimit;
    for (Map<String, dynamic> entry in maps) {
      if (entry['key'] == 'name') name = entry['value'];
      if (entry['key'] == 'email') email = entry['value'];
      if (entry['key'] == 'balance') balance = entry['value'];
      if (entry['key'] == 'feesBalance') feesBalance = entry['value'];
      if (entry['key'] == 'feesLimit') feesLimit = entry['value'];
    }

    return Profile(
        name: name,
        email: email,
        courses: <Course>[],
        printBalance: balance,
        feesBalance: feesBalance,
        feesLimit: feesLimit);
  }

  Future<void> deleteUserData() async {
    // Get a reference to the database
    final Database db = await this.getDatabase();

    await db.delete('userdata');
  }

  void saveUserPrintBalance(String userBalance) async {
    await insertInDatabase(
        'userdata', {'key': 'balance', 'value': userBalance});
  }

  void saveUserFees(Tuple2<String, String> feesInfo) async {
    await insertInDatabase(
        'userdata', {'key': 'feesBalance', 'value': feesInfo.item1});
    await insertInDatabase(
        'userdata', {'key': 'feesLimit', 'value': feesInfo.item2});
  }
}
