import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main () => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/background2.jpg'),
              fit: BoxFit.cover)),

              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.3),
                  ])),

              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>[
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem()
                          ],
                        ),
                      ),
                    SizedBox(height: 30,)  
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }

  Widget makeItem({image}){
    return AspectRatio(
      aspectRatio: 1.7/2, 
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/place.jpg'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
      ),);
  }
}