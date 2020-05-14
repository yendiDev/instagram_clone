import 'package:flutter/material.dart';
import 'package:instagramclone/screens/home_screen.dart';
import 'package:instagramclone/screens/login_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Instagramy',
  routes: {
    '/' : (context) => LoginScreen(),
    '/home' : (context) => Home()
  },
  theme: ThemeData(
    primaryColor: Colors.red,
    primaryColorDark: Colors.redAccent,
    appBarTheme: AppBarTheme(

    )
  ),
));