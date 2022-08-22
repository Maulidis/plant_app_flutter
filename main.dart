
import 'package:flutter/material.dart';
import 'package:plant_app_freebies/constants.dart';
import 'package:plant_app_freebies/screens/home/home_screen.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
    
    primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,

     ),
      home: homescreen(),
    );
  }
}
