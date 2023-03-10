import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
 var head;
 var description;
 BoxContainer(this.head, this.description);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.lime, borderRadius: BorderRadius.circular(10)),
                child: Text(head, style: TextStyle(fontWeight: FontWeight.bold),),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description, style: TextStyle(fontWeight: FontWeight.bold), ),
            )
          ],),),),
    );

}}
