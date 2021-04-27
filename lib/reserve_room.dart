import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReserveRoom extends StatefulWidget {
  @override
  _ReserveRoomState createState() => _ReserveRoomState();
}

class _ReserveRoomState extends State<ReserveRoom> {
  DateTime _dateTime;
  String date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        title: Text('Reserve a Conference Room'),
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      ),
        body:Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Current Date/Time:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),),
            ),
            Container(
              width: MediaQuery. of(context). size. width,
              height: 430,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/bg_conf_resv_cnf.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(

                  children: [
                    Text('1st Floor Rm. 101',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),),

                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                          child:Text( _dateTime==null?'Pick Date':_dateTime.toString().substring(0,10),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          ),),
                        onPressed:(){
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2025),
                          ).then((value) {
                            setState(() {
                              _dateTime = value;
                              
                            });
                          });
                        },),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(onPressed:(){
                    Navigator.pushNamed(context, '/conference_page');

                  },
                      child: Text('Back to Conference Room Availability')),
                ),
                Expanded(
                  child: ElevatedButton(onPressed:(){
                    Navigator.pushNamed(context, '/report');
                  },
                      child: Text('Report an Incident')),
                )
              ],
            ),
            ElevatedButton(onPressed:(){
              Navigator.pushNamed(context, '/restroom_page');
            },
                child: Text('Rest Room Availability'))

          ],
        )

    );
  }
}
