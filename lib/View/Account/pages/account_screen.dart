import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Text(
                      'J',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'johndoe@gmail.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Account Section
                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Card(
                      color: Colors.white, // Màu nền sáng
                      child: ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text('johndoe123'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 20),
                    // Support Section
                    const Text(
                      'Support',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card(
                      color: Colors.white, // Màu nền sáng
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Settings'),
                        onTap: () {
                          // Mở Settings
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white, // Màu nền sáng
                      child: ListTile(
                        leading: Icon(Icons.chat),
                        title: Text('Chat Settings'),
                        onTap: () {
                          // Mở Jarvis Playground
                        },
                      ),
                    ),
                    Card(
                      color: Colors.white, // Màu nền sáng
                      child: ListTile(
                        leading: Icon(Icons.sunny),
                        title: Text('Change Theme'),
                        subtitle: Text('Light'),
                        onTap: () {},
                      ),
                    ),
                    Card(
                      color: Colors.white, // Màu nền sáng
                      child: ListTile(
                        leading: Icon(Icons.language_outlined),
                        title: Text('Language'),
                        subtitle: Text('English'),
                        onTap: () {
                          // Mở Jarvis Playground
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      height: 0.5,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 5),
                    // Logout Button at the bottom
                    Card(
                      color: Colors.red[100], // Màu nền nút đăng xuất
                      child: ListTile(
                        leading: Icon(Icons.logout, color: Colors.red),
                        title: Text('Log out'),
                        onTap: () {
                          // Hàm đăng xuất
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
