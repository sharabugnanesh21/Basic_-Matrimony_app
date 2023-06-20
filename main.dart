import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SampleApp(),
  ));
}

class SampleApp extends StatefulWidget {
  const SampleApp({super.key});

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  int pos = 0;
  String msg = "";
  @override
  Widget build(BuildContext context) {
    List<String> Imgs = [
      "https://images.pexels.com/photos/1391499/pexels-photo-1391499.jpeg?auto=compress&cs=tinysrgb&w=400",
      "https://images.pexels.com/photos/1376040/pexels-photo-1376040.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/1485031/pexels-photo-1485031.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1844012/pexels-photo-1844012.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1253364/pexels-photo-1253364.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/724258/pexels-photo-724258.jpeg?auto=compress&cs=tinysrgb&w=400",
      "https://images.pexels.com/photos/990675/pexels-photo-990675.jpeg?auto=compress&cs=tinysrgb&w=400",
      "https://images.pexels.com/photos/2104252/pexels-photo-2104252.jpeg?auto=compress&cs=tinysrgb&w=400",
      "https://images.pexels.com/photos/807842/pexels-photo-807842.jpeg?auto=compress&cs=tinysrgb&w=400"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matrimony"),
      ),
      body: Column(children: <Widget>[
        Center(
          child: Image.network(
            Imgs[pos],
            width: 200,
            height: 400,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              msg = "You got matched !!!";
            });
          },
          child: const Text(
            'I accept',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (pos == 8) {
                pos = 0;
              } else {
                pos += 1;
              }
            });
          },
          child: const Text(
            'I reject',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Text(
          msg,
          style: TextStyle(
            color: Colors.red,
          ),
        )
      ]),
    );
  }
}

//flutter run -d chrome




