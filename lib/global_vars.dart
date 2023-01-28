import 'package:flutter/material.dart';

movePage(page, context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}
