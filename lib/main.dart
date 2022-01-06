import 'package:flutter/material.dart';
import 'package:giaodien/huy/Newpass.dart';
import 'package:giaodien/huy/dangky.dart';
import 'package:giaodien/huy/dangnhap.dart';
import 'package:giaodien/huy/Fogotpass.dart';
import 'package:giaodien/huy/Newpass.dart';
import 'package:giaodien/huy/shipping.dart';
import 'package:giaodien/huy/user.dart';

import 'huy/confirmation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaa',
      debugShowCheckedModeBanner: false,
      home: Confirmation(),
    );
  }
}
