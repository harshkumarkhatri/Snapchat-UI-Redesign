import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/ghostModeItemMapSettings_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/seeMyLocation_Widget.dart';
import 'package:swipedetector/swipedetector.dart';

import 'Widgets/bitmojiItemMapSettings_Widget.dart';
import 'Widgets/settingsHeading_Widget.dart';

class MapSettings extends StatefulWidget {
  @override
  _MapSettingsState createState() => _MapSettingsState();
}

class _MapSettingsState extends State<MapSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 30),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            bottom: 8,
                          ),
                          child: Text(
                              "Your location updates when you have snapchat open.",
                              style: TextStyle(color: Colors.grey[600])),
                        )),
                    ghostModeItemMaoSettings(),
                    settingsHeading(context, "who can see my location"),
                    seeMyLocation("My Friends", true),
                    seeMyLocation("My Friends, Except ...", false),
                    seeMyLocation("Only These Friends ...", false),
                    settingsHeading(context, "Bitmoji"),
                    bitmojiItemMapSettings(),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
