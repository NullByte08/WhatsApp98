import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp98/sign_in/dialog1.dart';
import 'package:whatsapp98/sign_in/dialog2.dart';

const double containerHeight1 = 250;
const double containerHeight2 = 30;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xFF2DB292),
        body: Center(
          child: Container(
            height: containerHeight1,
            width: MediaQuery.of(context).size.width * 0.90,
            color: Color(0xFFC4C4C4),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.89,
                  height: containerHeight2,
                  color: Color(0xFF0B4A84),
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Welcome to WhatsApp98',
                          style: GoogleFonts.pressStart2p(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: "MSWin"))),
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('User name :',
                          style: GoogleFonts.didactGothic(
                            textStyle: TextStyle(fontSize: 18),
                          )),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.white),
                        child: TextField(
                          controller: _userNameController,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Phone number :',
                        style: GoogleFonts.didactGothic(
                          textStyle: TextStyle(fontSize: 18),
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.white),
                        child: TextField(
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            print(value);
                          },
                        ))
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      _userNameController.text.isNotEmpty &&
                              _phoneNumberController.text.isNotEmpty
                          ? showDialog(
                              context: context,
                              child: Dialog1(
                                  username:
                                      _userNameController.text.toString()))
                          : showDialog(context: context, child: Dialog2());
                    },
                    child: Text(
                      'Send OTP',
                      style: GoogleFonts.didactGothic(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
