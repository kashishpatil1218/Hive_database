import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_database/view/home_page.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>HomePage(),
      },
    );
  }
}
