import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giaodien/huy/Newpass.dart';
import 'package:giaodien/huy/dangky.dart';

class TaiKhoan extends StatefulWidget {
  @override
  _TaiKhoan createState() => _TaiKhoan();
}

Widget buildFristNameBtn() {
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
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(
                Icons.create,
                color: Colors.grey[400],
              ),
              hintText: 'First name',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildLastNameBtn() {
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
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(
                Icons.create,
                color: Colors.grey[400],
              ),
              hintText: 'Last name',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildPasswordBtn() {
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
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(
                Icons.create,
                color: Colors.grey[400],
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildAddressBtn() {
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
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              suffixIcon: Icon(
                Icons.create,
                color: Colors.grey[400],
              ),
              hintText: 'Address',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildSaveBBtn() {
  return GestureDetector(
    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      TextButton(
        onPressed: () => print("Sign Up Pressed"),
        child: Text(
          "Save",
        ),
      )
    ]),
  );
}

class _TaiKhoan extends State<TaiKhoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: const [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 125,
                      ),
                      Positioned(
                        child: Icon(Icons.create),
                        right: 0,
                        bottom: 0,
                      )
                    ],
                  ),
                  const Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  buildFristNameBtn(),
                  const SizedBox(height: 20),
                  buildLastNameBtn(),
                  const SizedBox(height: 20),
                  buildPasswordBtn(),
                  const SizedBox(height: 20),
                  buildAddressBtn(),
                  buildSaveBBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
