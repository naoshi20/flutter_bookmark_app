import 'package:flutter/material.dart';

void main() {
  runApp(const TaxiApp());
}

class TaxiApp extends StatelessWidget {
  const TaxiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My home page"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(24),
            alignment: Alignment.center,
            constraints: const BoxConstraints.expand(height: 300),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              border: Border.all(width: 4, color: Colors.blue),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              color: Colors.yellow,
              child: const Text(
                "My home page. This widget in inside a Container widget.",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
