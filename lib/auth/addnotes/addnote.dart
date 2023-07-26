import 'package:flutter/material.dart';

class addnote extends StatefulWidget {
  const addnote({super.key});

  @override
  State<addnote> createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.image),),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("Add note",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,

      ),
      body: Form(
        child: Column(children: [
         Container(
           margin: EdgeInsets.only(top: 7,left: 5,right: 5),
           child: TextFormField(

              maxLength: 20,

             decoration:const InputDecoration(
                 counterText: "",

               filled: true,
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.black
                 )
               ),
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                         color: Colors.black45
                     )
                 ),
               focusColor: Colors.black,
               fillColor: Colors.white,
               prefixIcon: Icon(Icons.note),
               labelText: "add title note",
               labelStyle: TextStyle(color: Colors.black),
               prefixIconColor: Colors.black


             ),
           ),
         ),
          Container(


            margin: EdgeInsets.only(top: 7,left: 5,right: 5),
            child: TextFormField(
              maxLength: 300,

              maxLines: 5,
              minLines: 1,



              decoration:const InputDecoration(



                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black45
                      )
                  ),
                  focusColor: Colors.black,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.note),
                  labelText: "note",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIconColor: Colors.black


              ),
            ),
          ),
          Container(height:50,width:100,child: TextButton(onPressed: (){}, child: const Text("Add note",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),style: TextButton.styleFrom(backgroundColor: Colors.black),))
        ],),
      ),
    );
  }
}
