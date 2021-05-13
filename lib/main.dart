import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xFF4BD0D5),
          leading: Icon(Icons.arrow_back),
          title: Text("Dashboard"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 12),
              child: FaIcon(FontAwesomeIcons.bell),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFFEFFFE),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Healthcare",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("Http://healthcare.easylyve.com")
                    ],
                  ),
                  Image.network(
                    "https://lh3.googleusercontent.com/proxy/zpmgtD3VY3JinjuCe0RrvrZ8uVG15S3xpeH9JIlRG4kw1hW2CjgKHj8SrICjuY4QRzlHnE0wWZlCGbZhYXZmJFH4nWMZI39eGwrXJDfm4ewMsUmKrOy1",
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFFFEFFFE),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Website completeness",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("70%")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      color: Colors.grey,
                      height: 5,
                      child: Container(
                        width: 250,
                        color: Color(0xFF4BD0D5),
                      ),
                    ),
                  ),
                  RaisedButton(
                      color: Color(0xFFF4B614),
                      highlightColor: Color(0xFFF4B614),
                      disabledColor: Color(0xFFF4B614),
                      child: Text(
                        "Improve  >",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Analytics",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFFFEFFFE),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "User visit",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "50",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFFFEFFFE),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "New User",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "50",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Features",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xFFE2E3F6),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Premium support",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Free feature',
                            ),
                            RaisedButton(
                                disabledColor: Color(0xFFB7B3DB),
                                child: Text(
                                  "Feature detail",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: null,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)))
                          ],
                        ),
                      ),
                      Positioned(
                          right: 50,
                          top: 7,
                          child: FaIcon(
                            FontAwesomeIcons.solidBookmark,
                            size: 35,
                            color: Color(0xffB7B3DB),
                          ))
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Color(0xFFFDEFE8),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Newsletter support",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Free feature',
                            ),
                            RaisedButton(
                                disabledColor: Color(0xFFF2C5C4),
                                child: Text(
                                  "Feature detail",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: null,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)))
                          ],
                        ),
                      ),
                      Positioned(
                          right: 50,
                          top: 7,
                          child: FaIcon(
                            FontAwesomeIcons.solidBookmark,
                            size: 35,
                            color: Color(0xffF2C5C4),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Current Theme",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 280,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 280,
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex = 0,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.boxes),
              title: Text('Dashboard'),
              activeColor: Colors.deepPurple,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.globe),
              title: Text('Website'),
              activeColor: Colors.pink,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.phone),
              title: Text(
                'Inquiry',
              ),
              activeColor: Colors.blueAccent,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: FaIcon(FontAwesomeIcons.headphonesAlt),
              title: Text('Support'),
              activeColor: Colors.redAccent,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
