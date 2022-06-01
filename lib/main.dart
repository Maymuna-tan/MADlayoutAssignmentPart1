import 'package:flutter/material.dart';
import './gridClass.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("My Home"),
      ),
      body: const Home(),
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) => Container(
        color: const Color.fromARGB(255, 216, 216, 216),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              child: Row(
                children: const [
                  Text("My Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decorationColor: Colors.blue,
                          decorationStyle: TextDecorationStyle.solid)),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(7.0),
              child: Card(
                borderOnForeground: false,
                shadowColor: Colors.white,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: ListTile(
                    leading: Text(
                      "All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                    trailing: Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 650,
                width: 400,
                margin: const EdgeInsets.all(10),
                child: const GridClass(),
              ),
            ),
          ],
        ),
      );
}
