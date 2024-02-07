// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/view/room/roompage.dart';




class GroupChatScreen extends StatefulWidget {
  const GroupChatScreen({Key? key});

  @override
  _GroupChatScreenState createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
     
      body: Stack(
        children: [
          
          Row(
            children: [
              Expanded(child: All_Rooms_Page()),
              Container(
                  height: MediaQuery.sizeOf(context).height,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                          "assets/images/wallpapper2.jpg",
                        ),
              );
                    },
                  )),
            ],
          ),
          Container(
            height: double.infinity,
            color: Color.fromARGB(212, 238, 227, 251),
          ), 
               
        ],
       
      ),
    );
  }


}


