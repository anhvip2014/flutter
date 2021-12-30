import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giaodien/huy/dangnhap.dart';

class DangKy extends StatefulWidget {
  @override
  _DangKyState createState() => _DangKyState();
}

Widget buildEmailBtn() {
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
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey[400],
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildPhoneBtn() {
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
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.grey[400],
              ),
              hintText: 'Phone Number',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildSignInBBtn() {
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account?',
          style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: 'Sign In',
          style: TextStyle(
              color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  );
}

class _DangKyState extends State<DangKy> {
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
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  buildEmailBtn(),
                  SizedBox(height: 20),
                  buildPassWordBtn(),
                  SizedBox(height: 20),
                  buildPhoneBtn(),
                  SizedBox(height: 20),
                  buildSingInBtn(),
                  SizedBox(height: 20),
                  buildSignInBBtn()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
