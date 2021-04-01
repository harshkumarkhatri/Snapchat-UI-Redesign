import 'package:flutter/material.dart';
// import 'package:snapchat_bottomnavbar_option5/Widgets/SettingsWidgets/categoryHeading_Widget.dart';
// import 'package:snapchat_bottomnavbar_option5/Widgets/SettingsWidgets/singleItem_Widget.dart';
// import 'package:snapchat_bottomnavbar_option5/Widgets/SettingsWidgets/twoItems_Widget.dart';

import 'Widgets/SettingsWidgets/categoryHeading_Widget.dart';
import 'Widgets/SettingsWidgets/singleItem_Widget.dart';
import 'Widgets/SettingsWidgets/twoItems_Widget.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          elevation: 0,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios, color: Colors.green),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Settings",
            style: TextStyle(
              color: Colors.green,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                categoryHeading(context, "MY ACCOUNT"),
                twoItems("Name", "Harsh Khatri"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "callme_shhaggy",
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.grey[350],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                twoItems("Birthday", "24/09/2000"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                twoItems("Mobile Number", "6376 999 888"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                twoItems("Email", "demo@demo.com"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Password"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Two-Factor Authentication"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Connected Apps"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Notificat"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Bitmoji"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Shazam"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Apps from Snap"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Language"),
                categoryHeading(context, "ADDITIONAL SERVICES"),
                singleItem("Manage"),
                categoryHeading(context, "WHO CAN..."),
                twoItems("Contact Me", "Everyone"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                twoItems(
                  "Use My Cameos Selfie",
                  "Only Me",
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Send Me Notifications"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                twoItems("View My Story", "Everyone"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("See Me in Quick Add"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("See My Location"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Memories"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Spectacles"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Customise Emojis"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Ads"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Data Saver"),
                categoryHeading(context, "PRIVACY"),
                singleItem("Clear Conversation"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Clear Search History"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem(
                  "Clear Top Location",
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Contact Syncing"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Our Story Snaps"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Permissions"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("My Data"),
                categoryHeading(context, "SUPPORT"),
                singleItem("I Need Help"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("I Have a Safety Concern"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("I have a Privacy Question"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                categoryHeading(context, "FEEDBACK"),
                singleItem("I Spotted a BUG"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("I Have a Suggestion"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Shake To Report"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                categoryHeading(context, "MORE INFORMATION"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Privacy Policy"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Safety Centre"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Terms of Service"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Other Legal"),
                categoryHeading(context, "ACCOUNT ACTIONS"),
                singleItem("Clear Cache"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Clear Lens Data"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Clear My Cameos Selfie"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Blocked"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                singleItem("Log Out"),
                Divider(
                  color: Colors.grey[300],
                  height: 0.5,
                  indent: 15,
                  endIndent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[300].withOpacity(0.6),
                        borderRadius: BorderRadius.circular(4)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            "Snapchat v11.5.0.69",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            "Made in Los Angeles",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ));
  }
}
