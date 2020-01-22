import 'dart:convert';

import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:demoflutterproject1/Utility/Serialition.dart';

class LoginValidation{

UsersList usersInfoList;
Future<void> userEmailValidation()
async {
      usersInfoList = await new Serialition().loadUserInfo();
      
      print("email:" +usersInfoList.usersList[0].email);
}
}
