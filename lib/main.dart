import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UndanganPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UndanganPage extends StatelessWidget {
  const UndanganPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Undangan Pernikahan",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("Asep ❤️ Linda",
                  style: TextStyle(fontSize: 30, color: Colors.brown)),
              const SizedBox(height: 10),
              const Text("16 Agustus 2025 - Bogor"),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse("https://wa.me/6281234567890"));
                },
                child: const Text("Konfirmasi Kehadiran"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
