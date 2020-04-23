import 'package:flutter/material.dart';
import 'package:login_screen_2/login_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Log in Screen",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LogInScreen(),
    )
  );
}