import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp98/MyHomePage.dart';

class CallLogs extends StatefulWidget {
  @override
  _CallLogsState createState() => _CallLogsState();
}

class _CallLogsState extends State<CallLogs> {

  List<String> names = ['John', 'Patty','Olive Yew',
    'Aida Bugg','Maureen','Teri Dactyl','Peg Legge', 'Allie Grater'];

  List<String> date = ['29/12/2019','20/11/1997','02/08/2019', '08/08/2019','25/08/2019','26/07/2019','12/06/2004',
    '15/05/2019'];

  List<String> types = ['Received', 'Dialed', 'Missed','Received','Received','Dialed', 'Missed','Missed' ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2DB292),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 350,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 30,
                color: Color(0xFF0B4A84),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Call Logs',
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
                        onPressed: () {Navigator.pop(context);},
                        child: Text('x'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 30,
                color: Color(0xFFC4C4C4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('All Calls', style: GoogleFonts.pressStart2p(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        )
                    )),
                    Image.asset('images/image6.png')
                  ],
                ),
              ),
            Container(
             height: 30,
             color: Color(0xFFC4C4C4),
             child: Row(children: <Widget>[
               RepeatedContainer(name: 'NAME',),
               RepeatedContainer(name: "DATE"),
               RepeatedContainer(name: 'TYPE',)
             ],)
        ),
              Expanded(child: ListView.builder(
                 itemCount: names.length,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  itemBuilder: (BuildContext context,int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(names[index])),
                          Expanded(
                              child: Text(date[index])),
                          Expanded(
                            child: Text(types[index]),
                          )
                        ],
                      ),
                    )
                  ;}
              )),
              Container(
                height: 50,
                color: Color(0xFFC4C4C4),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        padding: EdgeInsets.fromLTRB(28, 10, 0, 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                          },
                          child: Row(
                            children: <Widget>[
                              Image.asset("images/image3.png",),
                              SizedBox(width: 5,),
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
                    Expanded(child: Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: FlatButton(onPressed: () {Navigator.pop(context);},
                            child: Text('BACK'))))
                  ],
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}


class RepeatedContainer extends StatelessWidget {

  RepeatedContainer({@required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.90,
          height: 30,
          child: Center(child: Text(name, style: GoogleFonts.pressStart2p(fontSize: 10),)),
          decoration: BoxDecoration(
              color: Color(0xFFC4C4C4),
              border: Border.all(color: Colors.black)),));
  }
}
