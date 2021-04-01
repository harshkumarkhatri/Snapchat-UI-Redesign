import 'package:flutter/material.dart';
// import 'package:snapchat_bottomnavbar_option5/setting_Screen.dart';
import 'package:swipedetector/swipedetector.dart';

import 'Widgets/UserDetailsWidgets/BitmojiSection/bitmojiText_Widget.dart';
import 'Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget1.dart';
import 'Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget2.dart';
import 'Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget3.dart';
import 'Widgets/UserDetailsWidgets/FriendSection/friendsSection_Widget.dart';
import 'Widgets/UserDetailsWidgets/FriendSection/friendsText_WIdget.dart';
import 'Widgets/UserDetailsWidgets/SnapMapSection/snapMapText_Widget.dart';
import 'Widgets/UserDetailsWidgets/SnapMapSection/snapMapWidget_Map.dart';
import 'Widgets/UserDetailsWidgets/StorySection/addTo_widget.dart';
import 'Widgets/UserDetailsWidgets/StorySection/privateStory_Widget.dart';
import 'Widgets/UserDetailsWidgets/StorySection/storiesText_Widget.dart';
import 'setting_Screen.dart';

class userDetails extends StatefulWidget {
  @override
  _userDetailsState createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
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
            title: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Settings(),
                          ),
                        );
                      },
                      child: Icon(Icons.settings, color: Colors.black))
                ],
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
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://lh3.googleusercontent.com/proxy/po-vMvGyQPi8w9GwKIw6fkvPI8due1szCHb0rIFd4XDbktd0g0JEzmfl5so4xy25exurZITFmM4djgMrvOZgC4oKK0QKX4y5iaACO2A19W5VSKCsex_IjDhvzUXi",
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Harsh Khatri",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "callme_shhaggy * 28,919 * T",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    storiesText(),
                    SizedBox(height: 4),
                    addTo("My"),
                    addTo("Our"),
                    privateStory(),
                    friendsText(),
                    friendSection("Add Friends", Icons.supervised_user_circle),
                    friendSection("My Friends", Icons.list_alt_outlined),
                    bitmojiText(),
                    bitmojiWidget1(),
                    bitmojiWidget2(),
                    bitmojiWidget3(),
                    snapMapText(),
                    snapMap_Map(context),

                    // TODO: Replace this with snapchat icon
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 38.0,
                      ),
                      child: Icon(
                        Icons.gavel_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        "Joined Snapchat on 14 March 2017.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
