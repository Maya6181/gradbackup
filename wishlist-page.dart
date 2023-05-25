import 'package:bel_gomlaa/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart-pages/cart-page.dart';
import 'home-page/homepage.dart';

class WishlistPage extends StatefulWidget{
_WishlistPageState createState() =>  _WishlistPageState();
}

class  _WishlistPageState  extends State<WishlistPage> {
  int currentIndex =0;

  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
        'Electronics',
        style: TextStyle(color: Color(0xff58006D)),
    ),
    actions: [
    IconButton(
    icon: Icon(Icons.shopping_cart),
    color: Color(0xff58006D),
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CartPage()));
    print("cart page");

    },
    ),
    IconButton(
    icon: Icon(Icons.notifications),
    color: Color(0xff58006D),
    onPressed: () {},
    ),
    ],
    ),
      body: Column(
        children: [


        SizedBox(height: 20,),

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

    );
  }
}