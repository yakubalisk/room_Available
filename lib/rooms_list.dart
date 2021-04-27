import 'package:flutter/material.dart';

class RoomsList extends StatefulWidget {
  @override
  _RoomsListState createState() => _RoomsListState();
}

class _RoomsListState extends State<RoomsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
        title: Text('Rooms'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Flexible(
            flex: 2,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Test Rooms',
                    style: TextStyle(color: Colors.white),),
                  subtitle: Text('info',
                    style: TextStyle(color: Colors.white),),
                );
              },
              itemCount: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, "/addconferenceroom");
              },
                  child: Text('Add Conference rooms')),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/addrestroom');
              },
                  child: Text('Add Rest rooms')),
            ],
          )
        ],
      ),
    );
  }
}
