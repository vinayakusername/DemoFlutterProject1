import 'dart:async' show Future;
import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Serialition
{

Future<String> loadUserInfo() async {
  //return await rootBundle.loadString('JSONFiles/users.json');

   String jsonUsers = await rootBundle.loadString('JSONFiles/users.json');
   final jsonResponse = jsonDecode(jsonUsers);
   UsersList usersList = UsersList.fromJson(jsonResponse);
  //print("photos " + photosList.photos[0].title);
   print(usersList);
}

}
