import 'package:flutter/foundation.dart';

import '../Model_p/e-commer_M.dart';
import '../Service_p/service_p2.dart';

class perviderHome extends ChangeNotifier{
  PRODUCT ?product;
  Future <void> getall()async{
  product =await service_p2.getdatahome();
   notifyListeners();
  }

}