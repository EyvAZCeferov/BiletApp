import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDD2F54),
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 1.2,
                width: MediaQuery.of(context).size.width / 1.2,
                child: Image.asset(
                  'assets/no-connection.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "İnternet bağlantınız yoxdur! ",
                      style: TextStyle(
                          color: Color(0xffDD2F54),
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Zəhmət olmasa internet bağlantınızı bərpa edin! ",
                      style: TextStyle(
                          color: Color(0xffDD2F54),
                          fontSize: 19,
                          fontWeight: FontWeight.w400),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ));
  }
}
