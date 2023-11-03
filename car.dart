import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scuba_diving_app/signuppage.dart';

import '../google_maps_final/calculatepage.dart';

class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff5ac18e),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Input consumtion',
                ),
                onSubmitted: (String value) {
                  setState(() {
                    text = controller3.text;
                  });
                },
              ),
              TextField(
                controller: controller4,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Input Gas/Energy price',
                ),
              ),
              TextField(
                controller: controller5,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Input consumtion',
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      // ignore: prefer_const_constructors
                      context,
                      MaterialPageRoute(
                          builder: (context) => CalculatePage(
                                value: '',
                              )));
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
