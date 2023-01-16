

import 'package:coolapp2/home/homescreen.dart';
import 'package:coolapp2/profile/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





void main() {
  runApp( MyApp(),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/home", page: ()=>const Home()),
        
        GetPage(name: "/profile", page: ()=>const ProfleScreen()),

      ],
      initialRoute: "/home",
    );
  }
}
 
 


