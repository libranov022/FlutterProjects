import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Text(
              'Футбол в твоем смартфоне!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Text(
                'Добро пожаловать!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Забыли пароль?
                  },
                  child: const Text('Забыли пароль?'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Войти
                  },
                  child: const Text('Войти'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              '"InGame" - больше чем просто статистика. Благодаря системе подписок и pushуведомлений вы всегда будете в курсе актуальной для вас информации.',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Регистрация
                  },
                  child: const Text('Регистрация'),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Гостевой режим
                  },
                  child: const Text('Гостевой режим'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}