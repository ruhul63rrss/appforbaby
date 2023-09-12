// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_delivery/secondscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: GridView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(
                      valueReceived: index.toString(),
                    ),
                  ),
                );
              },
              child: Card(
                color: Colors.primaries[index % 10],
                child: Center(
                    child: Text(
                  '$index',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 56.0,
                  ).copyWith(
                    color: Colors.white,
                  ),
                )),
              ),
            );
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        )),
      ),
    );
  }
}
