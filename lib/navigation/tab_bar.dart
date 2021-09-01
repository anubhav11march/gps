import 'package:flutter/material.dart';
import 'package:gps/models/user.dart';
import 'package:gps/navigation/DashBoard.dart';
import 'package:gps/navigation/Home.dart';
import 'package:gps/navigation/Map.dart';
import 'package:gps/navigation/Report.dart';
import 'package:gps/navigation/Settings.dart';

class tabBar extends StatefulWidget {
  User user;
  tabBar(this.user);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return tabBarState(user);
  }
}

class tabBarState extends State<tabBar> {
  User user;
  tabBarState(this.user);
  List<bool> selected = [false, true, false, false, false];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 5,
        initialIndex: 1,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              DashBoard(),
              Home(),
              MapScreen(),
              Report(),
              Settings(),
            ],
          ),
          bottomNavigationBar: TabBar(
            onTap: (index) {
              for (int i = 0; i < 5; i++) {
                if (i != index) {
                  setState(() {
                    selected[i] = false;
                  });
                } else {
                  setState(() {
                    selected[i] = true;
                  });
                }
              }
            },
            indicatorColor: Colors.transparent,
            unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 8),
            labelStyle: TextStyle(color: Colors.blue, fontSize: 9),
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: "Dash board",
                icon: Icon(
                  Icons.dashboard,
                  color: selected[0] ? Colors.green : Colors.grey,
                ),
              ),
              Tab(
                text: "Home",
                icon: Icon(
                  Icons.home,
                  color: selected[1] ? Colors.green : Colors.grey,
                ),
              ),
              Tab(
                text: "Map",
                icon: Icon(
                  Icons.map,
                  color: selected[2] ? Colors.green : Colors.grey,
                ),
              ),
              Tab(
                text: "Reports",
                icon: Icon(
                  Icons.article,
                  color: selected[3] ? Colors.green : Colors.grey,
                ),
              ),
              Tab(
                text: "Settings",
                icon: Icon(
                  Icons.settings,
                  color: selected[4] ? Colors.green : Colors.grey,
                ),
              )
            ],
          ),
        ));
  }
}
