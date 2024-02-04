import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning_series/number_adding_provider.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberAddingProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
