import 'package:flutter/material.dart';
import 'StartApp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Biletler());
}

class Biletler extends StatelessWidget {
  const Biletler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Biletlər.az',
        debugShowCheckedModeBanner: false,
        home: StartApp());
  }
}
