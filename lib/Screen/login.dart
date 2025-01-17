import 'package:dana_55/provider/register_p.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Signup.dart';
import 'home.dart';

class login extends StatelessWidget {
   login({super.key});
  TextEditingController Email =  TextEditingController();
  TextEditingController password =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 30, color: Colors.black),
        title: Center(child: Text('Login', style: TextStyle(fontSize: 35, color: Colors.purpleAccent))),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body:Center(
        child: Container(
          width: 350.4,
          child: Column(
            children: [
              CircleAvatar(
          backgroundColor: Colors.black,
                radius: 25,
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: Email ,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your Email',
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Your password',
                  suffixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(height: 20,),
              Consumer<provider>(builder: (context, value, child) {
                return ElevatedButton(onPressed: ()async{
                  if (value.userModel == null) {
                  await  value.postLogin(password.text, Email.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('failed to signup')),
                    );

                  } else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home()),
                    );
                  }
                }, child: Text("Login"));
              },

              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()), // Replace with your registration page
                  );
                },
                child: Text("Don't have an account--> Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
