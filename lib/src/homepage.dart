import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 1;

  void changeImage(){
    value = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[300],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text(
            'Aabra Ka Daabra',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Lobster',
            ),
          ),  
        ),
        body: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                      child: FlatButton(
                      onPressed: (){
                        setState(() {
                          changeImage();
                        });
                      },
                      child: Image.asset('images/ball$value.png'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}