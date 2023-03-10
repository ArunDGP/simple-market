import 'package:flutter/material.dart';
import 'package:simple_app/container.dart';
import 'package:simple_app/downlist.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade50,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: Navigator.of(context).pop,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back,', style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),),
                        Text(
                          'Arun Android',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                      backgroundColor: Colors.lime,
                      radius: 40,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(
                            Icons.search,
                          ),
                        ),
                        Text('Try to find...')
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  'Task-based',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  'explanation process',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BoxContainer('Add task' , 'Creatives for branging'),
                      BoxContainer('Review' , 'Verification process with team'),
                      BoxContainer('Task commands' , 'Verification going on'),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text('Flows list', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],),
                    Text('See all',style: TextStyle(fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              DownList('Document verification', '3 min ago'),
              DownList('Newbie onboarding', '5 days ago'),
              DownList('Team onboarding', '11 days ago'),


            ],
          ),
        ),
      ),
    );
  }
}
