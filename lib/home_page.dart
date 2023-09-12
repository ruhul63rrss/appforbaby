import 'package:flutter/material.dart';
import 'package:food_delivery/alphabet.dart';
import 'package:food_delivery/arabic.dart';
import 'package:food_delivery/bangla_number.dart';
import 'package:food_delivery/number.dart';
import 'package:food_delivery/vowel.dart';
import 'package:food_delivery/consonant.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items = ['ا', 'A', 'অ', 'ক', '1', '১'];

  // Define a list of pages corresponding to each item
  final List<Widget> pages = [
    Arabic(),
    Alphabet(),
    Vowel(),
    Consonant(),
    Number(),
    BNumber()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the corresponding page based on the selected item's index
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[index],
                ),
              );
            },
            child: Center(
              child: Card(
                  color: Colors.primaries[index % 5],
                  child: Center(
                    child: Text(
                      items[index],
                      style: GoogleFonts.roboto(
                        //    fontWeight: FontWeight.bold,
                        fontSize: 66.0,
                      ).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
