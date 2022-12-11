import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mibook/config/flavour_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mibook/generated/l10n.dart';

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
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
        title: Text(AppLocalizations.of(context)?.helloWorld ?? "Hello"),
      ),
        body: Text(whereAmI));
  }
}

