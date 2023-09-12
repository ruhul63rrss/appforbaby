// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 //import 'package:flutter_tts/flutter_tts.dart';

class Screen2 extends StatelessWidget {
  final String valueReceived;

  const Screen2({required this.valueReceived});
  // FlutterTts flutterTts = FlutterTts();
  // Future<void> speakText(String text) async {
  //   await flutterTts.setLanguage(
  //       "en-US"); // Set the language (you can change it to the desired language)
  //   await flutterTts.setPitch(1.0); // Set the pitch (1.0 is the default)
  //   await flutterTts
  //       .setSpeechRate(1.0); // Set the speech rate (1.0 is the default)
  //   await flutterTts.speak(valueReceived);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen 2',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ).copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          shadowColor: Colors.black,
          child: Text(
            ' $valueReceived',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 96.0,
            ).copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
