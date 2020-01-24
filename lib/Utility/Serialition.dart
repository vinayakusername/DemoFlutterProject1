import 'dart:async' show Future;
import 'package:demoflutterproject1/BLOC/LoginValidation.dart';
import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Serialition
{
 
Future<String> loadUserInfo() async {
  
   //It load's the user data from JSON file.
   String jsonUsers = await rootBundle.loadString('JSONFiles/users.json');
   final jsonResponse = jsonDecode(jsonUsers);
   
   //usersList1 is a  reference variable of type UsersList model class and it store's object of UsersList.
   //UsersList.fromJson is named constructor in which we are passing decoded data of json file.
   UsersList usersList1 = UsersList.fromJson(jsonResponse);
    
 // It returns the object of UsersList.
    //return usersList1;
  LoginValidation().getObjModel = usersList1;//calling custom setter method of BLOC to set value(object of model class).
}

}
