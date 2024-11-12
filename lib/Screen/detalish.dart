import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/HOMEPEOVISER.dart';

class detalis extends StatelessWidget {

var text;
var detalis0;
var image;
  detalis({required this.text,required this.detalis0,required this.image });
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<perviderHome>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Prodcut")),
      ),
      body: Container(
        child:
        Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            Text(text),
            Text(detalis0),
          ],
        ),

      ),
    );
  }
}
