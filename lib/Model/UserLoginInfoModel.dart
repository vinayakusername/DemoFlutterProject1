class UserLoginInfo {
  final String email;
  final String mobile;
  final String username;
  final String password;
  UserLoginInfo(this.username,this.email,this.mobile,this.password);


  //A User.fromJson() constructor, for constructing a new User instance from a map structure.
  UserLoginInfo.fromJson(Map<String, dynamic> json)
      : username=json['username'],
        email = json['email'],
        mobile=json['mobile'],
        password=json['password'];

  
}


//UsersLoginList class define to convert the data from map to list.

class UsersList {
  final List<UserLoginInfo> usersList;

  UsersList({
    this.usersList,
  });

  factory UsersList.fromJson(List<dynamic> json) {

    //List<UserLoginInfo> users = new List<UserLoginInfo>();
    List<UserLoginInfo> users = new List<UserLoginInfo>();
    users = json.map((i)=>UserLoginInfo.fromJson(i)).toList();
    return new UsersList(
       usersList: users,
    );
  }
}