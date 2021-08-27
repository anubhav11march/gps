import 'package:flutter/material.dart';

class forgotPwd extends StatelessWidget {
  const forgotPwd({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF144B7B),
        title: Center(child: Text("Change Password"),),
        automaticallyImplyLeading: false,
        actions: [
          Icon(Icons.close_rounded),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Password"
                  ),
                ), 
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter New Password"
                  ),
                ), 
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirm New Password"
                  ),
                ), 
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                onPressed: (){},
                child: Text("Change Password", style: TextStyle(fontSize: 18.0),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF144B7B),
                  minimumSize: Size(MediaQuery.of(context).size.width, 50.0)
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}