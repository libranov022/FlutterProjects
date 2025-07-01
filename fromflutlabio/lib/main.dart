import 'package:flutter/material.dart';
import 'package:fromflutlabio/ScreenCollection/fist_screen.dart';
import 'package:fromflutlabio/ScreenCollection/second_screen.dart';
import 'package:fromflutlabio/home_page.dart';

void main() => runApp(NewMyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      // home: InputText(),
      // home: AppBarExample(),
      //home: WorkwithTabs(),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}

// New MyApp()

class NewMyApp extends StatelessWidget {
  const NewMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Основное приложение',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
