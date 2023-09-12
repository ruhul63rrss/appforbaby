// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_delivery/secondscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class BNumber extends StatefulWidget {
  BNumber({super.key});

  @override
  State<BNumber> createState() => _YourHomePageState();
}

class _YourHomePageState extends State<BNumber> {
  List<String> banglaNumbers = [
    '০',
    '১',
    '২',
    '৩',
    '৪',
    '৫',
    '৬',
    '৭',
    '৮',
    '৯',
    '১০',
    '১১',
    '১২',
    '১৩',
    '১৪',
    '১৫',
    '১৬',
    '১৭',
    '১৮',
    '১৯',
    '২০',
    '২১',
    '২২',
    '২৩',
    '২৪',
    '২৫',
    '২৬',
    '২৭',
    '২৮',
    '২৯',
    '৩০',
    '৩১',
    '৩২',
    '৩৩',
    '৩৪',
    '৩৫',
    '৩৬',
    '৩৭',
    '৩৮',
    '৩৯',
    '৪০',
    '৪১',
    '৪২',
    '৪৩',
    '৪৪',
    '৪৫',
    '৪৬',
    '৪৭',
    '৪৮',
    '৪৯',
    '৫০',
    '৫১',
    '৫২',
    '৫৩',
    '৫৪',
    '৫৫',
    '৫৬',
    '৫৭',
    '৫৮',
    '৫৯',
    '৬০',
    '৬১',
    '৬২',
    '৬৩',
    '৬৪',
    '৬৫',
    '৬৬',
    '৬৭',
    '৬৮',
    '৬৯',
    '৭০',
    '৭১',
    '৭২',
    '৭৩',
    '৭৪',
    '৭৫',
    '৭৬',
    '৭৭',
    '৭৮',
    '৭৯',
    '৮০',
    '৮১',
    '৮২',
    '৮৩',
    '৮৪',
    '৮৫',
    '৮৬',
    '৮৭',
    '৮৮',
    '৮৯',
    '৯০',
    '৯১',
    '৯২',
    '৯৩',
    '৯৪',
    '৯৫',
    '৯৬',
    '৯৭',
    '৯৮',
    '৯৯',
    '১০০',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: GridView.builder(
          itemCount: banglaNumbers.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(
                      valueReceived: banglaNumbers[index].toString(),
                    ),
                  ),
                );
              },
              child: Card(
                color: Colors.primaries[index % 10],
                child: Center(
                  child: Text(
                    banglaNumbers[index],
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
