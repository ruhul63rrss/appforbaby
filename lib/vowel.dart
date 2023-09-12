// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery/secondscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Vowel extends StatefulWidget {
  Vowel({super.key});

  @override
  State<Vowel> createState() => _YourHomePageState();
}

class _YourHomePageState extends State<Vowel> {
  List<String> banglaAlphabet = [
    'অ',
    'আ',
    'ই',
    'ঈ',
    'উ',
    'ঊ',
    'ঋ',
    'এ',
    'ঐ',
    'ও',
    'ঔ'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: GridView.builder(
          itemCount: banglaAlphabet.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(
                      valueReceived: banglaAlphabet[index].toString(),
                    ),
                  ),
                );
              },
              child: Card(
                color: Colors.primaries[index % 10],
                child: Center(
                  child: Text(
                    banglaAlphabet[index],
                    style: GoogleFonts.roboto(
                      //  fontWeight: FontWeight.bold,
                      fontSize: 56.0,
                    ).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
        )),
      ),
    );
  }
}
