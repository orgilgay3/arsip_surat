import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f6ed),
      appBar: AppBar(
        title: const Text("Arsip Surat"),
        backgroundColor: const Color(0xfff7f6ed),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: search,
              decoration: const InputDecoration(
                hintText: "Cari surat, nomor, atau perihal",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Semua"), Text("Masuk"), Text("Keluar"), Text("Undangan"),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("TOTAL\n128"), Text("MASUK\n84"), Text("KELUAR\n44"),
              ],
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Surat terbaru",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            const Card(
              child: ListTile(
                title: Text("Undangan Rapat Guru"),
                subtitle: Text("Masuk · 001/2026 · 2 hari lalu"),
                trailing: Text("Baru"),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Surat Izin Siswa"),
                subtitle: Text("Masuk · 002/2026 · 3 hari lalu"),
                trailing: Text("Baru"),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Undangan Orang Tua"),
                subtitle: Text("Masuk · 003/2026 · 4 hari lalu"),
                trailing: Text("Proses"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
       BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined), label: "Arsip"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add), label: "Tambah"),
          BottomNavigationBarItem(
            icon: Icon(Icons.history), label: "Riwayat"),
        ],
      ),
    );
  }
}
