import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void flushBarGlobal(BuildContext context, String? mensaje, Icon? icon,
    {Widget? trailing, int? seconds, LinearGradient? gradient}) {
  Flushbar(
    backgroundGradient: gradient,
    backgroundColor: Colors.grey.shade900,
    mainButton: trailing,
    duration: Duration(seconds: seconds ?? 2),
    margin: const EdgeInsets.only(bottom: 45, left: 15, right: 15),
    icon: icon,
    messageColor: Colors.white,
    messageText: Text(
      mensaje!,
      style: TextStyle(color: Colors.white, fontSize: 17),
    ),
    flushbarPosition: FlushbarPosition.BOTTOM,
    borderRadius: BorderRadius.circular(100),
  ).show(context);
}
