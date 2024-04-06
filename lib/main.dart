import 'package:api_with_provider/provider/todo_provider.dart';
import 'package:api_with_provider/screens/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: ( context) => ItemProvider(),
      // {
      //   // TodoProvider();
      //   ItemProvider();
      //   },
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Practice(title: "Sliver"),
      // ),
    );
  }
}
