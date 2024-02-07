import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';


Widget iconcreation(
    {
    required IconData icon,
    required Color color,
    required String text}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: color,
        child: InkWell(
          onTap: () async {
            switch (icon) {
              case Icons.insert_drive_file:
                break;
              case Icons.camera_alt:
                print("camera");
                final ImagePicker picker = ImagePicker();
                final XFile? image =
                    await picker.pickImage(source: ImageSource.camera);
                print(image);
                break;
              case Icons.image_rounded:
                print("gallery");
                final ImagePicker picker = ImagePicker();
                final XFile? image =
                    await picker.pickImage(source: ImageSource.gallery);
                print(image);
                break;
              case Icons.headphones:
                print("audio");

                break;
              case Icons.contact_page:
                print("contact");

                break;
            }
          },
          child: Icon(
            icon,
            color: Colors.amber,
            size: 29,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(text)
    ],
  );
}