// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';

import 'package:ynotz_chatapp/color%20constants/colors.dart';

import 'package:ynotz_chatapp/widgets/icon.dart';


class Chat_Page extends StatefulWidget {
  const Chat_Page({Key? key});

  @override
  _Chat_PageState createState() => _Chat_PageState();
}

class _Chat_PageState extends State<Chat_Page> {
  TextEditingController messageController = TextEditingController();
  int? _maxLines = 1;
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.grey,
        bottomOpacity: 5,
        backgroundColor: ColorsUsed.containerlogin,
        leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                    child: Image.network("https://i.pinimg.com/474x/0c/a1/74/0ca17464fa307ba6226c82e29da77ad0.jpg")
                ))),
        title: Container(
            width: MediaQuery.of(context).size.width * 0.15,
            child: Row(children: [
              Icon(
                Icons.circle,
                color: Colors.amber,
                size: 15,
              ),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Julie 5",
                    style: TextStyle(
                      color: ColorsUsed.textlogin,
                      fontSize: 16,
                      
                    )),
              )
            ])),
        actions: const[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.video_call,
              color: Colors.black,
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
        toolbarHeight: 70.00,
      ),
      body: Stack(
        children: [
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
          Container(
            height: double.infinity,
            color: Color.fromARGB(212, 238, 227, 251),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                    );
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.sentiment_satisfied,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (builder) => bottomsheet());
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorsUsed.textlogin,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            controller: messageController,
                            maxLines: _maxLines,
                            keyboardType: TextInputType.multiline,
                            onChanged: (text) {
                              int lineCount = getLineCount(text);
                              setState(() {
                                if (lineCount <= 5) {
                                  _maxLines = null;
                                } else {
                                  _maxLines = 5;
                                }
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: messageController.text.isEmpty
                          ? Icon(Icons.mic)
                          : Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          
                 
                // Expanded(child: ChatPage())
              //   BubbleSpecialOne(
              //     text: 'bubble special one with tail',
              //     isSender: false,
              //     color: Color.fromARGB(255, 74, 80, 85),
              //     textStyle: TextStyle(
              //       fontSize: 20,
              //       color: Colors.white,
              //     ),
              //   ),
              
              //   BubbleSpecialTwo(
                 
              //     text: 'bubble special one with tail',
              //     color:  Color.fromARGB(255, 74, 80, 85),
              //     seen: true,
              //      textStyle: TextStyle(
              //       fontSize: 20,
              //       color: Colors.white,
              //     ),
              //   ),
              //  DateChip(
              //     date: new DateTime(now.year, now.month, now.day - 1),
              //   ),
               
              
               
        ],
       
      ),
    );
  }
int getLineCount(String text) {
    return RegExp(r'\n').allMatches(text).length + 1;
  }

  Widget bottomsheet() {
    return Container(
      height: MediaQuery.sizeOf(context).height * .32,
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  iconcreation(
                      icon: Icons.insert_drive_file,
                      color: Color.fromARGB(255, 110, 103, 239),
                      text: "Document"),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(
                      icon: Icons.camera_alt,
                      color: Color.fromARGB(255, 247, 106, 96),
                      text: "Camera"),
                  SizedBox(
                    width: 40,
                  ),
                  iconcreation(
                      icon: Icons.image_rounded,
                      color: Colors.pink,
                      text: "Gallery"),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconcreation(
                        icon: Icons.headphones,
                        color: Colors.orange,
                        text: "Audio"),
                    SizedBox(
                      width: 40,
                    ),
                    iconcreation(
                        icon: Icons.contact_page,
                        color: Colors.blue,
                        text: "Contact"),
                    SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        margin: EdgeInsets.all(18),
      ),
    );
  }
}


