import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Input Exercise'),
        // backgroundColor:Colors,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  // hintText: "enter the id",
                  labelText: "Card Number",
                  labelStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                    // borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    // borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.number,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          // hintText: "enter the id",
                          labelText: "MM/YY",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          // hintText: "enter the id",
                          labelText: "Security Code",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          // hintText: "enter the id",
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 180,
                      child: TextField(
                        decoration: InputDecoration(
                          // hintText: "enter the id",
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                            // borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Color(0xff61b15a),
                child: RaisedButton(
                    color: Color(0xff61b15a),
                    child: Text(
                      'SUBMIT PAYMENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text("Payment Successful"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Text("okay"),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
