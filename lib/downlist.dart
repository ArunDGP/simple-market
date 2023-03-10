import 'package:flutter/material.dart';

class DownList extends StatelessWidget {

  String listName;
  String time;
  DownList(this.listName, this.time);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(listName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    SizedBox(height: 10,),
                    Text(time, style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),)
                  ],),
                Container(height: 30, width: 30, child: Icon(Icons.add), decoration: BoxDecoration(color: Colors.lime,
                    shape: BoxShape.circle),),
              ],),
            SizedBox(height: 10,),
            Divider(color: Colors.grey, height: 8,)
          ],
        ),
      ),
    );
  }
}
