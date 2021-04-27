import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class AddFloor extends StatefulWidget {
  @override
  _AddFloorState createState() => _AddFloorState();
}

class _AddFloorState extends State<AddFloor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      appBar: AppBar(
        title: Text("Add Floor"),
        backgroundColor: Color.fromRGBO(50, 84, 144, 100),
      ),
      body: Container(
        height :MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(16.0),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text('Add Floor',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,),),
              Divider(
                thickness: 2,
                color: Colors.grey[500],
              ),

              SizedBox(height: 40.0),

              // Room Name Input
              TextField(
                cursorColor: Colors.grey,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(30.0))
                  // ),
                    hintText: 'Floor Number',
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

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                    minWidth:MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: ElevatedButton(onPressed:() {},

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
