import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Expenses());
}

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text("Harajatlar",
              style: TextStyle(color: Colors.blue, fontSize: 25)),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
            ),
            splashColor: Colors.blue,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Card(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              child: Text(
                "Digramma qismi",
                style: TextStyle(fontSize: 25),
              ),
              elevation: 5,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: const Text(
                    "List Transteraction ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                elevation: 5,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
