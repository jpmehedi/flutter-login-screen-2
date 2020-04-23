import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple[300],
                                  blurRadius: 15,
                                  offset: Offset(0, 3),
                                )
                              ],
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[300]))),
                                  child: TextFieldBuilder("E-mail or Phone"),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: TextFieldBuilder("Password"),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ButtonBuilder(
                                text: "Login",
                                horizontal: 50,
                                color: Colors.orange[600],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                child: Text(
                                  "Continue With Social Media",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ButtonBuilder(
                                    text: "Facebook",
                                    horizontal: 10,
                                    color: Colors.blue[600],
                                  ),
                                  ButtonBuilder(
                                    text: "Github",
                                    horizontal: 25,
                                    color: Colors.black,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class ButtonBuilder extends StatelessWidget {
  ButtonBuilder(
      {@required this.text, @required this.horizontal, @required this.color});
  final String text;
  final double horizontal;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: horizontal),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}

class TextFieldBuilder extends StatelessWidget {
  TextFieldBuilder(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
