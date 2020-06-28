import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dialog2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Container(
            color: Color(0xFFC4C4C4),
            width: 400,
            height: 200,
            child: Column(
                children: <Widget>[Container(
                  margin: EdgeInsets.all(5),
                  width: 400,
                  height: 30,
                  color: Color(0xFF0B4A84),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(' Alert',
                          style: GoogleFonts.pressStart2p(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              )
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        color: Color(0xFFC4C4C4),
                        width: 20,
                        height: 20,
                        child: FlatButton(
                          padding: EdgeInsets.only(bottom: 2),
                          onPressed: () {Navigator.pop(context);},
                          child: Text('x'),
                        ),
                      ),
                    ],
                  ),
                ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
                          child: Image.asset('images/msg_warning-0.png')),
                      SizedBox(width: 30,),
                      Container(
                          width: 150,
                          height: 50,
                          child: Text('Enter a valid phone number',
                            style: GoogleFonts.didactGothic(),)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {Navigator.pop(context);},
                      child: Text('OK', style: GoogleFonts.didactGothic(),),
                    ),
                  )
                ]
            )));
  }
}
