import 'package:flutter/material.dart';
import 'package:iconNotification/iconNotification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Icon Notification"),
              actions: [
                iconNotification(
                    index: _index,
                    iconButton: IconButton(
                      color: Colors.black,
                      icon: Icon(Icons.shopping_bag_sharp),
                      iconSize: 30,
                      onPressed: () {},
                    )),
              ],
            ),
            body: Center(
                child: RaisedButton(
              onPressed: () {
                setState(() {
                  _index++;
                });
              },
              child: Text("Increase the notification"),
            ))));
  }
}
