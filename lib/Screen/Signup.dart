
import 'package:dana_55/provider/register_p.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});
  TextEditingController NAME =  TextEditingController();
   TextEditingController Email =  TextEditingController();
   TextEditingController password =  TextEditingController();
   TextEditingController phone =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 30, color: Colors.black),
        title: Center(child: Text('Signup', style: TextStyle(fontSize: 35, color: Colors.purpleAccent))),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 350.4,
            child: Column(
              children: [
                TextFormField(
                  controller: NAME,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Name',
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: Email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                    suffixIcon: Icon(Icons.phone),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 20),
                Consumer<provider>(
                  builder: (context, value, child) {
                    return ElevatedButton(
                      onPressed: () {
                       value.postsignup(NAME.text, password.text, phone.text, Email.text);
                        if (value.userModel == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('failed to signup')),
                          );

                        }//
                        else  {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => login()),
                          );
                        }
                      },
                      child: Text('signup'),
                    );
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()), // Replace with your registration page
                    );
                  },
                  child: Text("You have an account--> Login in"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}