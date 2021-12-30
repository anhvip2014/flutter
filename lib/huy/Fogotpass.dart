import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giaodien/huy/dangky.dart';

class Forgotpass extends StatefulWidget {
  @override
  _Forgotpass createState() => _Forgotpass();
}

Widget buildVerification() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Send Verification'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[400],
      child: Text(
        'Send Verification',
        style: TextStyle(
            color: Colors.grey[100], fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class _Forgotpass extends State<Forgotpass> {
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
                  buildPhoneBtn(),
                  SizedBox(height: 20),
                  buildVerification(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
