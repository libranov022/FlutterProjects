import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Второй экран'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Возврат на предыдущий экран
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: true,
      ),
      body: const Center(
        child: Text(
          'Айша хьо х1у дяш ю!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
