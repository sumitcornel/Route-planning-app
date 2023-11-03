import 'dart:html';
import 'dart:js_interop';
import 'package:flutter/services.dart';
import 'package:scuba_diving_app/loginpage.dart';

import '../vehicles/car.dart';
import '1.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  final String value;

  const CalculatePage({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  String value = 'OK';
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  get controller3 => null;

  Widget transformDistance() {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
              labelText: 'Enter distance in km',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  print(controller1);
                },
                icon: Icon(
                  Icons.add,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carAlgorithm() {
    return IconButton(
      icon: Icon(Icons.car_rental),
      iconSize: 40,
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CarPage()));
      },
    );
  }

  Widget bikeAlgorithm() {
    return IconButton(
      icon: Icon(Icons.pedal_bike),
      iconSize: 40,
      onPressed: () {},
    );
  }

  Widget publictransportAlgorithm() {
    return IconButton(
      icon: Icon(Icons.train),
      iconSize: 40,
      onPressed: () {},
    );
  }

  Widget walkAlgorithm() {
    return IconButton(
      icon: Icon(Icons.nordic_walking),
      iconSize: 40,
      onPressed: () {},
    );
  }

  Widget displayResults() {
    var a = controller3;
    return Card(
      child: Column(
        children: [Text(a)],
      ),
    );
  }

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
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                'Total distance is ' + widget.value as String,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              transformDistance(),
              Center(
                child: Column(
                  children: [
                    Text('How are you travelling?'),
                    carAlgorithm(),
                    bikeAlgorithm(),
                    publictransportAlgorithm(),
                    walkAlgorithm(),
                    displayResults(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
