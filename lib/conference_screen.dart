import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class conferencePage extends StatefulWidget {
  @override
  _conferencePageState createState() => _conferencePageState();
}

var capacity1 = 5;
var occupancy1 = 4;
var Available1 = 'Occupied';

class _conferencePageState extends State<conferencePage> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MMMM-yyyy,kk:mm:a');
    final String formatted = formatter.format(now);

    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        title: Text('Conference Room Curent Availability'),
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/bg_main_conf_current_avail.jpg"),
                  fit: BoxFit.cover),
            ),
            //color: Color.fromRGBO(50, 84, 144, 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child:
                          Center(child: Text('Current Date/Time: $formatted ')),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "1 st Floor Rm 101",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              elevation: 5,
                            ),
                          ),
                        ),
                      ),
                      btncardC(),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "2 nd Floor Rm 201",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              elevation: 5,
                            ),
                          ),
                        ),
                      ),
                      btncardC(),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "3 rd Floor Rm 301",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              elevation: 5,
                            ),
                          ),
                        ),
                      ),
                      btncardC(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/reserve_room');
                              },
                              child: Text('Reserve a Conference Room'))),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/report');
                              },
                              child: Text('Report an Incident'))),
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/restroom_page');
                          },
                          child: Text('Rest Room Availability'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class btncardC extends StatefulWidget {
  @override
  _btncardCState createState() => _btncardCState();
}

class _btncardCState extends State<btncardC> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                '$Available1\n \n Maximum Room \n \n Capacity: $capacity1 \n \n Current Occupancy: $occupancy1',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
