import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class Message {
  Message({
    this.senderName,
    this.senderText,
  });

  String senderName;
  String senderText;
}

class _ChatsState extends State<Chats> {
  String personName = "Jhon";
  TextEditingController textEditingController;
  ScrollController scrollController = ScrollController();

  List<Message> items = [];
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final double width = MediaQuery.of(context).size.width;
    //final double height = MediaQuery.of(context).size.height;
    //final double paddingVertical = MediaQuery.of(context).padding.vertical;

    final mediaQuery = MediaQuery.of(context);

    final PreferredSizeWidget appBar = AppBar(
      backgroundColor: Colors.grey[400],
      leading: Image.asset(
        "images/image11.png",
        width: 20.0,
        height: 20.0,
      ),
      title: Text(
        personName,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              width: 30.0,
              height: 30.0,
              child: RaisedButton(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              width: 30.0,
              height: 30.0,
              child: RaisedButton(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
      elevation: 0.0,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.grey[400],
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 2.0, 0.0),
              color: Colors.grey[400],
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "images/image11.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text(
                    personName,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    width: 170.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        width: 30.0,
                        height: 30.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            FontAwesomeIcons.windowMinimize,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        width: 30.0,
                        height: 30.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            FontAwesomeIcons.windowMaximize,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 2.0,
                        ),
                        width: 30.0,
                        height: 30.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(0),
                          child: Icon(
                            FontAwesomeIcons.windowClose,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(0.0),
              child: Container(
                width: mediaQuery.size.width,
                height: (mediaQuery.size.height -
                    appBar.preferredSize.height -
                    mediaQuery.padding.top),
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 20.0,
                  color: Colors.grey[400],
                  style: BorderStyle.solid,
                )),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Text(
                                items[index].senderName,
                                style: TextStyle(
                                  color: (items[index].senderName == "You")
                                      ? Colors.blue
                                      : Colors.red,
                                  fontSize: 30.0,
                                ),
                              ),
                              title: Text(
                                items[index].senderText,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                ),
                              ),
                            );
                          },
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 20.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: TextFormField(
                                controller: textEditingController,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 70.0,
                            color: Colors.grey[400],
                            padding: EdgeInsets.only(
                              left: 20.0,
                            ),
                            child: RaisedButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                setState(() {
                                  items.add(Message(
                                      senderName: "You",
                                      senderText:
                                          textEditingController.value.text));
                                  if (count == 0) {
                                    sleep(Duration(milliseconds: 400));
                                    items.add(Message(
                                        senderName: "John", senderText: "Hi"));
                                  } else {
                                    sleep(Duration(milliseconds: 400));
                                    items.add(Message(
                                        senderName: "John",
                                        senderText: "Good"));
                                  }
                                  count++;
                                  textEditingController.clear();
                                });
                              },
                              child: Text(
                                "Send",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
