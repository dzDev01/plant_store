import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() {
    return _AccountPageState();
  }
}

class _AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold(
      body: Center(
          child: Text(
        "Account Page",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
