import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp98/CameraWidget.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {

  final Color color1 = Color(0xFFE5E5E5);
  final Color color2 = Color(0xFFE3E6FE);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset(
              "images/image1.png",
              //height: height - 90.0,
              width: mediaQuery.size.width,
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0.0,
              width: mediaQuery.size.width,
              child: Container(
                padding: EdgeInsets.all(15.0),
                color: color1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                      shape: Border(
                        top: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      elevation: 5.0,
                      onPressed:(){
                      } ,
                      child: Row(
                        children: <Widget>[
                          Image.asset("images/image3.png",),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "Start",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    RaisedButton(
                      shape: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      elevation: 5.0,
                      onPressed:(){
                        Navigator.pop(context);
                      } ,
                      child: Row(
                        children: <Widget>[
                          Image.asset("images/image3.png",),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              "BACK",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100.0,
              left: 15.0,
              child: CameraWidget(),
            ),
          ],
        ),
    );
  }
}
