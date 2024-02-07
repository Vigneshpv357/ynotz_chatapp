// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatScreenPage extends StatefulWidget {
  const ChatScreenPage({super.key});

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}


class _ChatScreenPageState extends State<ChatScreenPage> {
  
  TextEditingController editingController = TextEditingController();

 
   List<String> items = [
    'Julie 1',
    'Julie 2',
    'Julie 3',
    'Julie 4',
    'Julie 5',
  ];

     List<String> time = [
    '1 hr',
    '2 hr',
    '3 min',
    '46 sec',
    '5 min',
  ];
  

   List<String> propics = [
    "https://i.pinimg.com/564x/27/79/95/277995b2d5aec464c4f54b8cc17f7641.jpg",
    "https://goodstatus.in/wp-content/uploads/2023/01/girls-dp-hd.webp",
    "https://images.news9live.com/wp-content/uploads/2023/12/Girls-WhatsApp-DP_-500-HD-WhatsApp-DP-for-Girls-2023.jpg",
    "https://e1.pxfuel.com/desktop-wallpaper/504/499/desktop-wallpaper-girl-whatsapp-dp-alone-girls-whatsapp-dp.jpg",
    "https://i.pinimg.com/474x/0c/a1/74/0ca17464fa307ba6226c82e29da77ad0.jpg"
   ];

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                
              },
              controller: editingController,
              decoration: InputDecoration(
                  
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(propics[index],fit: BoxFit.cover,)),
                    title: Text('${items[index]}',style: TextStyle(fontWeight: FontWeight.w500),),
                    subtitle: Text("any plans for today?"),
                    trailing: Text(time[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
