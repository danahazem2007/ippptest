import 'package:dio/dio.dart';

import '../Model_p/Model_p.dart';

class  srevice_r{
 static Dio dio = Dio();
 //login get
 static Future<user> postLOGIN({required String password,required String email}) async {
 Response response= await dio.post(
      'https://student.valuxapps.com/api/login',
      data: {
      "password": password,
      "email": email
      }
  );
 print(response.data);
 return user.fromjson(response.data);

 }
 //post signup
 static Future<user> postSignup({required String name,required String password,required String phone,required String email}) async {
   Response response= await dio.post(
  'https://student.valuxapps.com/api/register',
     data: {
    'name': name,
     'password': password,
    'phone':  phone,
    'email' : email}
 );
   print(response.data);
   return user.fromjson(response.data);
 }

}