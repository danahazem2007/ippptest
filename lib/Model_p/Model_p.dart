import 'package:flutter/cupertino.dart';

class user{
  bool state;
  user({required this.state});
  factory user.fromjson(Map<String,dynamic>json){
    return user(state: json["status"]);
  }
  }

