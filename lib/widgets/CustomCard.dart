import 'package:flutter/material.dart';

import '../Style/style_sheet.dart';

class CustomCard extends StatelessWidget {
  String title, subtitle, image;
  CustomCard(
      {Key? key,
        required this.title,
        required this.subtitle,
        required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.white,
      elevation: 50,
      color: Colors.orange[200],
      child: SizedBox(
        width: 130,
        height: 150,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: label5,
              ),
              Text(
                subtitle,
                style: label3,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}