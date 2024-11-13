import 'package:flutter/cupertino.dart';
import '../Model_p/Model_p.dart';
import '../Service_p/service_r.dart';

class provider extends ChangeNotifier {
  user? userModel;

  Future<void> postsignup( String name,String password,String phone,String email) async {
   userModel= await  srevice_r.postSignup(
       name: name,
       password: password,
       phone: phone,
       email: email
   );
    notifyListeners();
  }
  Future<void> postLogin( String password,String email) async {

   await  srevice_r.postLOGIN(
        password: password,
        email: email
    );
    notifyListeners();
  }

}