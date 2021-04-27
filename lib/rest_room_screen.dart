import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class restRoomPage extends StatefulWidget {
  @override
  _restRoomPageState createState() => _restRoomPageState();
}

var capacity1 = 5;
var occupancy1 = 4;
var Available1 = 'Occupied';

class _restRoomPageState extends State<restRoomPage> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd-MMMM-yyyy,kk:mm:a');
    final String formatted = formatter.format(now);

    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        title: Text('Rest Room Current Availability'),
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("images/bg_rest_current_avail.jpg"),
                  fit: BoxFit.fill),
            ),
            //color: Colors.blueGrey,
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
                                  "1 st Floor Room 105",
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
                      btncardR(),
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
                                  "2 nd Floor Room 205",
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
                      btncardR(),
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
                                  "3 rd Floor Room 305",
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
                      btncardR(),
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
                                Navigator.pushNamed(context,'/conference_page');

                              },
                              child: Text('Conference Room Availibility'))),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context,'/report');
                                  },
                                  child: Text('Report an Incident'))),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class btncardR extends StatefulWidget {
  @override
  _btncardRState createState() => _btncardRState();
}

class _btncardRState extends State<btncardR> {
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
