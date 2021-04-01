import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/del_1.dart';
import 'package:snapchat_bottomnavbar_implementation/del_2.dart';
import 'package:snapchat_bottomnavbar_implementation/del_3.dart';
import 'package:snapchat_bottomnavbar_implementation/del_4.dart';
import 'package:snapchat_bottomnavbar_implementation/del_5.dart';

void main() {
  runApp(FinantialApp());
}

class FinantialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Finantial App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemIndex = 2;
  Color _color;
  final widgetOptions = [del1(), del2(), del3(), del4(), del5()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // color: Colors.black,
        // TODO: border curver mai custom painter lga k krna padega
        decoration: BoxDecoration(
          color: Colors.black,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(8),
          //   topRight: Radius.circular(
          //     8,
          //   ),
          // ),
        ),
        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: <Widget>[
            buildNavBarItem(Icons.home, 0),
            buildNavBarItem(Icons.card_giftcard, 1),
            buildNavBarItem(Icons.camera, 2),
            buildNavBarItem(Icons.pie_chart, 3),
            buildNavBarItem(Icons.person, 4),
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: Text("Custom Bottom Navigation Bar"),
      // ),
      body: Center(
        child: widgetOptions.elementAt(_selectedItemIndex),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 4, color: Colors.green),
                ),
                gradient: LinearGradient(colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.green.withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
                )
            : BoxDecoration(),
        child: Column(
          children: [
            Icon(icon,
                color: index == _selectedItemIndex
                    ? _selectedItemIndex == 1
                        ? Colors.blue
                        : _selectedItemIndex == 0
                            ? Colors.green
                            : _selectedItemIndex == 2
                                ? Colors.yellow
                                : _selectedItemIndex == 3
                                    ? Colors.purple
                                    : _selectedItemIndex == 4
                                        ? Colors.red
                                        : Colors.grey
                    : Colors.grey),
            index == _selectedItemIndex
                ? Icon(Icons.arrow_drop_up,
                    color: index == _selectedItemIndex
                        ? _selectedItemIndex == 1
                            ? Colors.blue
                            : _selectedItemIndex == 0
                                ? Colors.green
                                : _selectedItemIndex == 2
                                    ? Colors.yellow
                                    : _selectedItemIndex == 3
                                        ? Colors.purple
                                        : _selectedItemIndex == 4
                                            ? Colors.red
                                            : Colors.grey
                        : Colors.grey)
                : Container()
          ],
        ),
      ),
    );
  }
}
