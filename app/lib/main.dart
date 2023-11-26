// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggetions()
                    ],
                  ),
                ),
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget Suggetions() {
    return Container(
      child: Column(
        children: [
          TitleItem("Suggestion", "View All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LocationsItem("assets/images/post1.jpg", "Italy",
                    "25km from you", "18.0"),
                LocationsItem("assets/images/post5.jpg", "Kiz Kulesi",
                    "7km from you", "13.0"),
                LocationsItem("assets/images/post2.jpg", "Kopru",
                    "25km from you", "16.0"),
                LocationsItem("assets/images/post3.jpg", "15 temmuz ",
                    "31km from you", "18.0"),
                LocationsItem("assets/images/post6.jpg", "Gece Kiz Kulesi",
                    "13km from you", "15.0"),
                LocationsItem("assets/images/post5.jpg", "Kiz Kulesi",
                    "17km from you", "13.0"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget NearLocations() {
    return Container(
      child: Column(
        children: [
          TitleItem("Near You", "View All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LocationsItem("assets/images/post1.jpg", "Italy",
                    "25km from you", "18.0"),
                LocationsItem("assets/images/post5.jpg", "Kiz Kulesi",
                    "7km from you", "13.0"),
                LocationsItem("assets/images/post2.jpg", "Kopru",
                    "25km from you", "16.0"),
                LocationsItem("assets/images/post3.jpg", "15 temmuz ",
                    "31km from you", "18.0"),
                LocationsItem("assets/images/post6.jpg", "Gece Kiz Kulesi",
                    "13km from you", "15.0"),
                LocationsItem("assets/images/post5.jpg", "Kiz Kulesi",
                    "17km from you", "13.0"),
  
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget LocationsItem(
      String photo, String title, String description, String price) {
    return Container(
      width: 165,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(41, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              photo,
              width: 150,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(56, 56, 56, 1)),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 8,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 125, 87, 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(price,
                    style: TextStyle(fontSize: 9, color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget TopLocations() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleItem("Top location", "View All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/images/ahmet.jpg", "AhmetSelim"),
                StoryItem("assets/images/keyvan.jpg", "Keyvan"),
                StoryItem("assets/images/ramazan.jpg", "Ramazan"),
                StoryItem("assets/images/ahmet.jpg", "AhmetSelim"),
                StoryItem("assets/images/keyvan.jpg", "Keyvan"),
                StoryItem("assets/images/ramazan.jpg", "Ramazan"),
                StoryItem("assets/images/ahmet.jpg", "AhmetSelim"),
                StoryItem("assets/images/keyvan.jpg", "Keyvan"),
                StoryItem("assets/images/ramazan.jpg", "Ramazan"),
                StoryItem("assets/images/ahmet.jpg", "AhmetSelim"),
                StoryItem("assets/images/keyvan.jpg", "Keyvan"),
                StoryItem("assets/images/ahmet.jpg", "AhmetSelim"),
                StoryItem("assets/images/keyvan.jpg", "Keyvan"),
                StoryItem("assets/images/ramazan.jpg", "Ramazan"),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget SearchBox() {
    return Container(
      height: 50,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color.fromARGB(41, 158, 158, 158),
        ),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 17,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Akaretler, Beşiktaş",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Icon(
            Icons.tune,
            color: Color.fromRGBO(236, 125, 87, 1),
            size: 17,
          )
        ],
      ),
    );
  }

  Widget StoryItem(
    String photo,
    String name,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(241, 156, 101, 1),
                  Color.fromRGBO(231, 74, 74, 1),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromRGBO(153, 153, 153, 1),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(56, 56, 56, 1),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromRGBO(153, 153, 153, 1),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Furkan!!",
                style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontSize: 14,
                ),
              ),
              Text(
                "Explore İstanbul City!",
                style: TextStyle(
                    color: Color.fromRGBO(56, 56, 56, 1), fontSize: 16),
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.sunny,
                  size: 18,
                  color: Color.fromRGBO(236, 125, 87, 1),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Icon(
                  Icons.notifications,
                  size: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget BottomMenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 214, 212, 212),
          width: 1,
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home, true),
          BottomMenuItem("Moments", Icons.group, false),
          HighlightedItem("Book", Icons.maps_ugc),
          BottomMenuItem("Chat", Icons.forum, false),
          BottomMenuItem("Profile", Icons.person, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon, size: 24, color: renk),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 10, color: renk),
          )
        ],
      ),
    );
  }

  Widget HighlightedItem(
    String title,
    IconData icon,
  ) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(icon, size: 28, color: renk),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(fontSize: 14, color: renk),
          )
        ],
      ),
    );
  }
}
