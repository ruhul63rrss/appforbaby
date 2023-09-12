// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery/secondscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Arabic extends StatefulWidget {
  const Arabic({super.key});

  @override
  State<Arabic> createState() => _YourHomePageState();
}

class _YourHomePageState extends State<Arabic> {
  List<String> arabicAlphabet = [
    'ا',
    'ب',
    'ت',
    'ث',
    'ج',
    'ح',
    'خ',
    'د',
    'ذ',
    'ر',
    'ز',
    'س',
    'ش',
    'ص',
    'ض',
    'ط',
    'ظ',
    'ع',
    'غ',
    'ف',
    'ق',
    'ك',
    'ل',
    'م',
    'ن',
    'ه',
    'و',
    'ي',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: GridView.builder(
          itemCount: arabicAlphabet.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(
                      valueReceived: arabicAlphabet[index].toString(),
                    ),
                  ),
                );
              },
              child: Card(
                color: Colors.primaries[index % 10],
                child: Center(
                  child: Text(
                    arabicAlphabet[index],
                    style: GoogleFonts.roboto(
                      // fontWeight: FontWeight.bold,
                      fontSize: 76.0,
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
