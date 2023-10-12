import 'package:flutter/material.dart';
import 'package:ft/common/widgets/MaxSizeButton.dart';
import 'package:ft/pages/auth/widgets/email.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const Text(
                      "Добро пожаловать!",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 48),
                    MaxSizeButton(
                        child: const Text("Войти"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Email(),
                              ));
                        }),
                    const SizedBox(height: 24),
                    MaxSizeButton(
                        child: const Text("Регистрация"), onPressed: () {})
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 64, child: Image.asset("assets/img/logo.png")),
                  const Column(
                    children: [
                      Text("Лучшая доставка овощей"),
                      Text("(Вас тоже доставит)"),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
