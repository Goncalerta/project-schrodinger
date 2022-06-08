import 'package:flutter/material.dart';

const Color _darkRed = Color.fromARGB(255, 0x75, 0x17, 0x1e);
const Color _lightRed = Color.fromARGB(255, 190, 40, 40);
const Color _mildWhite = Color.fromARGB(255, 0xfa, 0xfa, 0xfa);
const Color _lightGrey = Color.fromARGB(255, 215, 215, 215);
const Color _grey = Color.fromARGB(255, 0x7f, 0x7f, 0x7f);
const Color _strongGrey = Color.fromARGB(255, 90, 90, 90);
const Color _mildBlack = Color.fromARGB(255, 0x30, 0x30, 0x30);

ColorScheme _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: _darkRed,
  secondary: Colors.white,
  surface: Colors.white,
  background: _mildWhite,
  error: _lightRed,
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onSurface: _grey,
  onBackground: _grey,
  onError: _grey,
);

ThemeData applicationLightTheme = ThemeData(
    brightness: _colorScheme.brightness,
    primaryColor: _colorScheme.primary,
    dividerColor: _lightGrey,
    hintColor: _lightGrey,
    backgroundColor: _colorScheme.background,
    scaffoldBackgroundColor: _colorScheme.background,
    colorScheme: _colorScheme,
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: 72.0, fontWeight: FontWeight.bold, color: _darkRed),
      headline2: TextStyle(
          fontSize: 17.0, color: _mildBlack, fontWeight: FontWeight.w300),
      headline3: TextStyle(
          fontSize: 17.0, color: _lightRed, fontWeight: FontWeight.w300),
      headline4: TextStyle(
          fontSize: 17.0, color: _mildBlack, fontWeight: FontWeight.w300),
      headline5: TextStyle(
          fontSize: 17.0, color: _mildBlack, fontWeight: FontWeight.w400),
      headline6: TextStyle(
          fontSize: 17.0, color: _mildBlack, fontWeight: FontWeight.w300),
      subtitle1:
          TextStyle(fontSize: 17.0, color: _grey, fontWeight: FontWeight.w300),
      subtitle2:
          TextStyle(fontSize: 16.0, color: _grey, fontWeight: FontWeight.w300),
      bodyText1: TextStyle(fontSize: 16.0, color: _mildBlack),
      bodyText2: TextStyle(fontSize: 15.0, color: _mildBlack),
      caption:
          TextStyle(fontSize: 12.0, color: _grey, fontWeight: FontWeight.w500),
    ),
    iconTheme: IconThemeData(color: _strongGrey),
    unselectedWidgetColor: _grey,
    toggleableActiveColor: _darkRed,
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: _strongGrey,
      labelColor: _strongGrey,
      labelPadding: EdgeInsets.all(0.0),
    ),
    canvasColor: _mildWhite,
    cardColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: _darkRed,
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0)),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: _darkRed,
            textStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400))),
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.white),
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return _darkRed; // the color when checkbox is selected;
            }
            return _grey; //the color when checkbox is unselected;
          },
        )));
