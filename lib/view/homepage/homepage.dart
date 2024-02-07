// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/view/chat/personalchat.dart';
import 'package:ynotz_chatapp/view/homepage/twopage.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Row(
        children: const [
          SizedBox(
             width: 350,
            child: Expanded(child: ChatandRoomScreen())),
          Expanded(child: Chat_Page())
      ]),
      
    );
  }
}