import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingsState();
  }
}

class SettingsState extends State<Settings> {
  List<String> listOne = ["Immobilization" , "Polling" , "Share Truck"];
  List<String> listTwo = ["Change Language" , "Reset Password" , "Notifications"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff2596be),
      ),
      body: Container(
        width: width,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "VEHICLE SERVICES",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: width-30,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(
                        listOne[index],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.chevron_right,
                          size: 20,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return Divider(
                      color: Colors.grey,
                      thickness: 1,
                    );
                  },
                  itemCount: 3
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                "OTHER SETTINGS",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: width-30,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return ListTile(
                      title: Text(
                        listTwo[index],
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.chevron_right,
                          size: 20,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return Divider(
                      color: Colors.grey,
                      thickness: 1,
                    );
                  },
                  itemCount: 3
              ),
            ),
          ],
        ),
      ),
    );
  }
}
