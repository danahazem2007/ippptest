import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Screen/detalish.dart';
import '../provider/HOMEPEOVISER.dart';


class Item extends StatelessWidget {
  Item({required this.image,required this.details1,required this.name});
  String image;
  String name;
  String details1;
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<perviderHome>(context);
    return Container(
      color:  Colors.white70,
      height: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => detalis(text: name,detalis0: details1, image:image ,),));
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(image!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("$details1"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}