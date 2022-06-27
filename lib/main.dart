//----- E-Commerce UI -----

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myPages/drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String name = "AHMAD";
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          //Drawer Import
          drawer: myDrawer(context),

          //

          appBar: AppBar(
            title: Text(
              "My Products",
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
            //Leading button on right side ....
            // leading: IconButton(
            //   icon: Icon(Icons.search),
            //   onPressed: () {},
            // ),
            backgroundColor: Colors.red,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.red[200],
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.cart_outline),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.grid_outline),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline),
                label: "Profile",
              ),
            ],
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                ),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              // Horizontal List
              horizontalpProductsSlider(),
              // Verticle products call
              verticalProductsSlider(),
            ],
          ),
        ));
  }

  List images = [
    'https://images.pexels.com/photos/844127/pexels-photo-844127.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/5980591/pexels-photo-5980591.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/6771293/pexels-photo-6771293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/730564/pexels-photo-730564.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  horizontalpProductsSlider() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Most Loved Products",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View More..."),
              ),
            ],
          ),
        ),
        // Horizontal Products Main
        SizedBox(
          height: 250.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5.0,
                        child: Container(
                          height: 220.0,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image.network(
                                fit: BoxFit.cover,
                                "https://images.pexels.com/photos/5980585/pexels-photo-5980585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.0,
                      left: 15.0,
                      child: Chip(
                        label:
                            Text("-50%", style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ],
                );
              })),
        )
      ],
    );
  }

  Widget verticalProductsSlider() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Most Liked Products",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View More..."),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: ((context, index) {
            return Container(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        margin: EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            height: 220.0,
                            child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Image.network(
                                  fit: BoxFit.cover,
                                  "https://images.pexels.com/photos/5980585/pexels-photo-5980585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        left: 15.0,
                        child: Chip(
                          label: Text("-50%",
                              style: TextStyle(color: Colors.white)),
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  //start typing here
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bitcoin On Sale - Grab yours",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 28.0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Text(
                          "20K USD",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
          ),
        ),
      ],
    );
  }
}
