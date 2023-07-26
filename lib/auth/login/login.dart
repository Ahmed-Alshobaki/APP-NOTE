import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/routes.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Center(
                child: SvgPicture.asset(
                  "assets/a.svg",
                  height: 150,
                  width: 150,
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Enter name",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter passwerd",
                      prefixIcon: Icon(Icons.password),
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "if you havant accout?",
                        style: TextStyle(fontSize: 15.5),
                      ),
                      Text(
                        "  Click Here",
                        style: TextStyle(color: Colors.blue, fontSize: 15.5),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: 120,
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(

                        style:
                            TextButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {

                          Navigator.pushReplacementNamed(context, Routes.home);
                        },
                        child: Text("تسجيل دخول",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))))
              ],
            )),
          )
        ],
      ),
    );
  }
}
