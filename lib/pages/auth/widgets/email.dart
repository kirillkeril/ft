import 'package:flutter/material.dart';
import 'package:ft/common/widgets/MaxSizeButton.dart';
import 'package:ft/pages/auth/widgets/password.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Почта",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500)),
            const SizedBox(height: 48),
            TextField(
              decoration: const InputDecoration(
                  hintText: "Введите почту", border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            const SizedBox(height: 24),
            MaxSizeButton(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Далее"), Icon(Icons.arrow_forward)],
                ),
                onPressed: () {
                  if (email != "") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Password(email: email)),
                    );
                  } else {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 150,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 12, left: 32, right: 32, top: 24),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Вы не ввели почту!",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(height: 24),
                                  MaxSizeButton(
                                      child: const Text("Ok!"),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      })
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
