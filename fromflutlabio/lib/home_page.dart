import 'package:flutter/material.dart';
import 'custom_app_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            // Переход на экран с другим MaterialApp
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CustomAppPage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Открыть экран с другим MaterialApp'),
        ),
      ),
    );
  }
}