import 'package:flutter/material.dart';

const int TD_D_LightBlue = 0xFF6753ff;
const int TD_D_Blue = 0xFF3425a5;
const int TD_D_DarkBlue = 0xFF0E1128;
const int TD_D_DarkYellow = 0xFFe3961b;
const int TD_D_Yellow = 0xFFFFC940;
const int TD_D_Grey = 0xFF949BA3;

ThemeData theme() => ThemeData(
      /*
       *  LIGHT BLUE
       */
      cardTheme: CardTheme(
        color: Color(TD_D_LightBlue),
      ),
      /*
       *  DARK BLUE
       */
      primaryColor: Color(TD_D_DarkBlue),
      canvasColor: Color(TD_D_DarkBlue),
      /*
       *  YELLOW
       */
      textSelectionColor: Color(TD_D_Yellow),
      /*
       *  DARK YELLOW
       */
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(TD_D_DarkYellow),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white,
      ),
      primarySwatch: Colors.indigo,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      /*
       *  WHITE
       */
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color(TD_D_Grey),
          ),
          hintStyle: TextStyle(
            color: Colors.white24,
          )),
    );

/*
 *  Light blue: #6753ff
 *  Blue:       #3425a5
 *  Dark blue:  #0e1128
 *  Yellow:     #e3961b
 *  Yellow:     #ffc940
 *  Grey:       #949ba3
 */
