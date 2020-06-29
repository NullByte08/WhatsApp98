import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp98/account.dart';

import 'help.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2DB292),
        body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 365,
                color: Color(0xFFC4C4C4),
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 30,
                    color: Color(0xFF0B4A84),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Settings',
                            style: GoogleFonts.pressStart2p(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ))),
                        Container(
                          color: Color(0xFFC4C4C4),
                          width: 20,
                          height: 20,
                          child: RaisedButton(
                            elevation: 10,
                            padding: EdgeInsets.only(bottom: 1),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('x'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "images/image7.png",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/key_win_alt-1.png'),
                      GestureDetector(
                          onTap: () {
                            showDialog(context: context, child: Account());
                          },
                          child: Text(
                            'Account',
                            style: GoogleFonts.pressStart2p(),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/envelope_closed-0.png'),
                      GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Message',
                            style: GoogleFonts.pressStart2p(),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/loudspeaker_rays-0.png'),
                      GestureDetector(
                          onTap: () {
                            //showDialog(context: context, child: Notify());
                          },
                          child: Text(
                            'Notify ',
                            style: GoogleFonts.pressStart2p(),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset('images/help_question_mark-0.png'),
                      GestureDetector(
                          onTap: () {
                            showDialog(context: context, child: Help());
                          },
                          child: Text(
                            'Help   ',
                            style: GoogleFonts.pressStart2p(),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    color: Color(0xFFC4C4C4),
                    /*child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            padding: EdgeInsets.fromLTRB(28, 10, 0, 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              },
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "images/image3.png",
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Start",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('BACK'))))
                      ],
                    ),*/
                  )
                ]))));
  }
}
