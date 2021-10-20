import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
/*--------Backend--------*/
  int nbreDe1 = 1;
  int nbreDe2 = 1;

  void changeDe() {
    nbreDe1 = Random().nextInt(6)+1;
    nbreDe2 = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade200,
          title: Text(
            "Mon Super Dé Pour Frapper",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.play_arrow),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/images/dice$nbreDe1.png"),
                  onPressed: () {
                    setState(() {
                      changeDe();
                    });
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset("assets/images/dice$nbreDe2.png"),
                  onPressed: () {
                    setState(() {
                      changeDe();
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
