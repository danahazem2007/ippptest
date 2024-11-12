import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widget/form.dart';
import '../provider/HOMEPEOVISER.dart';
import 'detalish.dart';

class home extends StatelessWidget {
  home({super.key});


  @override
  Widget build(BuildContext context) {
    var p=Provider.of<perviderHome>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Product",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body:
      Consumer<perviderHome>(builder: (context, value, child) {

        if (value.product == null) {
          value.getall();
         return CircularProgressIndicator();
        }
        else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 6 / 2, 
              
            ),
            itemCount: value.product?.data.length,
            itemBuilder: (context, index) {
              return
                Container(
                    color: Colors.lightGreen[300],
                    child: GestureDetector
                      (onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>detalis(text: p.product?.data[index]['image'],detalis0: p.product?.data[index]['description'], image: p.product?.data[index]['image'],)));
                    },
                        child:
                    Item
                      (image: p.product?.data[index]["image"],
                        details1: p.product?.data[index]["description"],
                        name: p.product?.data[index]["name"]))
                );
            },
          );
        }


      }
      ),
    );
  }

}



