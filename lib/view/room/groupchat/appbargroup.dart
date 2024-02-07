import 'package:flutter/material.dart';

import 'package:ynotz_chatapp/color%20constants/colors.dart';
import 'package:ynotz_chatapp/view/room/groupchat/roommembers.dart';

class AppbarForGroupChat extends StatelessWidget {
  final String subcategory;
  const AppbarForGroupChat({Key? key, required this.subcategory})
      : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.of(context).size.height * 0.069,
      decoration: BoxDecoration(
        color: ColorsUsed.containerlogin,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // InkWell(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: Icon(Icons.arrow_back_ios_new_sharp),
          // ),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.03,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://img.freepik.com/free-vector/hand-drawn-flat-design-football-logo-template_23-2149373252.jpg?size=626&ext=jpg&ga=GA1.1.1619594029.1705387874&semt=ais",
                 fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Icon(
            Icons.circle,
            size: 15,
            color: Colors.amber,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.subcategory,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RoomMembers(title: this.subcategory),
                    ));
              },
              child: Icon(Icons.groups_2)),
          InkWell(child: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}