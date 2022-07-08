// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:bawchat/screens/welcome_screen.dart';
import 'package:bawchat/screens/login_screen.dart';
import 'package:bawchat/screens/registration_screen.dart';
import 'package:bawchat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(BawChat());
  await Firebase.initializeApp();
}

class BawChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
