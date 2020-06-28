import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double containerHeight1 = 250;
const double containerHeight2 = 30;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF2DB292),
      body: Center(
        child: Container(
          height: containerHeight1,
          width: MediaQuery.of(context).size.width * 0.90,
          color: Color(0xFFC4C4C4),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: containerHeight2,
                    color: Color(0xFF0B4A84),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Welcome to WhatsApp98',
                          style: GoogleFonts.pressStart2p(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            )
                          )),
                          Container(
                            color: Color(0xFFC4C4C4),
                            width: 20,
                            height: 20,
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text('?'),
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text('User name :', style: TextStyle(fontSize: 18),),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 30,
                      decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
                      child: Flexible(child: TextField())
                  )
                ],),
                  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Phone number :', style: TextStyle(fontSize: 18),),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 30,
                      decoration: BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
                      child: Flexible(child: TextField(keyboardType: TextInputType.number,))
                  )
                ],),
              SizedBox(height: 35,),
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Text('Send OTP'),
                ),
              )
                ],
              ),
        ),
      ),
    );
  }
}

