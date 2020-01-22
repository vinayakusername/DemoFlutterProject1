import 'dart:async' show Future;
import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Serialition
{

Future<UsersList> loadUserInfo() async {
  //return await rootBundle.loadString('JSONFiles/users.json');

   String jsonUsers = await rootBundle.loadString('JSONFiles/users.json');
   final jsonResponse = jsonDecode(jsonUsers);
   UsersList usersList1 = UsersList.fromJson(jsonResponse);
  //  print(usersList1.usersList.length);
  //  print("email:" + usersList1.usersList[0].email+"\n"+"username:" + usersList1.usersList[0].username);

  return usersList1;
   
}

}
