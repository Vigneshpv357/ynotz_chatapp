// ignore_for_file: prefer_const_constructors, sort_child_properties_last


import 'package:flutter/material.dart';





class BackGroundScreen extends StatefulWidget {
  const BackGroundScreen({Key? key});

  @override
  _BackGroundScreenState createState() => _BackGroundScreenState();
}

class _BackGroundScreenState extends State<BackGroundScreen> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    return Scaffold(
      
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
               
        ],
       
      ),
    );
  }


}


