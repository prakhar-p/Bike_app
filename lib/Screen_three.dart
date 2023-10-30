import 'package:bike/widgets/Bottom_app_bar.dart';
import 'package:bike/widgets/Custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style/style_sheet.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomAppBar(pagename: 'Check Out'),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent),
              child: Column(
                children: [
                  Container(
                      color: Colors.white70,
                      child: ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text('Start Date'),
                          subtitle: Text('10/july/2023'))),
                  SizedBox(height: 10),
                  Container(
                      color: Colors.white70,
                      child: ListTile(
                          leading: Icon(Icons.calendar_today),
                          title: Text('End Date'),
                          subtitle: Text('20/july/2023'))),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding:
                  EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.orange[200]),
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Apply Coupon',
                    hintStyle: style,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Details', style: label2),
            Divider(
              height: 10,
              thickness: 1,
              color: Colors.orange,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('Days :'),Text('Rent :'),Text('Additional items :'),Text('Coupon Discount :')],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 150,
                        child: Container(
                          height: 100,
                          width: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [Text('10'),Text('Rs 10,996'),Text('Rs    4400'),Text('Rs      400')],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Colors.orange,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Amount', style: label2),
                      Text('Rs  15,000',style: label2,),
                    ],
                  )

                ],
              )
            ),
            SizedBox(height: 80),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: Text('PAY',style: label2),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
