import 'package:flutter/material.dart';

const Color defaultBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
const Color reverseBackgroundColor = Color.fromRGBO(22, 23, 26, 1);
const Color washBackgroundColor = Color.fromRGBO(250, 250, 250, 1);
const Color divider = Color.fromRGBO(246, 247, 248, 1);
const Color border = Color.fromRGBO(235, 236, 237, 1);

const Color defaultPrimaryColor = Color.fromRGBO(68, 0, 204, 1);
const Color washPrimaryColor = Color.fromRGBO(232, 229, 255, 1);
const Color borderPrimaryColor = Color.fromRGBO(221, 217, 255, 1);
const Color darkPrimaryColor = Color.fromRGBO(42, 0, 128, 1);

const Color defaultTextColor = Color.fromRGBO(36, 41, 46, 1);
const Color secondaryTextColor = Color.fromRGBO(56, 64, 71, 1);
const Color altTextColor = Color.fromRGBO(103, 113, 122, 1);
const Color placeholderTextColor = Color.fromRGBO(124, 136, 148, 1);
const Color reverseTextColor = Color.fromRGBO(255, 255, 255, 1);

const Color primaryRedColor = Color.fromRGBO(211, 47, 47, 1);
const Color washRedColor = Color.fromRGBO(255, 235, 238, 1);
const Color darkRedColor = Color.fromRGBO(183, 28, 28, 1);

const Color primaryOrangeColor = Color.fromRGBO(239, 108, 0, 1);
const Color washOrangeColor = Color.fromRGBO(255, 224, 178, 1);
const Color darkOrangeColor = Color.fromRGBO(239, 108, 0, 1);

const Color primaryYellowColor = Color.fromRGBO(253, 216, 53, 1);
const Color washYellowColor = Color.fromRGBO(255, 249, 196, 1);
const Color darkYellowColor = Color.fromRGBO(249, 168, 37, 1);

const Color primaryGreenColor = Color.fromRGBO(56, 142, 60, 1);
const Color washGreenColor = Color.fromRGBO(200, 230, 201, 1);
const Color darkGreenColor = Color.fromRGBO(46, 125, 50, 1);

const TextStyle defaultTextStyle =
    TextStyle(fontFamily: 'Roboto', fontSize: 14, color: defaultTextColor);

const TextStyle reverseTextStyle =
    TextStyle(fontFamily: 'Roboto', fontSize: 14, color: reverseTextColor);

const TextStyle titleLargeStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24,
    color: defaultTextColor,
    fontWeight: FontWeight.bold);

const TextStyle titleMediumStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: defaultTextColor,
    fontWeight: FontWeight.bold);

const TextStyle linkTextStyle =
    TextStyle(fontFamily: 'Roboto', fontSize: 14, color: defaultPrimaryColor);

BoxShadow lightShadow = BoxShadow(
  color: washPrimaryColor.withOpacity(0.5),
  spreadRadius: 10,
  blurRadius: 2.5,
  offset: Offset(0, 0),
);

// Pixel height for a SizedBox among items in a Column widget
const SizedBox smallSpace = SizedBox(height: 8.0, width: 8.0);
const SizedBox mediumSpace = SizedBox(height: 16.0, width: 16.0);
const SizedBox largeSpace = SizedBox(height: 24.0, width: 24.0);
const SizedBox xlargeSpace = SizedBox(height: 32.0, width: 32.0);
