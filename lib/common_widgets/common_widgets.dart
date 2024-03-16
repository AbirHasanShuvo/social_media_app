import 'package:flutter/cupertino.dart';

Widget makeText({text, size, fontFamily, fontweight, color}) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: fontFamily,
        fontSize: size,
        fontWeight: fontweight,
        color: color),
  );
}
