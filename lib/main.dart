import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:votersapp/Home.dart';
import 'package:votersapp/Login.dart';
import 'package:votersapp/Signup.dart';







Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options:
    FirebaseOptions(apiKey:  "AIzaSyDpfHyOWgtZMwwttjlVQwE-KjJeJVc4DRI",
        appId: "1:519670605889:web:7562eb7ec3a3df60ddfec0", messagingSenderId: "519670605889",
        projectId: "e-voters-69d7d"));
  }
  await Firebase.initializeApp(); runApp(ProviderScope(child: MyApp()));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        '/': (context) =>Home()

      },



    );

  }

}

