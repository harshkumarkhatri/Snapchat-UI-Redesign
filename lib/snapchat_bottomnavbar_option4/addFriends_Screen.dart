import 'package:flutter/material.dart';
// import 'package:snapchat_bottomnavbar_option5/Widgets/AddFriendsWidgets/addMe_Widget.dart';
// import 'package:snapchat_bottomnavbar_option5/Widgets/AddFriendsWidgets/quickAdd_Widget.dart';
import 'dart:math' as math;

import 'Widgets/AddFriendsWidgets/addMe_Widget.dart';
import 'Widgets/AddFriendsWidgets/quickAdd_Widget.dart';

// TODO: See if we can implement another sliver appbar to make quick add and all contacts on the top.
class addFriends extends StatefulWidget {
  @override
  _addFriendsState createState() => _addFriendsState();
}

class _addFriendsState extends State<addFriends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            floating: true,
            pinned: true,
            backgroundColor: Colors.grey[200],
            leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.black)),
              ),
              onPressed: () {},
            ),
            actions: [
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                                color: Colors.transparent,
                                height: 250,
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Hidden from Quick Adds",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(height: 1),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      height: 55,
                                      color: Colors.white,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Ignored from Add Me",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(height: 1),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Recently Added Friends",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        height: 15, color: Colors.transparent),
                                    Divider(height: 1),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Icon(Icons.more_horiz, color: Colors.black),
                  ))
            ],
            flexibleSpace: _MyAppSpace(),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 12, bottom: 12),
                  child: Container(
                    child: Text("Added Me",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                addMe("Mountain", "mountain3655", "By Search"),
                Divider(
                  height: 1,
                ),
                addMe("Faizan Baloch", "faizan_baloh_99", "By Quick Add"),
                Divider(height: 1),
                addMe("Ravinder Gocher", "gocherRavi32", "By Phone"),
                Divider(height: 1),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    alignment: Alignment.center,
                    // height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text("View 60 More",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Quick Add",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          )),
                      Row(
                        children: [
                          Text("All Contacts",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              )),
                          Icon(Icons.arrow_forward_ios,
                              color: Colors.grey, size: 14)
                        ],
                      )
                    ],
                  ),
                ),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", true),
                Divider(height: 1),
                quickAdd("Sana Chaudary", "sanana", false),
                Divider(height: 1),
              ],
            ));
          }))
        ],
      ),
    );
  }
}

class _MyAppSpace extends StatelessWidget {
  const _MyAppSpace({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0) as double;
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Stack(
          children: [
            Center(
              child: Opacity(
                opacity: 1 - opacity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 45, right: 45, top: 24, bottom: 5),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Icon(Icons.search, color: Colors.black),
                            ),
                            Text("Find friends",
                                style: TextStyle(color: Colors.grey))
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Icon(
                            Icons.contact_page,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Opacity(
              opacity: opacity,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  getImage(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 8),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(
                          18,
                        ),
                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.search, color: Colors.black),
                              ),
                              Text("Find friends",
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.contact_page,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Opacity(
                      opacity: opacity,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [getTitle("Add friends")],
                      )),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget getImage() {
    return Container(
        width: double.infinity, height: 120, color: Colors.grey[200]);
  }

  Widget getTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
