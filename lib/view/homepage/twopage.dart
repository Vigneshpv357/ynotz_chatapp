import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/color%20constants/colors.dart';
import 'package:ynotz_chatapp/view/homepage/chatpage.dart';
import 'package:ynotz_chatapp/view/room/roompage.dart';

class ChatandRoomScreen extends StatefulWidget {
  const ChatandRoomScreen({super.key});

  @override
  State<ChatandRoomScreen> createState() => _ChatandRoomScreenState();
}

class _ChatandRoomScreenState extends State<ChatandRoomScreen> {
  TabBar get _tabBar => const TabBar(
    
    dividerColor: Colors.transparent,
    unselectedLabelColor: Colors.grey,
    labelColor: Colors.black,
    indicatorColor: Colors.transparent,
      tabs: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(Icons.circle,size: 13,color: Colors.green,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Chats"),
              ),
             
            ],
          ),
        ),
      
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Rooms"),
        )
       
      ],
    );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuNUSqDH0VC5MAWEaXQg_Jx-0IP1o9Xr1KPM1FB-ac2KHaH7wFStMMXDVdNCGZ9xvBJSU&usqp=CAU")),
          ),
          centerTitle: true,
          backgroundColor: ColorsUsed.containerlogin,
          actions: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: Icon(Icons.more_vert),color: ColorsUsed.textlogin, onPressed: () {  },)
          )],
          toolbarHeight: 80.00,
          bottom: PreferredSize(
        preferredSize: _tabBar.preferredSize,
        child: Material(
          
          color: Colors.white, //<-- SEE HERE
          child: _tabBar,
        ),
      ),
        ),
        body:const TabBarView(
          children: [
              ChatScreenPage(),
              All_Rooms_Page()
          ],
          ),
        
      ),
    );
  }
}