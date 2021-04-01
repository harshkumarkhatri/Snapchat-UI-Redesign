import 'package:flutter/material.dart';
// import 'package:snapchat_bottomnavbar_option5/setting_Screen.dart';
import 'package:swipedetector/swipedetector.dart';

import 'Widgets/StoryWidget/forYou_widget.dart';

class subscriptionScreen extends StatefulWidget {
  @override
  _subscriptionScreenState createState() => _subscriptionScreenState();
}

class _subscriptionScreenState extends State<subscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 5, automaticallyImplyLeading: false,
            // actions: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Icon(
            //     Icons.settings,
            //     color: Colors.black,
            //   ),
            // ),
            // ],
            // leading: Icon(
            //   Icons.keyboard_arrow_down,
            //   color: Colors.black,
            // ),

            // TODO: Fix the appbar and extend it a bit.
            centerTitle: true,
            title: Text("Subscription",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w700)),
            actions: [
              Center(
                child: Padding(
                    padding: const EdgeInsets.only(right: 18.0, bottom: 8),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: Icon(Icons.keyboard_arrow_down,
                            color: Colors.black, size: 30))),
              ),
            ],
            // Padding(
            //   padding: const EdgeInsets.all(18.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [

            //       GestureDetector(
            //           onTap: () {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (_) => Settings(),
            //               ),
            //             );
            //           },
            //           child: Icon(Icons.keyboard_arrow_down, color: Colors.black))
            //     ],
            //   ),
            // ),
          ),
        ),
      ),
      body: SwipeDetector(
        onSwipeLeft: () {
          Navigator.pop(context);
        },
        onSwipeRight: () {
          Navigator.pop(context);
        },
        child: Container(
            height: MediaQuery.of(context).size.height,
            // color: Colors.pink,
            child: Container(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, top: 2, left: 10),
                  child: GridView.count(
                    childAspectRatio: 1 / 1.4,
                    mainAxisSpacing: 13,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      forYou_widget("Shubhi Kat", true),
                      forYou_widget("Akshay Kumar fam in a jet plane", false),
                      forYou_widget("Urvashi Ruteala", true),
                      forYou_widget("Amitabh Bachan Caught boxing", true),
                      forYou_widget("Selena buys a new house", false),
                      forYou_widget("Kylie", true)
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
