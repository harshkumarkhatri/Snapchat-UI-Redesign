import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/gridviewItem_Widget.dart';
import 'package:swipedetector/swipedetector.dart';

class UpdateYourBitmoji extends StatefulWidget {
  @override
  _UpdateYourBitmojiState createState() => _UpdateYourBitmojiState();
}

class _UpdateYourBitmojiState extends State<UpdateYourBitmoji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Update Your Bitmoji",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Updates will last for 4 hours.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
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
            color: Colors.grey[300],
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 28.0, bottom: 18),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Change Outfit",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Text(
                                      "Mix, match and save outfits!",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.count(
                          shrinkWrap: false,
                          physics: BouncingScrollPhysics(),
                          primary: false,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          crossAxisCount: 3,
                          children: <Widget>[
                            // TODO: Add gridview items
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                            gridViewItem(),
                          ],
                        )),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
