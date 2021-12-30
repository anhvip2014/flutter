import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dangnhap extends StatefulWidget {
  @override
  _DangnhapState createState() => _DangnhapState();
}

Widget buildSingInBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Sign In'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[400],
      child: Text(
        'Sign In',
        style: TextStyle(
            color: Colors.grey[100], fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.center,
    child: FlatButton(
      onPressed: () => print("Forgot Password pressed"),
      padding: EdgeInsets.only(right: 0),
      child: Text(
        'Forgot your password',
        style: TextStyle(
            color: Colors.grey[400], fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildSignUpBtn() {
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Dont have an account?',
          style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: 'Sign Up',
          style: TextStyle(
              color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ]),
    ),
  );
}

Widget buildUserName() {
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
              hintText: 'UserName',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildPassWordBtn() {
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
              hintText: 'PassWord',
              hintStyle: TextStyle(
                color: Colors.grey[400],
              )),
        ),
      )
    ],
  );
}

Widget buildGmail() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Login With Google'),
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Colors.grey[400],
          ),
          Text(
            'Login With Google',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget buildFacebook() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Login With Facebook'),
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.phone_android_outlined,
            color: Colors.grey[400],
          ),
          Text(
            'Login With Facebook',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

class _DangnhapState extends State<Dangnhap> {
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
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  buildGmail(),
                  buildFacebook(),
                  SizedBox(height: 30),
                  Text('Or',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 30),
                  buildUserName(),
                  SizedBox(height: 20),
                  buildPassWordBtn(),
                  buildSingInBtn(),
                  buildForgotPassBtn(),
                  buildSignUpBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
