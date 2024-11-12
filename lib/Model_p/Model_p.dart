import 'package:flutter/cupertino.dart';

class user{
  Map<String,dynamic> state;
  user({required this.state});
  factory user.fromjson(Map<String,dynamic>json){
    return user(state: json['data']);
  }
  }

