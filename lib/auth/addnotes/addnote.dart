import 'package:flutter/material.dart';
import 'package:untitled1/auth/addnotes/widgets/showModalBottomSheet.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dropdown_search/dropdown_search.dart';
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
        showModalBottomSheethome(context);

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

          Container(
                height: 50,
                width: 100,
                margin: EdgeInsets.only(top:20 ),
                child: TextButton(
                  onPressed: () {
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.leftSlide,
                        title: 'Dialog Title',
                        desc: 'Dialog description here.............',
                        btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                    )..show();
                  },
                  child: const Text(
                    "Add note",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                )),

                  DropdownSearch<String>(
                    popupProps: PopupProps.modalBottomSheet(
                      showSelectedItems: true,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Menu mode",
                        hintText: "country in menu mode",
                      ),
                    ),
                    onChanged: print,
                    selectedItem: "Brazil",
                  ),


          ],),
      ),
    );
  }
}

