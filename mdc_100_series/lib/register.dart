import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _retypePasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('SHRINE'), 
        leading: Image.asset('assets/diamond.png'), 
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 16.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/diamond.png'),
                  const SizedBox(height: 16.0),
                  Text(
                    'Registrasi',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Lorem Ipsum dolar sit amet, consectetur adipiscing elit',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Masukan Nama User',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      filled: false,
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    'Masukan Password',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: false,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    'Masukan Kembali Password',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8.0),
                  TextField(
                    controller: _retypePasswordController,
                    decoration: InputDecoration(
                      filled: false,
                      labelText: 'Retype Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(width: 1.0, color: Colors.blue),
                      ),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Hapus'),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      _retypePasswordController.clear();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Daftar'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');// TODO: Implementasi logika pendaftaran di sini
                    },
                  ),
                ],
              ),
              const SizedBox(height: 190.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Sudah punya akun? ',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                  
                  child: Text(
                    'Sign in',
                    style: TextStyle(fontSize: 14.0, color: Colors.blue),
                  ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
