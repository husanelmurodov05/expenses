import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Color());
}

class Color extends StatefulWidget {
  const Color({Key? key}) : super(key: key);

  @override
  State<Color> createState() => _ColorsState();
}

class _ColorsState extends State<Color> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      child: Card(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: const Card(
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                         color: Colors.blueAccent,
                        margin: EdgeInsets.all(10),
                        
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                         color: Colors.blueAccent,
                      ),
                    ),
                  ],
                )),
          ]),
        ));
  }
}
