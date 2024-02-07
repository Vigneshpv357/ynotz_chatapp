import 'package:flutter/material.dart';

class BackgroundImg extends StatefulWidget {
  const BackgroundImg({super.key});

  @override
  State<BackgroundImg> createState() => _BackgroundImgState();
}

class _BackgroundImgState extends State<BackgroundImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ));
  }
}