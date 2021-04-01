import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/friendsBottomBar_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/myBitmojiBottomNavBar_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/myBitmoji_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/Widgets/navigationBottomBar_Widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/mapSettings_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option1/updateYourBitmoji_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/userDetails_Screen.dart';

import 'snapchat_bottomnavbar_option5/search_Screen.dart';

class del1 extends StatefulWidget {
  del1({Key key}) : super(key: key);

  @override
  _del1State createState() => _del1State();
}

class _del1State extends State<del1> {
  Set<Circle> _circles = HashSet<Circle>();
  bool _showMapStyle = false;

  GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    _setCircles();
  }

  void _setCircles() {
    _circles.add(
      Circle(
          circleId: CircleId("0"),
          center: LatLng(37.76493, -122.42432),
          radius: 1000,
          strokeWidth: 2,
          fillColor: Color.fromRGBO(102, 51, 153, .5)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(25.151100, 75.831720),
              zoom: 12,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  // isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return UpdateYourBitmoji();
                  },
                );
              },
              child: myBitmoji()),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                // color: Colors.black,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black87,
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 4, top: 8),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black38),
                            child: Icon(
                              Icons.supervised_user_circle,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Search()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4, right: 4, top: 8.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black38),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 8.0),
                        child: Container(
                          child: Text(
                            "Kota,Rajasthan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return MapSettings();
                            },
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black38),
                          child: Icon(Icons.settings,
                              color: Colors.white, size: 30),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myBitmojiBottomNavBar(),
                    navigationBottomNavBar(),
                    friendsBottomNavBar()
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
