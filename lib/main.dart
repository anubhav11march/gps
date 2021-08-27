import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                    decoration: const InputDecoration(
                      hintText: "User Name",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: TextField(
                    controller: pass,
                    keyboardType: TextInputType.visiblePassword,
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
                    onPressed: () {
                      // sendReq(context);
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
