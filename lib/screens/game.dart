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
    tetStyle: TextStyle(
      color: Colors.white,
      letterSpacing: 3,
      fontSize: 28,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'player 0',
                        style: customFontWhite,
                      ),
                      Text(
                        '0 score ',
                        style: customFontWhite,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
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
                        child: Text(
                          '0',
                          style: GoogleFonts.coiny(
                              textStyle: TextStyle(
                                  fontSize: 64, color: MainColor.primaryColor)),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
