

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Size getSize(BuildContext context){
  return MediaQuery.of(context).size;
}

TextStyle boldText(BuildContext context){
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: getSize(context).width * 0.05,
  );
}

TextStyle boldText1(BuildContext context){
  return TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: getSize(context).width * 0.05,
  );
}

TextStyle blurText(BuildContext context){
  return TextStyle(
    color: Colors.black.withOpacity(0.5),
  );
}