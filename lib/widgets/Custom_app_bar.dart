import 'package:flutter/material.dart';

import '../Style/style_sheet.dart';

class CustomAppBar extends StatelessWidget {
  String pagename;
  CustomAppBar({Key? key ,required this.pagename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orangeAccent,width: 2),

      ),
      child: Center(child: Text(pagename,style: label2)),
    );
  }
}
