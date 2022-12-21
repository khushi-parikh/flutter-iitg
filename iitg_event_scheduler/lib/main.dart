// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:iitg_event_scheduler/add_event.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List <String> eventList = [
    'Event 1',
    'Event 2 \n LOL',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Scheduler'),
        backgroundColor: Color.fromARGB(255,75,57,186),
      ),
      
      body: Container(
        color: Color.fromARGB(255,152,141,220),
        padding: EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: eventList.length,
          itemBuilder: ((context, index) => 
            // Text('${eventList[index]}')
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '${eventList[index]}', 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0
                    ),
                  ),
                ),
              ),
            )
          ),
        ),
      ),

      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              String result = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddEvent()));
              setState(() => eventList.add(result));
              // print(result);
            },
            backgroundColor: Color.fromARGB(255,75,57,186),
            child: Icon(Icons.add),
          );
        }
      ),
    );
  }
}