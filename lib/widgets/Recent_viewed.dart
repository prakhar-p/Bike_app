import 'package:flutter/material.dart';

import '../Style/style_sheet.dart';
class RecentViewed extends StatelessWidget {
  String title, subtitle, check,image;
  RecentViewed(
      {Key? key,
        required this.title,
        required this.subtitle,
        required this.check,
        required this.image
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.orange[100]),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(width: 10),
            Container(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: label4),
                    Text(
                      subtitle,
                      style: label3,
                    )
                  ],
                )),
            SizedBox(
              width: 80,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: check == 'Available'
                    ? Colors.orangeAccent
                    : Colors.grey[400],
              ),
              child: Center(child: Text(check)),
            )
          ],
        ),
      ),
    );
  }
}