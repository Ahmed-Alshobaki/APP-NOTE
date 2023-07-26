

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

List nots = [
  {
    "nots1": "adadopasmdopasmd11opasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdopasmd22opasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdopa44smdopasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdop66asmdopasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdop77asmdopasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdopas88mdopasdas",
    "image1": "assets/img.png",
  },
  {
    "nots1": "adadopasmdopasm99dopasdas",
    "image1": "assets/img.pn9g",
  },
  {
    "nots1": "adadopasmdopasmd00opasdas",
    "image1": "assets/img.png",
  },
];

class notslist extends StatefulWidget {
  @override
  State<notslist> createState() => _notslistState();
}

class _notslistState extends State<notslist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: ListView.builder(
            itemCount: nots.length,
            itemBuilder: (context, i) {

              // return Slidable(
              //   child: card(i),
              //   endActionPane: ActionPane(
              //     motion: BehindMotion(),
              //     children: [
              //       SlidableAction(
              //           backgroundColor: Colors.red,
              //           icon: Icons.delete,
              //           label: "delete",
              //           onPressed: (context) =>onDismis(i))
              //     ],
              //   ),
              // );
              return Dismissible(
                 background: Container(
                   color: Colors.red,
                   padding: EdgeInsets.only(left: 20.0),
                   child: Row(

                     children: <Widget>[
                       Center(child:
                       Icon(
                         Icons.delete,
                       ),)
                     ],
                   ),
                 ),
                  key: ( ValueKey<int>(i)), child: card(i));
            }),
      ),
    );
  }

 void onDismis(index) {
    final nots1 = nots[index];
    setState(()=>nots.removeAt(index));
 }
}
enum Actions{delete}

class card extends StatelessWidget {
  late final int i;

  card(int a) : this.i = a;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(40), // Image radius
                    child: Image.asset('assets/img.png', fit: BoxFit.cover),
                  ),
                )),
            Expanded(
              flex: 3,
              child: ListTile(
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
                title: Text("title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                subtitle: Text(nots[i]["nots1"],style: TextStyle(fontSize: 18),),
              ),
            ),
          ],
        ));
  }
}
