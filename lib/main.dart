import 'package:dana_55/Screen/home.dart';
import 'package:dana_55/provider/HOMEPEOVISER.dart';
import 'package:dana_55/provider/register_p.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'Screen/Signup.dart';
import 'Screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
       MultiProvider(
         providers: [
           ChangeNotifierProvider(create: (context) => provider(),),
           ChangeNotifierProvider(create: (context) => perviderHome(),)
         ],
         child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: login(),
               ),
       );
  }


}
