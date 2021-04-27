import 'package:flutter/material.dart';

class BuildingsList extends StatefulWidget {
  @override
  _BuildingsListState createState() => _BuildingsListState();
}

class _BuildingsListState extends State<BuildingsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
        title: Text('Buildings'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.logout),
              onPressed:(){
                Navigator.pushReplacementNamed(context, '/');

              })
        ],
      ),
      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: ListView.builder(
              //shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/floorslist');
                  },
                  child: ListTile(
                    title: Text('Test Buildings',
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
              Navigator.pushNamed(context, '/addbuilding');
            },
                child: Text('Add Building'))
        ],
      ),
    );
  }
}
