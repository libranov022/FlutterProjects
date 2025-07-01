import 'package:flutter/material.dart';

class CustomAppPage extends StatelessWidget {
  const CustomAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Создаем полностью новый MaterialApp для этого экрана
    return MaterialApp(
      title: 'Кастомное приложение',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Кастомный экран'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Этот экран имеет совершенно другие свойства MaterialApp',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // Закрываем этот экран
                  Navigator.pop(context);
                },
                child: const Text('Вернуться назад'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}