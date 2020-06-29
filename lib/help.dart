import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        content: Container(
            color: Color(0xFFC4C4C4),
            width: 500,
            padding: EdgeInsets.all(5),
            height: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Container(
                  width: 400,
                  height: 30,
                  color: Color(0xFF0B4A84),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(' Help',
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
                        child: RaisedButton(
                          padding: EdgeInsets.only(bottom: 2),
                          onPressed: () {Navigator.pop(context);},
                          child: Text('x'),
                        ),
                      ),
                    ],
                  ),
                ),
                   SizedBox(height: 10,),
                   Center(child:  Image.asset(
                       'images/help_question_mark-0.png'
                   ),),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Text('FAQ', style: GoogleFonts.pressStart2p(),),
                   ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Contact us', style: GoogleFonts.pressStart2p(),),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('App info', style: GoogleFonts.pressStart2p(),),
                  ),
                  SizedBox(height: 30,),
                  Center(child: RaisedButton(
                    color: Color(0xFFC4C4C4),
                    elevation: 10,
                    child: Text('Back', style: GoogleFonts.pressStart2p(),),
                    onPressed: () {Navigator.pop(context);},
                  ),)

                ]
            )
        )
    );
  }
}
