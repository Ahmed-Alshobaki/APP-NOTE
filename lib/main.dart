
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:untitled1/auth/addnotes/addnote.dart';
import 'package:untitled1/auth/home/home.dart';

import 'package:untitled1/resources/routes.dart';
import 'auth/login/login.dart';
import 'auth/sing/sing.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
      myapp()

  );
}

class  myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.blue.shade200,
        primaryIconTheme: IconThemeData(
            color: Colors.black
        ),
      ),
      home:login(),
      routes: {
        Routes.login :(context) => login(),
        Routes.sing : (context)=> sing(),
        Routes.home : (context)=> home(),
        Routes.addnote : (context)=> addnote(),
      },
    );
  }
}

