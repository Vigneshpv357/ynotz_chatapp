import 'package:flutter/material.dart';

class NoMessageScreen extends StatelessWidget {
  const NoMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/messenger.png"),
          // ignore: prefer_const_constructors
          Text("Your messages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
          // ignore: prefer_const_constructors
          Text("Send private photos and messages to a friend or group",style: TextStyle(color: Colors.grey,fontSize: 15),)
        ],
      )),
    );
  }
}