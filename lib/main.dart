import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
import 'package:provider_learning_series/number_adding_provider.dart';
=======
>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b

import 'home_screen.dart';

void main() {
<<<<<<< HEAD
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
=======
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
   MyApp({super.key});
>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Service Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}



>>>>>>> 710488c6c235efe837c9b1449773d0b13c83ae1b
