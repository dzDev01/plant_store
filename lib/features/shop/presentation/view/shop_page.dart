import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() {
    return _ShopPageState();
  }
}

class _ShopPageState extends State<ShopPage> {
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
        "Shop Page",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
