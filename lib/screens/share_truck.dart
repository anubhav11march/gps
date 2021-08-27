import 'package:flutter/material.dart';

class shareTruck extends StatelessWidget {
  const shareTruck({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_left_outlined),
        title: Text("Share Truck"),
        backgroundColor: Color(0xFF144B7B),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "User Name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Select Vehicle",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "From Date",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "To Date",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: ElevatedButton(
            onPressed: (){},
            child: Text("Generate Link", style: TextStyle(fontSize: 18.0),),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF144B7B),
              minimumSize: Size(MediaQuery.of(context).size.width, 50.0),
            ),
          ),
          ),
        ],
      ),
    )
    );
  }
}