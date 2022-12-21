// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {

  TextEditingController eventText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('New Event'),
        backgroundColor: Color.fromARGB(255,75,57,186),
      ),
      body: Container(
        color: Color.fromARGB(255,152,141,220),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(width/10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255,75,57,186),
                    borderRadius:  BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  child: TextField(
                    controller: eventText,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.event, color: Colors.white),
                      labelText: 'Event',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                    ),
                    maxLines: null,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 40.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(eventText.text);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(100, 255, 255, 255)),
                      elevation: MaterialStateProperty.all<double>(0.0),
                    ),
                    child: Text('ADD'),
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}