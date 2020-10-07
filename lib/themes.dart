import 'package:flutter/material.dart';

final ThemeData vTheme = ThemeData(
  // primarySwatch: Colors.white,
  brightness: Brightness.light,
  primaryColor: Color(0xffffffff),
  primaryColorBrightness: Brightness.light,
  primaryColorLight: Color(0xffffffff),
  primaryColorDark: Color(0xff4d4d4d),
  accentColor: Color(0xff673ab7),
  accentColorBrightness: Brightness.light,
  canvasColor: Color(0xfffafafa),
  scaffoldBackgroundColor: Color(0xfffafafa),
  bottomAppBarColor: Color(0xffffffff),
  cardColor: Color(0xffffffff),
  dividerColor: Color(0x1f000000),
  highlightColor: Color(0x66bcbcbc),
  splashColor: Color(0xff673ab7),
  selectedRowColor: Color(0xfff5f5f5),
  unselectedWidgetColor: Color(0x8a000000),
  disabledColor: Color(0x61000000),
  buttonColor: Color(0xffffffff),
  toggleableActiveColor: Color(0xff673ab7),
  secondaryHeaderColor: Color(0xfff2f2f2),
  textSelectionColor: Color(0xffcccccc),
  cursorColor: Color(0xff4285f4),
  textSelectionHandleColor: Color(0xffb3b3b3),
  backgroundColor: Color(0xffcccccc),
  dialogBackgroundColor: Color(0xffffffff),
  indicatorColor: Color(0xff808080),
  hintColor: Color(0x8a000000),
  errorColor: Color(0xffd32f2f),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88.0,
    height: 44.0,
    padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffffffff),
    disabledColor: Color(0xffc7c7c7),
    highlightColor: Color(0xff8360cc),
    splashColor: Color(0xff673ab7),
    colorScheme: ColorScheme(
      primary: Color(0xffffffff),
      primaryVariant: Color(0xff4d4d4d),
      secondary: Color(0xff808080),
      secondaryVariant: Color(0xff4d4d4d),
      surface: Color(0xffffffff),
      background: Color(0xffcccccc),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xff000000),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xff000000),
      onError: Color(0xfff44336),
      brightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(
    display4: TextStyle(
      color: Color(0x8a000000),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0x8a000000),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0x8a000000),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0x8a000000),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xdd000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xdd000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0x8a000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xff000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xff000000),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0x8a000000),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0x8a000000),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0x8a000000),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0x8a000000),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xdd000000),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xdd000000),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0x8a000000),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xdd000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xff000000),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xff000000),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  accentTextTheme: TextTheme(
    display4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 96.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display3: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 60.0,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
    ),
    display2: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 48.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    display1: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 34.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    title: TextStyle(
      color: Color(0xffffffff),
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subhead: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body2: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    body1: TextStyle(
      color: Color(0xffffffff),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    subtitle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    overline: TextStyle(
      color: Color(0xffffffff),
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    hasFloatingPlaceholder: true,
    isDense: false,
    contentPadding:
        EdgeInsets.only(top: 24.0, bottom: 16.0, left: 12.0, right: 12.0),
    isCollapsed: false,
    prefixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: true,
    fillColor: Color(0x0a000000),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4.0),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4.0),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4.0),
    disabledBorder: InputBorder.none,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4.0),
    border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff000000),
          width: 1.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        gapPadding: 4.0),
  ),
  iconTheme: IconThemeData(
    color: Color(0xff000000),
    opacity: 1.0,
    size: 24.0,
  ),
  primaryIconTheme: IconThemeData(
    color: Color(0xff000000),
    opacity: 1.0,
    size: 24.0,
  ),
  accentIconTheme: IconThemeData(
    color: Color(0xffffffff),
    opacity: 1.0,
    size: 24.0,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Color(0xff673ab7),
    inactiveTrackColor: Color(0xff999999),
    disabledActiveTrackColor: Color(0x524d4d4d),
    disabledInactiveTrackColor: Color(0x1f4d4d4d),
    activeTickMarkColor: Color(0xff999999),
    inactiveTickMarkColor: Color(0xffffffff),
    disabledActiveTickMarkColor: Color(0x1fe6e6e6),
    disabledInactiveTickMarkColor: Color(0x1f4d4d4d),
    thumbColor: Color(0xff673ab7),
    disabledThumbColor: Color(0xff999999),
    thumbShape: RoundSliderThumbShape(),
    overlayColor: Color(0xff999999),
    valueIndicatorColor: Color(0xff673ab7),
    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
    showValueIndicator: ShowValueIndicator.always,
    valueIndicatorTextStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color(0xff000000),
    unselectedLabelColor: Color(0xb2000000),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color(0xff673ab7),
    brightness: Brightness.light,
    deleteIconColor: Color(0xffffffff),
    disabledColor: Color(0xff999999),
    labelPadding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 8.0, right: 8.0),
    labelStyle: TextStyle(
      color: Color(0xffffffff),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
    secondaryLabelStyle: TextStyle(
      color: Color(0xff9c27b0),
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color(0xff3f51b5),
    selectedColor: Color(0xff9c27b0),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0.0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0.0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
  )),
);
