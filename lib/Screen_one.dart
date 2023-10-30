import 'package:bike/Screen_two.dart';
import 'package:bike/widgets/Bottom_app_bar.dart';
import 'package:bike/widgets/CustomCard.dart';
import 'package:bike/widgets/Recent_viewed.dart';
import 'package:flutter/material.dart';
import 'Style/style_sheet.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color _color = Colors.white;
  Color _color1 = Colors.white;
  Color _color2 = Colors.white;
  Color _color3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomAppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  CircleAvatar(radius: 30,backgroundImage: AssetImage('images/profile.jpg'),),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: label3,
                      ),
                      SizedBox(height: 3),
                      Text('Abhi Tiwari', style: label2)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.orange[200]),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search-Bike',
                        hintStyle: style,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.orangeAccent;
                        _color1 = Colors.white;
                        _color2 = Colors.white;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color,
                      ),
                      child: Text(
                        'Adventure',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.orangeAccent;
                        _color2 = Colors.white;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color1,
                      ),
                      child: const Text(
                        'Cruiser',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.white;
                        _color2 = Colors.orangeAccent;
                        _color3 = Colors.white;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color2,
                      ),
                      child: const Text(
                        'Sport Bike',
                        style: label3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _color = Colors.white;
                        _color1 = Colors.white;
                        _color2 = Colors.white;
                        _color3 = Colors.orangeAccent;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: _color3,
                      ),
                      child: const Text(
                        'Tourist',
                        style: label3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Popular items',
              style: label2,
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                      },
                      child: CustomCard(
                          title: 'Meteore Royal Enfield',
                          subtitle: '699/ per Day',
                          image: 'images/meteor.jpg')),
                  CustomCard(
                      title: 'Scout Bobber Indian',
                      subtitle: '1499/ per Day',
                      image: 'images/bobber.jpg'),
                  CustomCard(
                      title: 'Himalyan Royal Enfield',
                      subtitle: '1199/ per Day',
                      image: 'images/rebel.jpg')
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Recently Viewed',
              style: label2,
            ),
            Expanded(
              child: ListView(
                children: [
                  RecentViewed(
                      title: 'Hayabusa',
                      subtitle: '2000/per day',
                      check: 'Available',
                    image: 'images/hayabusa.jpg',
                  ),
                  SizedBox(height: 10),
                  RecentViewed(
                      title: 'Classic 350',
                      subtitle: '1500/per day',
                      check: 'Booked',image: "images/meteor.jpg"),
                  SizedBox(height: 10),
                  RecentViewed(
                      title: 'Minic ZX 10z',
                      subtitle: '1000/per day',
                      check: 'Available',image: 'images/bobber.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



