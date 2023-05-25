import 'package:bel_gomlaa/cart-pages/payment-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart-pages/cart-page.dart';

class ProductHomePage extends StatefulWidget {
  @override
  _ProductHomePageState createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  // Define your product data
  String productName = 'Example Product';
  String productDescription =
      'This is an example product description. Replace it with your own description.';
  double productPrice = 19.99;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Product Page',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

           Container(
            height: 300,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/dress1.png'),
                fit: BoxFit.cover,
              ),
            ),
            ),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                productDescription,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              Text(
                '\$$productPrice',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              RaisedButton(
                onPressed: () {
                  // Handle button press
                },
                child: Text('Add to Cart'),
              ),


            ],
          ),
        ),
      ),
    );
  }
}