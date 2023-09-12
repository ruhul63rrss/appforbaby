import 'package:flutter/material.dart';
import 'package:food_delivery/secondscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Alphabet extends StatefulWidget {
  const Alphabet({super.key});

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  List<String> englishUppercaseAlphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  List<String> englishLowercaseAlphabet = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: GridView.builder(
          itemCount: englishLowercaseAlphabet.length,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      englishUppercaseAlphabet[index],
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 56.0,
                      ).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      englishLowercaseAlphabet[index],
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0,
                      ).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
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
