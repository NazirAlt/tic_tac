import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac/constants/colors.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  static var customFontWhite = GoogleFonts.coiny(
    textStyle: TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 28,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Text('Score board'),
        ),
        Expanded(
          flex: 3,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 5,
                        color: MainColor.secondaryColor,
                      ),
                      color: MainColor.secondaryColor,
                    ),
                    child: Center(
                      child: Text('0'),
                    ),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
