import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option4/addFriends_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/Widgets/discoverSubscriptions_widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/Widgets/forYou_widget.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/search_Screen.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option5/userDetails_Screen.dart';

class del5 extends StatefulWidget {
  del5({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _del5State createState() => _del5State();
}

class _del5State extends State<del5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // centerTitle: true,
      //   // leading: Container(
      //   //   height: 16,
      //   //   width: 16,
      //   //   decoration: BoxDecoration(
      //   //     color: Colors.white,
      //   //     shape: BoxShape.circle,
      //   //   ),
      //   //   child: Icon(
      //   //     Icons.supervised_user_circle_outlined,
      //   //     color: Colors.black,
      //   //   ),
      //   // ),
      //   title:
      //   //  Text(widget.title),
      // ),
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
                  'Discover',
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
              Container(
                child: Text(
                  "Discover subscriptions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
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
                    discoverSubscriptions_widget(
                        "The Top Choice to Replace Depp in Fantastic Bluerint"),
                    discoverSubscriptions_widget(
                        "Men Made These funniest remarks and Women got Offended"),
                    discoverSubscriptions_widget("James Charles?!"),
                    discoverSubscriptions_widget(
                        "The Top Choice to Replace Depp in Fantastic Bluerint"),
                    discoverSubscriptions_widget(
                        "Men Made These funniest remarks and Women got Offended"),
                    discoverSubscriptions_widget("James Charles?!")
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Text(
                  "Continue Watching",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
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
                    discoverSubscriptions_widget(
                        "The Top Choice to Replace Depp in Fantastic Bluerint"),
                    discoverSubscriptions_widget("James Charles?!")
                  ],
                ),
              ),
              SizedBox(height: 8),
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
                padding: const EdgeInsets.only(right: 10.0, top: 2),
                child: GridView.count(
                  childAspectRatio: 1 / 1.6,
                  mainAxisSpacing: 13,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    forYou_widget(
                        "No gains are more important Than These Gains"),
                    forYou_widget("iPhone 12 Pro Speed Test"),
                    forYou_widget(
                        "You've Never Seen Shoulders like these in your entire life. Awesome"),
                    forYou_widget("Kim's mellow amid Larsa Lockdown")
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
