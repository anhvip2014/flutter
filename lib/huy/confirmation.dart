import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Confirmation extends StatefulWidget {
  @override
  _Confirmation createState() => _Confirmation();
}

Widget buildAddressConfirmationBtn() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Address:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]);
}

Widget buildCustomerBtn() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Customer name:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]);
}

Widget buildShippingmethodBtn() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Shipping method:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]);
}

Widget buildShippingfeesBtn() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Shipping fees:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]);
}

Widget buildCompeletBtn() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Complete'),
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey[400],
      child: Text(
        'Complete',
        style: TextStyle(
            color: Colors.grey[100], fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget buildSaveBBtn() {
  return GestureDetector(
    child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(
        'total:',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]),
  );
}

class _Confirmation extends State<Confirmation> {
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
                  Icon(
                    Icons.more_horiz,
                    size: 50,
                  ),
                  const Text(
                    'Confirmation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  buildAddressConfirmationBtn(),
                  const SizedBox(height: 20),
                  buildCustomerBtn(),
                  const SizedBox(height: 20),
                  buildShippingmethodBtn(),
                  const SizedBox(height: 20),
                  buildShippingfeesBtn(),
                  const SizedBox(height: 20),
                  buildSaveBBtn(),
                  const SizedBox(height: 20),
                  buildCompeletBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
