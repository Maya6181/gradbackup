
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../profile.dart';
import '../wishlist-page.dart';

class ToysPage extends StatefulWidget{
  _ToysPageState createState() =>  _ToysPageState();
}

class  _ToysPageState  extends State<ToysPage> {
  int currentIndex =0;

  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Do something when search icon button is pressed.
                        },
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Color(0xff58006D)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {
                          // Do something when voice icon button is pressed.
                        },
                      ),
                    ],
                  ),
                ),


                      Builder(
                          builder: (context) {
                            return Column(children: [
                              BottomNavigationBar(
                                currentIndex: currentIndex,
                                onTap: (index) {
                                  setState(() => currentIndex = index);
                                  switch (index) {
                                    case 0:
                                    // Navigate to the home page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                      break;
                                    case 1:
                                    // Navigate to the profile page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                      break;
                                    case 2:
                                    // Navigate to the wishlist page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistPage()));
                                      break;
                                  }
                                },
                                backgroundColor: Colors.white,
                                selectedItemColor: Colors.purple,
                                unselectedItemColor: Colors.grey,
                                showSelectedLabels: true,
                                showUnselectedLabels: true,
                                items: [
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.home),
                                    label: 'Home',
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.person),
                                    label: 'Profile',
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.favorite),
                                    label: 'Wishlist',
                                  ),

                                ],
                              ),

                            ]
                            );
                          }
                      )
                    ]
                )

            )

    );

  }
}