import 'package:flutter/material.dart';
import 'package:giaodien/Newpass.dart';
import 'package:giaodien/dangky.dart';
import 'package:giaodien/dangnhap.dart';
import 'package:giaodien/Fogotpass.dart';
import 'package:giaodien/Newpass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaa',
      debugShowCheckedModeBanner: false,
      home: Newpass(),
    );
  }
}
