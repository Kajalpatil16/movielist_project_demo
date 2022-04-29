import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Home_Page.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCRomxE4Uv_Tj7LeHUelTnCROTMthY9VP8",
          appId: "1:178912765259:web:d63715724e60884ac734ce",
          messagingSenderId: "178912765259",
          projectId: "myapp-1d679") );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
