import 'package:dio/dio.dart';

import '../Model_p/Model_p.dart';

class  srevice_r{
 static Dio dio = Dio();
 //login get
 static Future<void> postLOGIN({required String password,required String email}) async {
  await dio.post(
      'https://student.valuxapps.com/api/login',
      data: {
      "password": password,
      "email": email
      }
  );
 }
 //post signup
 static Future<void> postSignup({required String name,required String password,required String phone,required String email}) async {
 await dio.post(
  'https://student.valuxapps.com/api/register',
     data: {
    'name': name,
     'password': password,
    'phone':  phone,
    'email' : email}
 );
 }
}