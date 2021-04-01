import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/Widgets/ChatItemWidgets/chatItem_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/startNewChat_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/userDetails_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/search_Screen.dart';

import 'snapchat_bottomnavbar_option4/addFriends_Screen.dart';

class del2 extends StatefulWidget {
  del2({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;

  @override
  _del2State createState() => _del2State();
}

class _del2State extends State<del2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return userDetails();
                  },
                );
              },
              child: IconButton(
                  icon: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.supervised_user_circle_outlined,
                        color: Colors.black,
                        size: 30,
                      ))
                  // Icon(Icons.menu,color:Colors.white),
                  // onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Search()));
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return addFriends();
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, right: 8.0),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => NewChat()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.message,
                        color: Colors.grey[600],
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          ListView(
            padding: const EdgeInsets.only(
              top: 8,
              left: 10,
              // right: 15,
            ),
            children: <Widget>[
              chatItem(context, "Vivek nagar", true, "1d", true),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(context, "Kusha Kapila", false, "24h", true),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                context,
                "saurabh thakka",
                false,
                "2h",
                false,
              ),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Vivek nagar", true, "1d", true),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Kusha Kapila", false, "24h", true),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                context,
                "saurabh thakka",
                false,
                "2h",
                false,
              ),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Vivek nagar", true, "1d", true),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Kusha Kapila", false, "24h", true),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(
                context,
                "saurabh thakka",
                false,
                "2h",
                false,
              ),
              Divider(thickness: 0.3, color: Colors.grey),
              chatItem(context, "Shubham", false, "5h", false),
              Divider(thickness: 0.3, color: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}
