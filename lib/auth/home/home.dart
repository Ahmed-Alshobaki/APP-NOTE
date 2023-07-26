import 'package:flutter/material.dart';
import 'package:untitled1/auth/home/widgets/floatingActionButton.dart';
import 'package:untitled1/auth/home/widgets/nots.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home",style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,),
      body: notslist(),
      floatingActionButton: floatingActionButton(),
    );
  }
}
