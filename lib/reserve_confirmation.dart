import 'package:flutter/material.dart';

class ReserveConfirmation extends StatefulWidget {
  @override
  _ReserveConfirmationState createState() => _ReserveConfirmationState();
}

class _ReserveConfirmationState extends State<ReserveConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
        appBar: AppBar(
          title: Text('Reservation Confirmation'),
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
              height: MediaQuery.of(context).size.height,
              // height: 430,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("images/bg_conf_resv_cnf.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Your reservation is confirmed for:',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text('Date:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text('Time:',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        Text('Room',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Sorry the room is booked at that time. Please select another time or another conference room',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed:(){
                },
                    child: Text('Back to Conference Room Availability')),
                ElevatedButton(onPressed:(){
                },
                    child: Text('Report an Incident'))
              ],
            ),
            ElevatedButton(onPressed:(){
            },
                child: Text('Rest Room Availability'))

          ],
        )

    );
  }
}
