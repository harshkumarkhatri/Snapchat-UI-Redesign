import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/Widgets/StoryWidget/forYou_widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/Widgets/StoryWidget/friends_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/Widgets/StoryWidget/friends_myStory_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/Widgets/StoryWidget/subscription_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/addFriends_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/subscriptions_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/userDetails_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/search_Screen.dart';

class del4 extends StatefulWidget {
  del4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _del4State createState() => _del4State();
}

class _del4State extends State<del4> {
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
                  'Stories',
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
                  // _openAddEntryDialog();
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
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.only(),
                          child: Container(
                              color: Colors.transparent,
                              height: 160,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 55,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(
                                          12,
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Manage Subscriptions and Notification",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(height: 0.35),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          // bottomLeft: Radius.circular(12),
                                          // bottomRight: Radius.circular(
                                          //   12,
                                          // ),
                                          ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "View Hiddedn Channels",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(height: 0.35),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        // borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Text(
                                        "Done",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      });
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
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 30,
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
              friendsMyStory(),
              Container(
                height: 145,
                // color: Colors.amber[600],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    right: 0,
                    bottom: 8,
                    top: 4,
                  ),
                  children: <Widget>[
                    friends("hemu22"),
                    friends("Faizan upadhydedededeay"),
                    friends("Kapil rAj"),
                    friends("Tanveer"),
                    friends("Rahul"),
                    friends("Rohit")
                  ],
                ),
              ),
              // SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  print("Pushed");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => subscriptionScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Subscriptions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.grey[600], size: 20)
                  ],
                ),
              ),
              Container(
                height: 170,
                // color: Colors.amber[600],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    right: 8,
                    bottom: 8,
                    top: 4,
                  ),
                  children: <Widget>[
                    subscriptions_widget("Demo name", true),
                    subscriptions_widget("Mohin khan", false),
                    subscriptions_widget("Sohit Kasthuriya", false),
                    subscriptions_widget("Suresh khan", true),
                    subscriptions_widget("Dan Bilzerian", true),
                    subscriptions_widget("Ashknoor Khan", true)
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                child: Text(
                  "For You",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 4),
                child: GridView.count(
                  childAspectRatio: 1 / 1.4,
                  mainAxisSpacing: 15,
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
              SizedBox(height: 10),
            ],
          )
        ],
      ),
    );
  }

  void _openAddEntryDialog() {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new AddEntryDialog();
        },
        fullscreenDialog: true));
  }
}

class AddEntryDialog extends StatefulWidget {
  @override
  AddEntryDialogState createState() => new AddEntryDialogState();
}

class AddEntryDialogState extends State<AddEntryDialog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('New entry'),
        actions: [
          new FlatButton(
              onPressed: () {
                //TODO: Handle save
              },
              child: new Text('SAVE',
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white))),
        ],
      ),
      body: new Text("Foo"),
    );
  }
}
