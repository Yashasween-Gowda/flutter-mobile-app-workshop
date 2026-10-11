import 'package:flutter/material.dart';
import 'screens/helloworld.dart';
import 'screens/snackbar.dart';
import 'screens/textfield.dart';
import 'screens/form_controls.dart';
import 'screens/drawer.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, // later comment this line to see the debug banner
      title: 'Flutter Workshop',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const DrawerPage(),
      ); //MaterialApp
  } 
}