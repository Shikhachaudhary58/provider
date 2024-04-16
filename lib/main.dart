import 'package:flutter/material.dart';
import 'package:flutter_project1/provider/sub_provider.dart';
import 'package:provider/provider.dart';
import 'first_screen.dart';
import 'second_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SubjectProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => FirstScreen(),
          '/second': (context) => SecondScreen(),
        },
      ),
    );
  }
}
