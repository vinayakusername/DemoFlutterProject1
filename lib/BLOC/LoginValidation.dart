
import 'package:demoflutterproject1/Model/UserLoginInfoModel.dart';
import 'package:demoflutterproject1/Utility/Serialition.dart';

class LoginValidation{

UsersList usersInfoList;
Future<void> userEmailValidation()
async {
      usersInfoList = await new Serialition().loadUserInfo();
      int sizeOFList = usersInfoList.usersList.length;
      for(int i=0;i<sizeOFList;i++)
      {
      String userEmail = usersInfoList.usersList[i].email;
      if("vishwas@gmail.com"==userEmail)
      print("email:"+userEmail+"Exits!!!");
      else
      print("User Doesn't Exits!!!");
      }
      
}


Future<void> userPhoneValidation()
async {
      usersInfoList = await new Serialition().loadUserInfo();
      int sizeOFList = usersInfoList.usersList.length;
      for(int i=0;i<sizeOFList;i++)
      {
      String userPhone = usersInfoList.usersList[i].mobile;
      if("1234569400"==userPhone)
      print("welcome "+usersInfoList.usersList[i].username+" your mobile no is :"+userPhone);
      else
      print("User Doesn't Exits!!!");
      }
      
    
    }

Future<void> emptyInputValidation()
async {
      usersInfoList = await new Serialition().loadUserInfo();
      int sizeOFList = usersInfoList.usersList.length;
      for(int i=0;i<sizeOFList;i++)
      {
      String userPhone = usersInfoList.usersList[i].mobile;
      if(""==null)
      print(userPhone+" "+usersInfoList.usersList[i].username);
     
      }
      
    
    }





}
