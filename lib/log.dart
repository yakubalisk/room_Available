import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _user = TextEditingController();
  var _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromRGBO(50, 84, 144, 100),
            body: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery. of(context). size. width,
                height: MediaQuery. of(context). size. height,
                decoration: BoxDecoration(
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60),
                      // SizedBox(
                      //     child: Image.asset('assets/images/imge.png'),
                      //     height: 80),
                      SizedBox(height: 40),
                      Center(
                          child: Text(
                            "Smart Professional Organizational Building",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 70),
                      Center(
                          child: Text("Log In with your registered credentials",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17))),
                      SizedBox(height: 15),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(50, 84, 144, 0),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: TextField(
                                        controller: _user,
                                        decoration: InputDecoration(
                                          hintText: "Enter your Id",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none,
                                        ))),
                              ),
                              SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: TextField(
                                      controller: _password,
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none,
                                        ))),
                              ),
                              SizedBox(height: 15),
                              Container(
                                child: ElevatedButton(
                                  child: Text("Sign in Now"),
                                  onPressed: () {
                                    _user.text = _user.text.trim();
                                    _password.text = _password.text.trim();
                                    if(_user.text == 'user' && _password.text == 'user')
                                    {
                                      Navigator.pushReplacementNamed(context, '/menu');
                                    }
                                    else if(_user.text == 'admin' && _password.text == 'admin')
                                    {
                                      Navigator.pushReplacementNamed(context, '/buildinglist');
                                    }
                                  },
                                ),
                                width: 400,
                              ),
                            ],
                          )),
                    ],
                  ),
                )
            )
        )
    );
  }
}
