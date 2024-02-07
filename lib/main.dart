
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'package:ynotz_chatapp/model/roomsdata.dart';
import 'package:ynotz_chatapp/view/homepage/homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
   
    size: Size(1150, 900),
    center: true,
    // skipTaskbar: false,
    // titleBarStyle: TitleBarStyle.hidden,
    windowButtonVisibility: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MultiProvider(
    
    providers: [
      ChangeNotifierProvider(create: (context)=>ProviderClass())
    ],
    child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    final virtualWindowFrameBuilder = VirtualWindowFrameInit();
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      themeMode: _themeMode,
      builder: (context, child) {
        child = virtualWindowFrameBuilder(context, child);
      
        return child;
      },
  
      home:  HomeScreen(),
    );
  }
}
    


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:ynotz_chatapp/model/roomsdata.dart';
// import 'package:ynotz_chatapp/view/homepage/homepage.dart';




// void main() {
//   runApp(MultiProvider(
    
//     providers: [
//       ChangeNotifierProvider(create: (context)=>ProviderClass())
//     ],
//     child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HomeScreen()
//     );
//   }
// }
