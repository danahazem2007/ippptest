import 'package:dana_55/Model_p/e-commer_M.dart';
import 'package:dio/dio.dart';

import '../Model_p/Model_p.dart';

class service_p2{
  static Dio dio  = Dio();
  static Future<PRODUCT> getdatahome() async {
    try {
      final url = "https://student.valuxapps.com/api/home";
      Response response = await dio.get(url);
      if(response.statusCode==200){
        return PRODUCT.fromjson(response.data);
      }
      else
        {
          throw Exception( 'FEILD');
        }

    } catch (e) {
      print("$e");
      throw Exception("Error felid");
    }
  }
}