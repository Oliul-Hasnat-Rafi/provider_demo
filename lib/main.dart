import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/Home.dart';
import 'package:provider_demo/_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create:  (context) => Updatecount(),)
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
