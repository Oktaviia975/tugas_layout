import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Pengguna',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Arial',
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Form Pengguna'),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
            elevation: 8,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Silakan isi data Anda di bawah ini:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // aksi tombol
                    },
                    icon: Icon(Icons.send),
                    label: Text('Kirim'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      minimumSize: Size(double.infinity, 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
