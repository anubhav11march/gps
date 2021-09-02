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
  TextEditingController searchCtrl = TextEditingController();
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
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            height: 32,
            child: TextField(
              controller: searchCtrl,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff838387),
                  ),
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  isDense: true,
                  enabledBorder: InputBorder.none,
                  hintText: "Search Vehicle Number",
                  hintStyle: TextStyle(fontSize: 16, color: Color(0xff838387))),
            ),
            decoration: ShapeDecoration(
                color: Color(0xffeeeeef),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
              child: ListView(
            children: [for (int i = 0; i < 32; i++) builder()],
          ))
        ],
      ),
    );
  }

  Widget builder() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.directions_bus,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      children: [
                        Text(
                          "AEW4630",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "0.0 km/h",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          "25-08-21 15:44:03",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "STOP",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.red),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.end,
                    ),
                    SizedBox(
                      width: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Container(
                      child: Text(
                        "2-4-28 Level 4, Harbour Trade Centre, Gat Lebuh Macallum, 10300 George Town, Penang, Malaysia",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.share,
                      color: Color(0xff4b5fc3),
                    ),
                    SizedBox(
                      width: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Color(0xffc6c6c8),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.add_road,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "2181.5 Km",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Distance",
                          style: TextStyle(
                              color: Color(0xff939397),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_gas_station,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "0.0 L",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Fuel Volume",
                          style: TextStyle(
                              color: Color(0xff939397),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.power,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "3.6 V",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Truck Voltage",
                          style: TextStyle(
                              color: Color(0xff939397),
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0xffc6c6c8), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          Container(
              height: 36,
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.wifi,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.cable,
                      color: Colors.red,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.podcasts,
                      color: Colors.green,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "PTO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "SOS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "IMMO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 16),
                ],
              ))
        ],
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      decoration: BoxDecoration(
        color: Color(0xff36bab2),
        border: Border.all(color: Color(0xffc6c6c8), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
