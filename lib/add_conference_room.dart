import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'add_rest_room.dart';

class AddConference extends StatefulWidget {

  @override
  _AddConferenceState createState() => _AddConferenceState();
}

class _AddConferenceState extends State<AddConference> {
  @override

  String valueChoose;
  String valueChoose1;
  List DeviceIdMain = ['DeviceID 1' , 'DeviceID 2', 'DeviceID 3'];
  List DeviceIdback = ['DeviceID 1' , 'DeviceID 2', 'DeviceID 3'];


  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
        title: Text("Add Conference Room"),
      ),
      body: Container(
          height :MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(16.0),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text('Add Conference Room',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,),),
              Divider(
                thickness: 2,
                color: Colors.grey[500],
              ),

              SizedBox(height: 40.0),

              // Room Name Input
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(30.0))
                  // ),
                  hintText: 'Room Name',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    )
                ),
              ),

              SizedBox(height: 30.0),

              //DeviceID | Main

              Container(
                padding: EdgeInsets.only(left:16,right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey,width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: DropdownButton(
                  hint: Text('Device ID | Main',
                    style: TextStyle(color: Colors.black),),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  // style: TextStyle(
                  //
                  // ),
                  value: valueChoose,
                  onChanged: (newValue) {
                    setState(() {
                      valueChoose=newValue;
                      print(valueChoose);
                    });
                  },
                  items: DeviceIdMain.map((valueItem){
                    return DropdownMenuItem(
                      value:valueItem,
                      child: Text(valueItem),);
                  }
                  ).toList(),
                ),
              ),

              SizedBox(height: 30.0),
              //DeviceID | Back

              Container(
                padding: EdgeInsets.only(left:16,right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey,width: 1),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: DropdownButton(
                  hint: Text('Device ID | Back',
                    style: TextStyle(color: Colors.black),),
                  dropdownColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: SizedBox(),
                  // style: TextStyle(
                  //
                  // ),
                  value: valueChoose1,
                  onChanged: (newValue1) {
                    setState(() {
                      valueChoose1=newValue1;
                      print(valueChoose1);
                    });
                  },
                  items: DeviceIdback.map((valueItem1){
                    return DropdownMenuItem(
                      value:valueItem1,
                      child: Text(valueItem1),);
                  }
                  ).toList(),
                ),
              ),

              SizedBox(height: 30.0),
              //Max Count

              TextField(
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(30.0))
                  hintText: 'Max Count',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth:MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: ElevatedButton(onPressed:() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddRestRoom()),
                      );
                    },

                      child: Text('Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:16,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
