import 'package:bike/Screen_three.dart';
import 'package:bike/Style/style_sheet.dart';
import 'package:bike/widgets/Bottom_app_bar.dart';
import 'package:bike/widgets/CustomDetail.dart';
import 'package:bike/widgets/Custom_app_bar.dart';
import 'package:bike/widgets/Recent_viewed.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomAppBar(pagename: 'Bike Detail'),
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
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 180,
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        'Indian Scout Bobber',
                        style: label2,
                      ),
                      SizedBox(height: 10),
                      CustomDetail(title: 'Category', subtitle: 'Cruiser'),
                      SizedBox(height: 10),
                      CustomDetail(title: 'Displacement', subtitle: '1133 cc'),
                      SizedBox(height: 10),
                      CustomDetail(title: 'Max. Speed', subtitle: '124 km/hr'),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                        },
                          child: CustomDetail(
                              title: 'Rent', subtitle: '1499/per day')),
                    ],
                  ),
                ),
                Container(width: 160, height: 350,decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 5),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/detail.jpg'),fit: BoxFit.cover,)
                ),)
              ],
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Text('Add items', style: label2)),
            SizedBox(width: 10),
            Expanded(
              child: ListView(
                children: [
                  RecentViewed(
                      title: 'Riding Jacket',
                      subtitle: '800/per day',
                      check: '1',image: 'images/jacket.jpg'),
                  SizedBox(height: 10),
                  RecentViewed(
                      title: 'Riding Gloves',
                      subtitle: '800/per day',
                      check: 'Add',image: "images/gloves.jpg"),
                  SizedBox(height: 10),
                  RecentViewed(
                      title: 'Helmet', subtitle: '800/per day', check: '1',image: 'images/helmet.jpg'),
                  SizedBox(height: 10),
                  RecentViewed(
                      title: 'Riding Shoes',
                      subtitle: '1000/per day',
                      check: 'Add',image: 'images/shoes.jpg'
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
