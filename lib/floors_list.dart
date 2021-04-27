import 'package:flutter/material.dart';

class FloorsList extends StatefulWidget {
  @override
  _FloorsListState createState() => _FloorsListState();
}

class _FloorsListState extends State<FloorsList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
        title: Text('Floors'),
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
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/roomslist');

                  },
                  child: ListTile(
                    title: Text('Test Floors',
                      style: TextStyle(color: Colors.white),),
                    subtitle: Text('info',
                      style: TextStyle(color: Colors.white),),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/addfloor');
          },
              child: Text('Add Floors'))
        ],
      ),
    );
  }
}
