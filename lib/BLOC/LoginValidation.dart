
import 'dart:io';

import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:demoflutterproject1/Utility/Serialition.dart';

class LoginValidation{

    UsersList usersInfoList;//instance variable of type model class(UsersList),to hold object of model class.

     //custom Setter Method.
     set getObjList(UsersList infoList){
          usersInfoList = infoList;
    }
    
    UsersList get getObjList// Instance variable with custom Getter.
    {
      return usersInfoList;
    }


// userEmailValidation() is define for verifying the email of user with hardcode values.
 void userEmailValidation()
  {
    
  // Below statement returns the reference variable of model class pointing to object of model class, 
  // which is created in Serialition class.
    // UsersList usersInfoList = await new Serialition().loadUserInfo();

      //It returns the Size of the List which is available in model class.
      int sizeOFList = LoginValidation().getObjList.usersList.length;
      for(int i=0;i<sizeOFList;i++) // It is used to iterate the record of user in List.
      {
      String userEmail = usersInfoList.usersList[i].email;
      if("ranjit@gmail.com"==userEmail)
      print("email:"+userEmail+"Exits!!!");
      else
      print("User Doesn't Exits!!!");
      }
      
}

//userPhoneValidation() is define for verifying the phone no. of user with hardcode values.
// Future<void> userPhoneValidation()
// async {
//       usersInfoList = await new Serialition().loadUserInfo();
//       int sizeOFList = usersInfoList.usersList.length;
//       for(int i=0;i<sizeOFList;i++)
//       {
//       String userPhone = usersInfoList.usersList[i].mobile;
//       if("1234569400"==userPhone)
//       print("welcome "+usersInfoList.usersList[i].username+" your mobile no is :"+userPhone);
//       else
//       print("User Doesn't Exits!!!");
//       }
      
    
//     }

// Future<void> emptyInputValidation()
// async {
//       usersInfoList = await new Serialition().loadUserInfo();
//       int sizeOFList = usersInfoList.usersList.length;
//       for(int i=0;i<sizeOFList;i++)
//       {
//       String userPhone = usersInfoList.usersList[i].mobile;
//       if(""==null)
//       print(userPhone+" "+usersInfoList.usersList[i].username);
     
//       }
      
    
//     }





}
