import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  DateTime now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(50, 84, 144, 100),
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(50, 84, 144, 100),
              title: Center(child: Text("Main Menu")),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    })
              ],
            ),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          ExactAssetImage("images/bg_main_conf_current_avail.jpg"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                            'Current Date/Time:  ${now.day}/${now.month}/${now.year}  ${now.hour}:${now.minute}  PST',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15))),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: Container(
                      padding: EdgeInsets.all(7),
                      child: ElevatedButton(
                        child: Text(
                          "Conference Rooms Availability/Reservations",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/conference_page');
                        },
                      ),
                      width: 300,
                      height: 75,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                      padding: EdgeInsets.all(7),
                      child: ElevatedButton(
                        child: Text("Rest Room Availability",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/restroom_page');
                        },
                      ),
                      width: 300,
                      height: 75,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Container(
                      padding: EdgeInsets.all(7),
                      child: ElevatedButton(
                        child: Text("Report an Issue",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/report');
                        },
                      ),
                      width: 300,
                      height: 75,
                    )),
                  ],
                ))));
  }
}
