import 'package:flutter/material.dart';
import 'package:ft/common/widgets/MaxSizeButton.dart';

class Password extends StatefulWidget {
  final String email;

  const Password({super.key, required this.email});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Пароль",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
            const SizedBox(height: 48),
            SizedBox(
              width: double.infinity,
              child: Text("Пользователь ${widget.email}"),
            ),
            const SizedBox(height: 12),
            TextField(
                obscureText: true,
                obscuringCharacter: '\$',
                decoration: const InputDecoration(
                    hintText: "Введите пароль", border: OutlineInputBorder()),
                onChanged: (value) {}),
            const SizedBox(height: 24),
            MaxSizeButton(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Вход"), Icon(Icons.arrow_forward)],
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
