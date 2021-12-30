import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giaodien/huy/dangky.dart';

class Newpass extends StatefulWidget {
  @override
  _Newpass createState() => _Newpass();
}

Widget buildConfirm() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Confirm'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[400],
      child: Text(
        'Confirm',
        style: TextStyle(
            color: Colors.grey[100], fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildNewPassBtn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey[400],
              ),
              hintText: 'New PassWord',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

class _Newpass extends State<Newpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  buildNewPassBtn(),
                  SizedBox(height: 20),
                  buildConfirm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
