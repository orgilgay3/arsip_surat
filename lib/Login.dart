import 'package:arsip_surat/myhomepage.dart';
import 'package:flutter/material.dart';
import 'package:arsip_surat/Login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    if (username.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username dan password wajib diisi")),
      );
    } else if (username.text == "admin" && password.text == "12345") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau password salah")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xfff7f6ed),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("ARSIPKU",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            const Text("Masuk ArsipKu",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("Kelola arsip surat, pencarian cepat, dan laporan."),
            const SizedBox(height: 30),
            const Text("No. Anggota / Email"),
            TextFormField(
              controller: username,
              decoration: const InputDecoration(
                hintText: "2024-001 / siswa@sekolah.id",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text("Kata sandi"),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "••••••••",
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: login,
                child: const Text("Masuk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
