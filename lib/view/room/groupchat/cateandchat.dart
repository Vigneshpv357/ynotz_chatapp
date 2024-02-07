// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/view/chat/personalchat.dart';

import 'package:ynotz_chatapp/view/room/roompage.dart';


class ChatandChatScreen extends StatefulWidget {
  const ChatandChatScreen({super.key});

  @override
  State<ChatandChatScreen> createState() => _ChatandChatScreenState();
}

class _ChatandChatScreenState extends State<ChatandChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Row(
        children: const [
          SizedBox(
             width: 350,
            child: Expanded(child: All_Rooms_Page())),
          Expanded(child: Chat_Page())
      ]),
      
    );
  }
}