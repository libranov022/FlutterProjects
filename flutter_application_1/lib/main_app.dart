import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog Fix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), // Добавляем тему (обязательно!)
      home: const HomePage(), // Выносим Scaffold в отдельный виджет
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (contex) => Dialog(
                child: SizedBox(
                  height: 400,
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Text('Dialog Title'),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(contex),
                        child: LinearProgressIndicator(value: 47),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
