



import 'package:flutter/material.dart';
//
// class  showModalBottomSheethome extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return showModalBottomSheet(context: context, builder: (context){
//       return Container(child: Text("aaa"),)
//     });
//   }
// }
showModalBottomSheethome (context1){
  var context;
  context =context1;
  return showModalBottomSheet(context: context, builder: (context){
          return Container(
            height: 200,
            child: Column(

              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  alignment: AlignmentDirectional.topCenter,

                  width: double.infinity,
                  child:   const Text("Please Choose Image",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                ),


                    InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.only(bottom: 15),
                        margin: EdgeInsets.only(top: 20,left: 15),
                        alignment: AlignmentDirectional.topStart,

                        child:   Center(child: Row(children: [ const Icon(Icons.image),Container(margin:EdgeInsets.only(left: 10),child: Text("From Gallery",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w300),))],)),
                      ),
                    ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15),
                    margin: EdgeInsets.only(top: 20,left: 15),
                    alignment: AlignmentDirectional.topStart,

                    child:   Center(child: Row(children: [ const Icon(Icons.camera_alt),Container(margin:EdgeInsets.only(left: 10),child: Text("From Camera",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w300),))],)),
                  ),
                ),
              ],
            ),
          );
  });
}