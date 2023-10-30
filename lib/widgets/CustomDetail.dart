import 'package:flutter/material.dart';

import '../Style/style_sheet.dart';

class CustomDetail extends StatelessWidget {
  String title,subtitle;
  CustomDetail({Key? key,required this.title,required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.orangeAccent,width: 3)
        ),
        child: Column(
          children: [
            Text(title,style: label2,),
            SizedBox(height: 10),
            Text(subtitle,style: label3,),
          ],
        )
    );
  }
}