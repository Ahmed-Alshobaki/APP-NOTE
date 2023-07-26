import 'package:flutter/material.dart';
import 'package:untitled1/resources/routes.dart';

class floatingActionButton extends StatelessWidget {
  const floatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(backgroundColor:Colors.white,onPressed: (){
      Navigator.of(context).pushNamed(Routes.addnote);
    },child: Icon(Icons.add),);
  }
}
