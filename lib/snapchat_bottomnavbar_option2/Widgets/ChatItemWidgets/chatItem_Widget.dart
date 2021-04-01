import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/chat_Screen.dart';

Widget chatItem(context, name, activeStory, time, loaded) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Chat(name)));
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4),
      child: Container(
        height: 45,
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    border: activeStory
                        ? Border.all(color: Colors.blue)
                        : Border.all(color: Colors.transparent),
                    shape: BoxShape.circle,
                    // color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          name,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(
                                  6,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            loaded ? "New Snap" : "Tap to Load",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            " * ",
                            style: TextStyle(
                              color: Colors.grey[350].withOpacity(
                                0.3,
                              ),
                            ),
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
              child: Icon(
                Icons.message_outlined,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
