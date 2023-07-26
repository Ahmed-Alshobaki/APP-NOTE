
import 'package:flutter/material.dart';
import 'package:untitled1/auth/addnotes/addnote.dart';
import 'package:untitled1/auth/home/home.dart';

import 'package:untitled1/resources/routes.dart';
import 'auth/login/login.dart';
import 'auth/sing/sing.dart';
void main() {
  runApp(
    MaterialApp(
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
    )
  );
}

