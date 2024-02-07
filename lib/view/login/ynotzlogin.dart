import 'package:flutter/material.dart';
import 'package:ynotz_chatapp/color%20constants/colors.dart';

class YnotzloginScreen extends StatefulWidget {
  const YnotzloginScreen({super.key});

  @override
  State<YnotzloginScreen> createState() => _YnotzloginScreenState();
}

class _YnotzloginScreenState extends State<YnotzloginScreen> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUsed.containerlogin,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("ynotz",style: TextStyle(color: ColorsUsed.textlogin,fontSize: 100,fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ynotz ID :",style: TextStyle(color: ColorsUsed.textlogin,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    width: 600,
                    child: TextFormField(
                      
                      cursorColor: ColorsUsed.textlogin,
                     decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsUsed.textlogin),
                      ),
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsUsed.textlogin),
                      ),
                    )
                    
                    ),
                )
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
           Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Password :",style: TextStyle(color: ColorsUsed.textlogin,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SizedBox(
                    width: 600,
                    child: TextFormField(
                       cursorColor: ColorsUsed.textlogin,
                        decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsUsed.textlogin),
                      ),
                      focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: ColorsUsed.textlogin),
                      ),
                    )
                    )
                    ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 200,
            width: 300,
            child: Column(
              children: [
               Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
             Checkbox(
              checkColor: ColorsUsed.containerlogin,
              activeColor: ColorsUsed.textlogin,
              
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
                             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Remember my ID & password",style: TextStyle(color: ColorsUsed.textlogin)),
            ),
                         ],
                       ),
                       Row(
                        
                         children: [
             Checkbox(
              checkColor: ColorsUsed.containerlogin,
              activeColor: ColorsUsed.textlogin,
              
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
                             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign in automatically",style: TextStyle(color: ColorsUsed.textlogin)),
            ),
                         ],
                       ),
                       Row(
                        
                         children: [
             Checkbox(
              checkColor: ColorsUsed.containerlogin,
              activeColor: ColorsUsed.textlogin,
              
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
                             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign in as invisible to everyone",style: TextStyle(color: ColorsUsed.textlogin),),
            ),
                         ],
                       )
              ],
            ),
          ),
        
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              ),
              onPressed: (){}, 
              child: Text("Sign In",style: TextStyle(fontSize: 15),)
              )
            ),
            SizedBox(height: 10,),
            Text("Forgot your Password?",style: TextStyle(color: Colors.grey),)
                 
          
          
        ]),
      ),
    );
  }
}