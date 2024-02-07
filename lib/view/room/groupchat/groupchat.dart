import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/view/chat/personalchat.dart';

import 'package:ynotz_chatapp/view/room/groupchat/appbargroup.dart';
import 'package:ynotz_chatapp/view/room/groupchat/cateandchat.dart';

class GroupChat_Page extends StatefulWidget {
  final String subcategory;
  const GroupChat_Page({super.key, required this.subcategory});

  @override
  State<GroupChat_Page> createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          ChatandChatScreen(),
          Positioned(
              right: 0,
              left: 350,
              top: 0,
              child: AppbarForGroupChat(subcategory: widget.subcategory)),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: MessageBar(),
          // ),
        ],
      ),
    );
  }
}