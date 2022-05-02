import 'package:bilet/Home.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'noConnection.dart';

import 'functions.dart';

class StartApp extends StatefulWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  _StartAppState createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {
  bool connection = true;

  void connectionTest() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      setState(() {
        connection = false;
      });
    } else {
      setState(() {
        connection = true;
      });
    }
  }

  @override
  void initState() {
    connectionTest();
    permissionHandler();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDD2F54),
      body: connection == true ? Home() : NoConnection(),
    );
  }
}
