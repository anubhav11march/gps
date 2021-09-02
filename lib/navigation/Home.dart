import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<bool> selected = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2596be),
        actions: [
          GestureDetector(
            child: Icon(
              Icons.replay,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 16,
          ),
          GestureDetector(
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 16,
          ),
        ],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Fleet",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 2, bottom: 2, left: 2, right: 2),
            height: 36,
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    decoration: ShapeDecoration(
                        color: selected[0]
                            ? Color(0xffeaaf5b)
                            : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    height: 32,
                    child: Center(
                        child: Text(
                      "All - 32",
                      style: TextStyle(
                          color: selected[0] ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  onTap: () {
                    for (int i = 0; i < 4; i++) {
                      if (i != 0)
                        setState(() {
                          selected[i] = false;
                        });
                      else
                        setState(() {
                          selected[i] = true;
                        });
                    }
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    decoration: ShapeDecoration(
                        color: selected[1]
                            ? Color(0xffeaaf5b)
                            : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    height: 32,
                    child: Center(
                        child: Text(
                      "TRAVEL - 11",
                      style: TextStyle(
                          color: selected[1] ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  onTap: () {
                    for (int i = 0; i < 4; i++) {
                      if (i != 1)
                        setState(() {
                          selected[i] = false;
                        });
                      else
                        setState(() {
                          selected[i] = true;
                        });
                    }
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    decoration: ShapeDecoration(
                        color: selected[2]
                            ? Color(0xffeaaf5b)
                            : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    height: 32,
                    child: Center(
                        child: Text(
                      "IDLE - 10",
                      style: TextStyle(
                          color: selected[2] ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  onTap: () {
                    for (int i = 0; i < 4; i++) {
                      if (i != 2)
                        setState(() {
                          selected[i] = false;
                        });
                      else
                        setState(() {
                          selected[i] = true;
                        });
                    }
                  },
                )),
                Expanded(
                    child: GestureDetector(
                  child: Container(
                    decoration: ShapeDecoration(
                        color: selected[3]
                            ? Color(0xffeaaf5b)
                            : Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)))),
                    height: 32,
                    child: Center(
                        child: Text(
                      "STOP - 11",
                      style: TextStyle(
                          color: selected[3] ? Colors.white : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                  onTap: () {
                    for (int i = 0; i < 4; i++) {
                      if (i != 3)
                        setState(() {
                          selected[i] = false;
                        });
                      else
                        setState(() {
                          selected[i] = true;
                        });
                    }
                  },
                )),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            decoration: ShapeDecoration(
                color: Color(0xffeeeeef),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          )
        ],
      ),
    );
  }
}
