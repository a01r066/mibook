import 'package:flutter/material.dart';
import 'package:mibook/config/flavour_config.dart';

Future initializeApp() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final whereAmI = Constants.whereAmI;
    return Scaffold(
      appBar: AppBar(
        title: const Text("MiBook"),
      ),
        body: Text(whereAmI));
  }
}

