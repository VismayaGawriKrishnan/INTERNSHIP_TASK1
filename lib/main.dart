import 'package:flutter/material.dart';
import 'sign_in_screen.dart'; 
import 'home_screen.dart';  
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login to Google with Email and Password',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInScreen(), 
      routes: {
        '/home': (context) => HomeScreen(), 
      },
    );
  }
}
