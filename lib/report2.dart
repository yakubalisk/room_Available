import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class report2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: "url",home: app2(

    )

    );
  }
}
class app3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Row( children: <Widget>[
      Padding(padding: EdgeInsetsDirectional.fromSTEB(140, 20, 0, 0)),
      Text("Current Date/Time:",style: TextStyle(
          color: Colors.white

      ),),
      SizedBox(width: 6),

      Text(
        DateFormat.yMMMd().format(DateTime.now()),style: TextStyle(
          color: Colors.white
      ),

      ),
      SizedBox(width: 4),
      Text("${now.hour}:${now.minute}",style: TextStyle(
        color: Colors.white,
      ),)]);
  }
}

class app2 extends StatefulWidget {
  @override
  _app2State createState() => _app2State();
}

class _app2State extends State<app2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,

        title: Text("ReportIncident",textAlign:TextAlign.start,
        ),
        backgroundColor: Colors.blueGrey[700],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[

          SizedBox(height: 20
          ),
          app3(),

          SizedBox(height: 50),


          Container(
            child:Center(
              child:
              GestureDetector(
                onTap: (){



                  openurl();
                },
                child: Text('"http:google.com"',style: TextStyle(
                  color: Colors.white,

                ),),
              ),

            ),),
          SizedBox(height: 470),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[

                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child:GestureDetector(
                    onTap: (){




                    },
                    child: Text('Conference Room Availability ',style: TextStyle(
                      color: Colors.white,

                    ),),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child:GestureDetector(
                    onTap: (){




                    },
                    child: Text('Rest Room Availability',style: TextStyle(
                      color: Colors.white,

                    ),),
                  ),
                )]



          ),
        ],

      ),

    );
  }
  openurl()
  {
    String url = "http:google.com";
    launch(url);
  }
}
