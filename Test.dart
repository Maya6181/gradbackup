import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: new ButtonBar(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlatButton(
                        child: new Text('Computer'),
                        color: Colors.white,
                        textColor: Color(0xff58006D),
                        onPressed: () {/** */},
                      ),
                      FlatButton(
                        child: Text('TV'),
                        color: Colors.white,
                        textColor: Color(0xff58006D),
                        onPressed: () {/** */},
                      ),
                      FlatButton(
                        child: Text('Cell Phone'),
                        color: Colors.white,
                        textColor: Color(0xff58006D),
                        onPressed: () {/** */},
                      ),
                      FlatButton(
                        child: Text('Headphones'),
                        color: Colors.white,
                        textColor: Color(0xff58006D),
                        onPressed: () {/** */},
                      ),
                    ],
                  ),
                ),
              ],
            )
        )
    );

  }
}

class MyImageList extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/images/headphones.jpeg',
    'assets/images/tv.jpeg',
    'assets/images/laptop.jpg',
    'assets/images/mobile.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(imageUrls[index]);
        },
      ),
    );
  }
}