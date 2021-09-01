import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gps/models/user.dart';
import 'package:gps/navigation/tab_bar.dart';
import 'package:http/http.dart' as http;
import 'package:gps/screens/alert_type.dart';
import 'package:gps/login/forgot_pwd.dart';
import 'package:gps/screens/select_vehicles.dart';
import 'package:gps/screens/share_truck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen(),
    );
  }
}

TextEditingController loginIdCtrl = TextEditingController();
TextEditingController pass = TextEditingController();
bool remPass = false;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool invalidStatus = false;
  var defaultUrl =
      "https://bgps.online/api/api.php?api=user&ver=3.9&key=7FBE348595882D7057EC6A08AC020000&cmd=LOGIN_CHECK,";
  var url =
      "https://bgps.online/api/api.php?api=user&ver=3.9&key=7FBE348595882D7057EC6A08AC020000&cmd=LOGIN_CHECK,";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          backGround(context),
          login(context),
        ],
      ),
    );
  }

  backGround(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: const Color(0xFF144B7B),
            ),
          ],
        )
      ],
    );
  }

  login(BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    controller: loginIdCtrl,
                    decoration: InputDecoration(
                        hintText: invalidStatus
                            ? "Invalid Username/Password"
                            : "User Name",
                        hintStyle: TextStyle(
                            color: invalidStatus ? Colors.red : Colors.grey)),
                    onChanged: (value) {
                      setState(() {
                        invalidStatus = false;
                      });
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password", disabledBorder: InputBorder.none),
                  ),
                ),
                CheckboxListTile(
                  value: remPass,
                  title: const Text("Remember Password"),
                  activeColor: const Color(0xFF144B7B),
                  onChanged: (bool? value) {
                    setState(() {
                      remPass = value!;
                    });
                  },
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF144B7B),
                    ),
                    onPressed: () async {
                      // sendReq(context);
                      url += loginIdCtrl.text + "," + pass.text;
                      var response = await http.get(Uri.parse(url));
                      var result = json.decode(response.body);
                      print(result["status"]);
                      User user;
                      user = new User(loginIdCtrl.text);
                      if (result["status"] == "Success") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => tabBar(user)));
                      } else {
                        url = defaultUrl;
                        setState(() {
                          invalidStatus = true;
                          loginIdCtrl.text = "";
                          pass.text = "";
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
