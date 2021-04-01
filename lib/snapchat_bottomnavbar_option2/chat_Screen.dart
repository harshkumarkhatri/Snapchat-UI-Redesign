import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/Widgets/ChatWidgets/bottomBarChat_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/Widgets/ChatWidgets/chatMessage_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/Widgets/ChatWidgets/date_Widget.dart';
import 'friendDetails_Screen.dart';

class Chat extends StatefulWidget {
  Chat(this.name);

  String name;

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.name,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return FriendDetails();
              },
            );
          },
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              // color: Colors.yellow,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 35,
                width: 50,
                // color: Colors.red,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                ),
                child: Center(
                  child: Icon(Icons.call, color: Colors.black, size: 26),
                ),
              ),
              SizedBox(width: 1.5),
              Container(
                  height: 35,
                  width: 50,
                  // color: Colors.pink,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.video_call,
                      size: 26,
                      color: Colors.black,
                    ),
                  ))
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              date("6 October 2018"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry oinj noin o noinp opjnpoip no"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              date("8 October 2018"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry oinj noin o noinp opjnpoip no"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              date("12 October 2018"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry oinj noin o noinp opjnpoip no"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              date("Today"),
              SizedBox(height: 90)
            ],
          ),
          bottomBarChat1(context),
        ],
      ),
    );
  }
}
