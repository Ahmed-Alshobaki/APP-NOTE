



import 'package:flutter/material.dart';

import 'auth/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home:login(),
      routes: {
        "login" :(context) => login()
      },
    )
  );
}

