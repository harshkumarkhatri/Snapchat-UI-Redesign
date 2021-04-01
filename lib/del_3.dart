import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option3/pages/camera_screen.dart';

// class del3 extends StatefulWidget {
//   @override
//   _del3State createState() => _del3State();
// }

// class _del3State extends State<del3> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         alignment: Alignment.topCenter,
//         color: Colors.red,
//         height: MediaQuery.of(context).size.height,
//         child: SafeArea(child: Text("333333")));
//   }
// }

class del3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: CameraScreen(),
    );
  }
}
